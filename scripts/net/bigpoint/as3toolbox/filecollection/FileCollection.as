package net.bigpoint.as3toolbox.filecollection
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.ImageFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.JSONFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.StringFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.XMLFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.as3toolbox.filecollection.vo.LoadVO;
   import net.bigpoint.as3toolbox.filecollection.vo.LocationVO;
   import spark.effects.Rotate3D;
   import spark.filters.GlowFilter;
   
   public final class FileCollection extends EventDispatcher
   {
      
      private static const logger:ILogger = Log.getLogger("FileCollection");
      
      public static var logging:Boolean = false;
       
      
      private var xmlLoader:URLLoader;
      
      private var xml:XML;
      
      private var paramKeyList:Object;
      
      private var locationList:Object;
      
      private var fileList:Object;
      
      private var queueSize:int;
      
      private var finisherClassList:Object;
      
      private var finisherList:Object;
      
      private var fileLoaderList:Object;
      
      private var m_sBasePath:String;
      
      public var maxTries:int = 5;
      
      private var _numOfFiles:int;
      
      private var _numOfFilesLoaded:int;
      
      private var _filePrefix:String = "";
      
      public var loadLinear:Boolean = false;
      
      private var _linearLoadList:Array;
      
      private var _currentLinearLoad:LoadVO;
      
      private var useHash:Boolean = false;
      
      public function FileCollection(param1:String = "", param2:Boolean = false)
      {
         this._linearLoadList = new Array();
         super();
         this.useHash = param2;
         this.m_sBasePath = param1;
         this.paramKeyList = new Object();
         this.locationList = new Object();
         this.fileList = new Object();
         this.fileLoaderList = new Object();
         this.finisherList = new Object();
         this.finisherClassList = new Object();
         this.queueSize = 0;
         this._numOfFilesLoaded = 0;
         this._numOfFiles = 0;
         this.addDefaultFinisherClasses();
         logger.debug("init FileCollection");
      }
      
      private final function addDefaultFinisherClasses() : void
      {
         this.addFinisherClass("swf",SWFFinisher);
         this.addFinisherClass("xml",XMLFinisher);
         this.addFinisherClass("png",ImageFinisher);
         this.addFinisherClass("jpg",ImageFinisher);
         this.addFinisherClass("js",JSONFinisher);
         this.addFinisherClass("txt",StringFinisher);
      }
      
      public final function addFinisherClass(param1:String, param2:Class) : void
      {
         this.finisherClassList[param1] = param2;
      }
      
      public final function loadResourceFile(param1:String) : void
      {
         this.xmlLoader = new URLLoader();
         this.xmlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.handleIOError);
         this.xmlLoader.addEventListener(Event.COMPLETE,this.handleXMLLoad);
         this.xmlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.handleXMLSecurityError);
         this.xmlLoader.dataFormat = URLLoaderDataFormat.BINARY;
         this.xmlLoader.load(new URLRequest(this.m_sBasePath + param1));
      }
      
      private final function handleXMLLoad(param1:Event) : void
      {
         var xmlParsedEvent:FileCollectionEvent = null;
         var event:Event = param1;
         try
         {
            xmlParsedEvent = new FileCollectionEvent(FileCollectionEvent.RESOURCE_XML_PARSED);
            this.xml = new XML(this.preParseXML(event.target.data));
            xmlParsedEvent.xml = this.xml;
            dispatchEvent(xmlParsedEvent);
            this.extractLocationsFromXML();
            this.extractFilesFromXML();
            this.xml = undefined;
         }
         catch(e:TypeError)
         {
            e.message;
            dispatchEvent(new FileCollectionEvent(FileCollectionEvent.RESOURCE_FILE_FORMAT_ERROR));
            return;
         }
         dispatchEvent(new FileCollectionEvent(FileCollectionEvent.RESOURCE_FILE_LOADED));
      }
      
      private final function extractLocationsFromXML() : void
      {
         var _loc1_:XML = null;
         for each(_loc1_ in this.xml.location)
         {
            this.locationList[_loc1_.@id] = new LocationVO(_loc1_.@id,this._filePrefix + _loc1_.@path);
            if(logging)
            {
               "FileCollection.extractLocationsFromXML() -> add location node: " + _loc1_.@id;
            }
         }
      }
      
      private final function extractFilesFromXML() : void
      {
         var _loc1_:FileVO = null;
         var _loc2_:XML = null;
         for each(_loc2_ in this.xml.file)
         {
            this._numOfFiles++;
            _loc1_ = new FileVO(_loc2_.@id,this.locationList[_loc2_.@location],_loc2_.@name,_loc2_.@type,_loc2_.@version,_loc2_);
            _loc1_.hash = _loc2_.@hash;
            this.fileList[_loc2_.@id] = _loc1_;
            if(logging)
            {
               "FileCollection.extractFilesFromXML() -> add file node: " + _loc2_.@id;
            }
         }
      }
      
      private final function preParseXML(param1:String) : String
      {
         var _loc3_:* = null;
         var _loc4_:RegExp = null;
         var _loc2_:String = param1;
         for(_loc3_ in this.paramKeyList)
         {
            if(logging)
            {
               "FileCollection.preParseXML() -> replace %" + _loc3_ + "% with \'" + this.paramKeyList[_loc3_] + "\'";
            }
            _loc4_ = new RegExp("%" + _loc3_ + "%","sg");
            _loc2_ = _loc2_.replace(_loc4_,this.paramKeyList[_loc3_]);
         }
         return _loc2_;
      }
      
      private final function handleIOError(param1:IOErrorEvent) : void
      {
         dispatchEvent(new FileCollectionEvent(FileCollectionEvent.RESOURCE_FILE_NOT_FOUND));
         throw new Error("resource file not found!");
      }
      
      private final function handleXMLSecurityError(param1:SecurityErrorEvent) : void
      {
         dispatchEvent(new FileCollectionEvent(FileCollectionEvent.RESOURCE_FILE_SECURITY_BREACH));
         throw new Error("resource file security breach!");
      }
      
      public final function clearCollection() : void
      {
         if(!logging)
         {
         }
         this.fileList = new Object();
         this.locationList = new Object();
         this.paramKeyList = new Object();
         this.queueSize = 0;
         this.xml = undefined;
      }
      
      public final function load(param1:String = null, param2:Function = null, param3:Function = null) : void
      {
         var fileNode:FileVO = null;
         var fileLoader:FileCollectionLoader = null;
         var linearLoad:LoadVO = null;
         var key:String = param1;
         var callbackComplete:Function = param2;
         var callbackError:Function = param3;
         try
         {
            if(this.loadLinear)
            {
               if(key != null)
               {
                  linearLoad = new LoadVO();
                  linearLoad.key = key;
                  linearLoad.callbackComplete = callbackComplete;
                  linearLoad.callbackError = callbackError;
                  this._linearLoadList.push(linearLoad);
               }
               if(this._currentLinearLoad != null)
               {
                  return;
               }
               if(this._linearLoadList.length < 1)
               {
                  return;
               }
               this._currentLinearLoad = this._linearLoadList.shift();
               if(this._currentLinearLoad == null)
               {
                  return;
               }
               key = this._currentLinearLoad.key;
               callbackComplete = this._currentLinearLoad.callbackComplete;
               callbackError = this._currentLinearLoad.callbackError;
            }
            if(key == null)
            {
               return;
            }
            fileNode = this.fileList[key];
            if(fileNode == null)
            {
               if(logging)
               {
                  "FileCollection.load() -> no file-node found with key \'" + key + "\'";
               }
               if(callbackError != null)
               {
                  callbackError(key);
               }
               return;
            }
            if(this.finisherList[key] != null && FileCollectionFinisher(this.finisherList[key]).isFinished == true)
            {
               if(logging)
               {
                  "FileCollection.load() -> already loaded \'" + key + "\'";
               }
               if(callbackComplete != null)
               {
                  callbackComplete(this.finisherList[key]);
               }
               return;
            }
            if(callbackComplete != null)
            {
               fileNode.callbackComplete.push(callbackComplete);
            }
            if(callbackError != null)
            {
               fileNode.callbackError.push(callbackError);
            }
            if(this.fileLoaderList[key] != null)
            {
               FileCollectionLoader(this.fileLoaderList[key]).loadFile(this.m_sBasePath);
               return;
            }
            if(logging)
            {
               "FileCollection.load() -> \'" + key + "\'";
            }
            fileLoader = new FileCollectionLoader(fileNode,this.useHash);
            fileLoader.addEventListener(Event.COMPLETE,this.handleFileLoad);
            fileLoader.addEventListener(IOErrorEvent.IO_ERROR,this.handleFileLoadError);
            fileLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityErrorHandler);
            fileLoader.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.httpStatusHandler);
            fileLoader.dataFormat = URLLoaderDataFormat.BINARY;
            this.fileLoaderList[key] = fileLoader;
            fileLoader.loadFile(this.m_sBasePath);
            this.queueSize++;
            return;
         }
         catch(e:Error)
         {
            logger.error("ERROR LOAD - " + key);
            return;
         }
      }
      
      public final function hasLoader(param1:String) : Boolean
      {
         return this.fileLoaderList.hasOwnProperty(param1);
      }
      
      public final function isInLinearLoadList(param1:String) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = this._linearLoadList.length;
         var _loc4_:Boolean = false;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            if(this._linearLoadList[_loc2_].key == param1)
            {
               _loc4_ = true;
               break;
            }
            _loc2_++;
         }
         return _loc4_;
      }
      
      private final function httpStatusHandler(param1:HTTPStatusEvent) : void
      {
      }
      
      private final function securityErrorHandler(param1:SecurityErrorEvent) : void
      {
      }
      
      private final function handleFileLoad(param1:Event) : void
      {
         var _loc3_:FileCollectionFinisher = null;
         if(logging)
         {
            "FileCollection.handleFileLoad() -> target: " + param1.target;
         }
         var _loc2_:FileVO = FileCollectionLoader(param1.target).getFileVO();
         _loc2_.data = FileCollectionLoader(param1.target).data;
         _loc3_ = new this.finisherClassList[_loc2_.type]();
         _loc3_.addEventListener(FileCollectionEvent.RESOURCE_CLEARED,this.handleResourceCleared);
         this.addFinisher(_loc2_.id,_loc3_);
         _loc3_.addEventListener(FileCollectionFinishEvent.FILE_FINISH,this.handleFileFinish);
         _loc3_.start(_loc2_);
      }
      
      private final function handleResourceCleared(param1:FileCollectionEvent) : void
      {
         var _loc2_:FileCollectionFinisher = param1.currentTarget as FileCollectionFinisher;
         _loc2_.removeEventListener(FileCollectionFinishEvent.FILE_FINISH,this.handleFileFinish);
         delete this.fileLoaderList[param1.text];
         delete this.finisherList[param1.text];
      }
      
      private final function handleFileFinish(param1:FileCollectionFinishEvent) : void
      {
         var event:FileCollectionFinishEvent = param1;
         var fileVO:FileVO = event.finisher.fileVO;
         fileVO.loaded = true;
         event.finisher.isFinished = true;
         this._numOfFilesLoaded++;
         dispatchEvent(new FileCollectionFileLoadEvent(FileCollectionFileLoadEvent.FILE_LOADED,fileVO));
         if(fileVO.callbackComplete != null)
         {
            fileVO.callbackComplete.forEach(function(param1:Function, param2:int, param3:Vector.<Function>):void
            {
               param1(event.finisher);
            });
         }
         this._currentLinearLoad = null;
         if(--this.queueSize <= 0)
         {
            if(this._linearLoadList.length == 0)
            {
               dispatchEvent(new FileCollectionEvent(FileCollectionEvent.ALL_FILES_LOADED));
            }
            else
            {
               this.load();
            }
         }
      }
      
      private final function addFinisher(param1:String, param2:FileCollectionFinisher) : void
      {
         this.finisherList[param1] = param2;
      }
      
      private final function handleFileLoadError(param1:IOErrorEvent) : void
      {
         var xF:FileVO = null;
         var event:IOErrorEvent = param1;
         if(logging)
         {
            "FileCollection.handleFileLoadError() -> target: " + event.target;
         }
         dispatchEvent(new FileCollectionFileLoadEvent(FileCollectionFileLoadEvent.FILE_LOAD_ERROR,FileCollectionLoader(event.target).getFileVO()));
         xF = FileCollectionLoader(event.target).getFileVO();
         if(this.maxTries > 0 && xF.numTries >= this.maxTries)
         {
            xF.callbackError.forEach(function(param1:Function, param2:int, param3:Vector.<Function>):void
            {
               param1(xF.id);
            });
            return;
         }
         var reloadTimer:Timer = new Timer(5000,1);
         reloadTimer.addEventListener(TimerEvent.TIMER_COMPLETE,function(param1:Event):void
         {
            load(xF.id);
         });
         reloadTimer.start();
      }
      
      public final function loadAll() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.fileList)
         {
            this.load(FileVO(this.fileList[_loc1_]).id);
         }
      }
      
      public final function setParam(param1:String, param2:String) : void
      {
         if(logging)
         {
            "FileCollection.setParam() -> key: " + param1 + " value:" + param2;
         }
         this.paramKeyList[param1] = param2;
      }
      
      public final function isLoaded(param1:String) : Boolean
      {
         var result:Boolean = false;
         var id:String = param1;
         try
         {
            result = FileCollectionFinisher(this.finisherList[id]).isFinished;
         }
         catch(e:Error)
         {
            return false;
         }
         return result;
      }
      
      public final function getFinisher(param1:String) : FileCollectionFinisher
      {
         return this.finisherList[param1];
      }
      
      public function get numOfFiles() : int
      {
         return this._numOfFiles;
      }
      
      public function get numOfFilesLoaded() : int
      {
         return this._numOfFilesLoaded;
      }
      
      public function get filePrefix() : String
      {
         return this._filePrefix;
      }
      
      public function set filePrefix(param1:String) : void
      {
         this._filePrefix = param1;
      }
      
      public function get byteLoaded() : int
      {
         var _loc2_:FileCollectionLoader = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.fileLoaderList)
         {
            _loc1_ = _loc1_ + _loc2_.bytesLoaded;
         }
         return _loc1_;
      }
      
      public function get listOfFiles() : Object
      {
         return this.fileList;
      }
   }
}
