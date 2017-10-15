package com.greensock.loading
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BadgeLootIcon;
   import com.bigpoint.seafight.view.popups.common.LootIcon;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.target;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuSearchTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuSearchTabController;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.IDataInput;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.class_759;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_143.class_542;
   import package_143.class_933;
   import package_15.class_273;
   import package_165.class_953;
   import package_17.class_54;
   import package_190.class_1168;
   import package_20.class_33;
   import package_214.class_1604;
   import package_216.class_1575;
   import package_26.class_960;
   import package_32.class_64;
   import package_36.class_100;
   import package_4.class_11;
   import package_41.class_93;
   import package_42.class_98;
   import package_42.class_99;
   import package_46.class_1455;
   import package_48.class_999;
   import package_49.class_140;
   import package_5.class_214;
   import package_5.class_984;
   import package_51.class_1355;
   import package_51.class_148;
   import package_54.class_1006;
   import package_6.class_14;
   import package_72.class_203;
   import package_89.class_1378;
   import package_89.class_1379;
   import package_9.class_17;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.Scroller;
   import spark.components.TitleWindow;
   import spark.effects.animation.SimpleMotionPath;
   
   use namespace mx_internal;
   
   public final class XMLLoader extends DataLoader
   {
      
      private static var _classActivated:Boolean = _activateClass("XMLLoader",XMLLoader,"xml,php,jsp,asp,cfm,cfml,aspx");
      
      protected static var _varTypes:Object = {
         "skipFailed":true,
         "skipPaused":true,
         "autoLoad":false,
         "paused":false,
         "load":false,
         "noCache":false,
         "maxConnections":2,
         "autoPlay":false,
         "autoDispose":false,
         "smoothing":false,
         "autoDetachNetStream":false,
         "estimatedBytes":1,
         "x":1,
         "y":1,
         "z":1,
         "rotationX":1,
         "rotationY":1,
         "rotationZ":1,
         "width":1,
         "height":1,
         "scaleX":1,
         "scaleY":1,
         "rotation":1,
         "alpha":1,
         "visible":true,
         "bgColor":0,
         "bgAlpha":0,
         "deblocking":1,
         "repeat":1,
         "checkPolicyFile":false,
         "centerRegistration":false,
         "bufferTime":5,
         "volume":1,
         "bufferMode":false,
         "estimatedDuration":200,
         "crop":false,
         "autoAdjustBuffer":true,
         "suppressInitReparentEvents":true
      };
      
      public static var RAW_LOAD:String = "rawLoad";
       
      
      protected var _loadingQueue:LoaderMax;
      
      protected var _parsed:LoaderMax;
      
      protected var _initted:Boolean;
      
      public function XMLLoader(param1:*, param2:Object = null)
      {
         super(param1,param2);
         _preferEstimatedBytesInAudit = true;
         _type = "XMLLoader";
         _loader.dataFormat = "text";
      }
      
      protected static function _parseVars(param1:XML) : Object
      {
         var _loc3_:String = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc8_:XML = null;
         var _loc2_:Object = {"rawXML":param1};
         var _loc7_:XMLList = param1.attributes();
         for each(_loc8_ in _loc7_)
         {
            _loc3_ = _loc8_.name();
            _loc5_ = _loc8_.toString();
            if(_loc3_ != "url")
            {
               if(_loc3_ == "context")
               {
                  _loc2_.context = new LoaderContext(true,_loc5_ == "own"?ApplicationDomain.currentDomain:_loc5_ == "separate"?new ApplicationDomain():new ApplicationDomain(ApplicationDomain.currentDomain),!_isLocal?SecurityDomain.currentDomain:null);
               }
               else
               {
                  _loc4_ = typeof _varTypes[_loc3_];
                  if(_loc4_ == "boolean")
                  {
                     _loc2_[_loc3_] = Boolean(_loc5_ == "true" || _loc5_ == "1");
                  }
                  else if(_loc4_ == "number")
                  {
                     _loc2_[_loc3_] = Number(_loc5_);
                  }
                  else
                  {
                     _loc2_[_loc3_] = _loc5_;
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public static function parseLoaders(param1:XML, param2:LoaderMax, param3:LoaderMax = null) : void
      {
         var _loc4_:XML = null;
         var _loc6_:LoaderMax = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc9_:Class = null;
         var _loc10_:Object = null;
         var _loc11_:LoaderCore = null;
         var _loc12_:* = null;
         var _loc5_:String = String(param1.name()).toLowerCase();
         if(_loc5_ == "loadermax")
         {
            _loc6_ = param2.append(new LoaderMax(_parseVars(param1))) as LoaderMax;
            if(param3 != null && _loc6_.vars.load)
            {
               param3.append(_loc6_);
            }
            if(_loc6_.vars.childrenVars != null && _loc6_.vars.childrenVars.indexOf(":") != -1)
            {
               _loc6_.vars.childrenVars = _parseVars(new XML("<childrenVars " + _loc6_.vars.childrenVars.split(",").join("\" ").split(":").join("=\"") + "\" />"));
            }
            for each(_loc4_ in param1.children())
            {
               parseLoaders(_loc4_,_loc6_,param3);
            }
            if("replaceURLText" in _loc6_.vars)
            {
               _loc7_ = _loc6_.vars.replaceURLText.split(",");
               _loc8_ = 0;
               while(_loc8_ < _loc7_.length)
               {
                  _loc6_.replaceURLText(_loc7_[_loc8_],_loc7_[_loc8_ + 1],false);
                  _loc8_ = _loc8_ + 2;
               }
            }
            if("prependURLs" in _loc6_.vars)
            {
               _loc6_.prependURLs(_loc6_.vars.prependURLs,false);
            }
         }
         else
         {
            if(_loc5_ in _types)
            {
               _loc9_ = _types[_loc5_];
               _loc10_ = _parseVars(param1);
               if(typeof param2.vars.childrenVars == "object")
               {
                  for(_loc12_ in param2.vars.childrenVars)
                  {
                     if(!(_loc12_ in _loc10_))
                     {
                        _loc10_[_loc12_] = param2.vars.childrenVars[_loc12_];
                     }
                  }
               }
               _loc11_ = param2.append(new _loc9_(param1.@url,_loc10_));
               if(param3 != null && _loc11_.vars.load)
               {
                  param3.append(_loc11_);
               }
            }
            for each(_loc4_ in param1.children())
            {
               parseLoaders(_loc4_,param2,param3);
            }
         }
      }
      
      override protected function _load() : void
      {
         if(!this._initted)
         {
            _prepRequest();
            _loader.load(_request);
         }
         else if(this._loadingQueue != null)
         {
            this._changeQueueListeners(true);
            this._loadingQueue.load(false);
         }
      }
      
      protected final function _changeQueueListeners(param1:Boolean) : void
      {
         var _loc2_:* = null;
         if(this._loadingQueue != null)
         {
            if(param1 && this.vars.integrateProgress != false)
            {
               for(_loc2_ in _listenerTypes)
               {
                  if(_loc2_ != "onProgress" && _loc2_ != "onInit")
                  {
                     this._loadingQueue.addEventListener(_listenerTypes[_loc2_],this._passThroughEvent,false,-100,true);
                  }
               }
               this._loadingQueue.addEventListener(LoaderEvent.COMPLETE,this._completeHandler,false,-100,true);
               this._loadingQueue.addEventListener(LoaderEvent.PROGRESS,this._progressHandler,false,-100,true);
               this._loadingQueue.addEventListener(LoaderEvent.FAIL,this._failHandler,false,-100,true);
            }
            else
            {
               this._loadingQueue.removeEventListener(LoaderEvent.COMPLETE,this._completeHandler);
               this._loadingQueue.removeEventListener(LoaderEvent.PROGRESS,this._progressHandler);
               this._loadingQueue.removeEventListener(LoaderEvent.FAIL,this._failHandler);
               for(_loc2_ in _listenerTypes)
               {
                  if(_loc2_ != "onProgress" && _loc2_ != "onInit")
                  {
                     this._loadingQueue.removeEventListener(_listenerTypes[_loc2_],this._passThroughEvent);
                  }
               }
            }
         }
      }
      
      override protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         if(this._loadingQueue != null)
         {
            this._changeQueueListeners(false);
            if(param1 == 0)
            {
               this._loadingQueue.cancel();
            }
            else
            {
               this._loadingQueue.dispose(Boolean(param1 == 3));
               this._loadingQueue = null;
            }
         }
         if(param1 >= 1)
         {
            if(this._parsed != null)
            {
               this._parsed.dispose(Boolean(param1 == 3));
               this._parsed = null;
            }
            this._initted = false;
         }
         _cacheIsDirty = true;
         var _loc4_:* = _content;
         super._dump(param1,param2,param3);
         if(param1 == 0)
         {
            _content = _loc4_;
         }
      }
      
      override protected function _calculateProgress() : void
      {
         _cachedBytesLoaded = _loader.bytesLoaded;
         if(_loader.bytesTotal != 0)
         {
            _cachedBytesTotal = _loader.bytesTotal;
         }
         if(_cachedBytesTotal < _cachedBytesLoaded || this._initted)
         {
            _cachedBytesTotal = _cachedBytesLoaded;
         }
         var _loc1_:uint = uint(this.vars.estimatedBytes);
         if(this.vars.integrateProgress != false)
         {
            if(this._loadingQueue != null && (uint(this.vars.estimatedBytes) < _cachedBytesLoaded || this._loadingQueue.auditedSize))
            {
               if(this._loadingQueue.status <= LoaderStatus.COMPLETED)
               {
                  _cachedBytesLoaded = _cachedBytesLoaded + this._loadingQueue.bytesLoaded;
                  _cachedBytesTotal = _cachedBytesTotal + this._loadingQueue.bytesTotal;
               }
            }
            else if(uint(this.vars.estimatedBytes) > _cachedBytesLoaded && (!this._initted || this._loadingQueue != null && this._loadingQueue.status <= LoaderStatus.COMPLETED && !this._loadingQueue.auditedSize))
            {
               _cachedBytesTotal = uint(this.vars.estimatedBytes);
            }
         }
         if(!this._initted && _cachedBytesLoaded == _cachedBytesTotal)
         {
            _cachedBytesLoaded = int(_cachedBytesLoaded * 0.99);
         }
         _cacheIsDirty = false;
      }
      
      public final function getLoader(param1:String) : *
      {
         return this._parsed != null?this._parsed.getLoader(param1):null;
      }
      
      public final function getContent(param1:String) : *
      {
         if(param1 == this.name || param1 == _url)
         {
            return _content;
         }
         var _loc2_:LoaderCore = this.getLoader(param1);
         return _loc2_ != null?_loc2_.content:null;
      }
      
      public final function getChildren(param1:Boolean = false, param2:Boolean = false) : Array
      {
         return this._parsed != null?this._parsed.getChildren(param1,param2):[];
      }
      
      override protected function _progressHandler(param1:Event) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         if(_dispatchProgress)
         {
            _loc2_ = _cachedBytesLoaded;
            _loc3_ = _cachedBytesTotal;
            this._calculateProgress();
            if(_cachedBytesLoaded != _cachedBytesTotal && (_loc2_ != _cachedBytesLoaded || _loc3_ != _cachedBytesTotal))
            {
               dispatchEvent(new LoaderEvent(LoaderEvent.PROGRESS,this));
            }
         }
         else
         {
            _cacheIsDirty = true;
         }
      }
      
      override protected function _passThroughEvent(param1:Event) : void
      {
         if(param1.target != this._loadingQueue)
         {
            super._passThroughEvent(param1);
         }
      }
      
      override protected function _receiveDataHandler(param1:Event) : void
      {
         var loaders:Array = null;
         var i:int = 0;
         var event:Event = param1;
         try
         {
            _content = new XML(_loader.data);
         }
         catch(error:Error)
         {
            _content = _loader.data;
            _failHandler(new LoaderEvent(LoaderEvent.ERROR,this,error.message));
            return;
         }
         dispatchEvent(new LoaderEvent(RAW_LOAD,this,"",_content));
         this._initted = true;
         this._loadingQueue = new LoaderMax({
            "name":this.name + "_Queue",
            "maxConnections":uint(this.vars.maxConnections) || 2,
            "skipFailed":Boolean(this.vars.skipFailed != false),
            "skipPaused":Boolean(this.vars.skipPaused != false)
         });
         this._parsed = new LoaderMax({
            "name":this.name + "_ParsedLoaders",
            "paused":true
         });
         parseLoaders(_content as XML,this._parsed,this._loadingQueue);
         if(this._parsed.numChildren == 0)
         {
            this._parsed.dispose(false);
            this._parsed = null;
         }
         else if("recursivePrependURLs" in this.vars)
         {
            this._parsed.prependURLs(this.vars.recursivePrependURLs,true);
            loaders = this._parsed.getChildren(true,true);
            i = loaders.length;
            while(--i > -1)
            {
               if(loaders[i] is XMLLoader)
               {
                  loaders[i].vars.recursivePrependURLs = this.vars.recursivePrependURLs;
               }
            }
         }
         else if("prependURLs" in this.vars)
         {
            this._parsed.prependURLs(this.vars.prependURLs,true);
         }
         if(this._loadingQueue.getChildren(true,true).length == 0)
         {
            this._loadingQueue.empty(false);
            this._loadingQueue.dispose(false);
            this._loadingQueue = null;
            dispatchEvent(new LoaderEvent(LoaderEvent.INIT,this,"",_content));
         }
         else
         {
            _cacheIsDirty = true;
            this._changeQueueListeners(true);
            dispatchEvent(new LoaderEvent(LoaderEvent.INIT,this,"",_content));
            this._loadingQueue.load(false);
         }
         if(this._loadingQueue == null || this.vars.integrateProgress == false)
         {
            this._completeHandler(event);
         }
      }
      
      override protected function _failHandler(param1:Event, param2:Boolean = true) : void
      {
         if(param1.target == this._loadingQueue)
         {
            _status = LoaderStatus.FAILED;
            _time = getTimer() - _time;
            dispatchEvent(new LoaderEvent(LoaderEvent.CANCEL,this));
            dispatchEvent(new LoaderEvent(LoaderEvent.FAIL,this,this.toString() + " > " + (param1 as Object).text));
         }
         else
         {
            super._failHandler(param1,param2);
         }
      }
      
      override protected function _completeHandler(param1:Event = null) : void
      {
         this._calculateProgress();
         if(this.progress == 1)
         {
            this._changeQueueListeners(false);
            super._completeHandler(param1);
         }
      }
      
      override public function get progress() : Number
      {
         return this.bytesTotal != 0?Number(_cachedBytesLoaded / _cachedBytesTotal):_status == LoaderStatus.COMPLETED || this._initted?Number(1):Number(0);
      }
   }
}
