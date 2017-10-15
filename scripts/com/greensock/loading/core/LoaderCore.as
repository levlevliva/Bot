package com.greensock.loading.core
{
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuAscendTabVo;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.system.Capabilities;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.states.State;
   import package_14.class_286;
   import package_14.class_47;
   import package_17.class_37;
   import package_206.class_1567;
   import package_26.class_101;
   import package_36.class_100;
   import package_41.class_84;
   import spark.components.Label;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public class LoaderCore extends EventDispatcher
   {
      
      public static const version:Number = 1.87;
      
      protected static var _loaderCount:uint = 0;
      
      protected static var _rootLookup:Dictionary = new Dictionary(false);
      
      protected static var _isLocal:Boolean;
      
      protected static var _globalRootLoader:LoaderMax;
      
      protected static var _listenerTypes:Object = {
         "onOpen":"open",
         "onInit":"init",
         "onComplete":"complete",
         "onProgress":"progress",
         "onCancel":"cancel",
         "onFail":"fail",
         "onError":"error",
         "onSecurityError":"securityError",
         "onHTTPStatus":"httpStatus",
         "onIOError":"ioError",
         "onScriptAccessDenied":"scriptAccessDenied",
         "onChildOpen":"childOpen",
         "onChildCancel":"childCancel",
         "onChildComplete":"childComplete",
         "onChildProgress":"childProgress",
         "onChildFail":"childFail",
         "onRawLoad":"rawLoad",
         "onUncaughtError":"uncaughtError"
      };
      
      protected static var _types:Object = {};
      
      protected static var _extensions:Object = {};
       
      
      protected var _cachedBytesLoaded:uint;
      
      protected var _cachedBytesTotal:uint;
      
      protected var _status:int;
      
      protected var _prePauseStatus:int;
      
      protected var _dispatchProgress:Boolean;
      
      protected var _rootLoader:LoaderMax;
      
      protected var _cacheIsDirty:Boolean;
      
      protected var _auditedSize:Boolean;
      
      protected var _dispatchChildProgress:Boolean;
      
      protected var _type:String;
      
      protected var _time:uint;
      
      protected var _content;
      
      public var vars:Object;
      
      public var name:String;
      
      public var autoDispose:Boolean;
      
      public function LoaderCore(param1:Object = null)
      {
         var _loc2_:* = null;
         super();
         this.vars = param1 != null?param1:{};
         if(this.vars.isGSVars)
         {
            this.vars = this.vars.vars;
         }
         this.name = this.vars.name != undefined && String(this.vars.name) != ""?this.vars.name:"loader" + _loaderCount++;
         this._cachedBytesLoaded = 0;
         this._cachedBytesTotal = uint(this.vars.estimatedBytes) != 0?uint(uint(this.vars.estimatedBytes)):uint(LoaderMax.defaultEstimatedBytes);
         this.autoDispose = Boolean(this.vars.autoDispose == true);
         this._status = this.vars.paused == true?int(LoaderStatus.PAUSED):int(LoaderStatus.READY);
         this._auditedSize = Boolean(uint(this.vars.estimatedBytes) != 0 && this.vars.auditSize != true);
         if(_globalRootLoader == null)
         {
            if(this.vars.__isRoot == true)
            {
               return;
            }
            _globalRootLoader = new LoaderMax({
               "name":"root",
               "__isRoot":true
            });
            _isLocal = Boolean(Capabilities.playerType == "Desktop" || new LocalConnection().domain == "localhost");
         }
         this._rootLoader = this.vars.requireWithRoot is DisplayObject?_rootLookup[this.vars.requireWithRoot]:_globalRootLoader;
         if(this._rootLoader == null)
         {
            _rootLookup[this.vars.requireWithRoot] = this._rootLoader = new LoaderMax();
            this._rootLoader.name = "subloaded_swf_" + (this.vars.requireWithRoot.loaderInfo != null?this.vars.requireWithRoot.loaderInfo.url:String(_loaderCount));
            this._rootLoader.skipFailed = false;
         }
         for(_loc2_ in _listenerTypes)
         {
            if(_loc2_ in this.vars && this.vars[_loc2_] is Function)
            {
               this.addEventListener(_listenerTypes[_loc2_],this.vars[_loc2_],false,0,true);
            }
         }
         this._rootLoader.append(this);
      }
      
      protected static function _activateClass(param1:String, param2:Class, param3:String) : Boolean
      {
         if(param1 != "")
         {
            _types[param1.toLowerCase()] = param2;
         }
         var _loc4_:Array = param3.split(",");
         var _loc5_:int = _loc4_.length;
         while(--_loc5_ > -1)
         {
            _extensions[_loc4_[_loc5_]] = param2;
         }
         return true;
      }
      
      public final function load(param1:Boolean = false) : void
      {
         var _loc2_:uint = getTimer();
         if(this.status == LoaderStatus.PAUSED)
         {
            this._status = this._prePauseStatus <= LoaderStatus.LOADING?int(LoaderStatus.READY):int(this._prePauseStatus);
            if(this._status == LoaderStatus.READY && this is LoaderMax)
            {
               _loc2_ = _loc2_ - this._time;
            }
         }
         if(param1 || this._status == LoaderStatus.FAILED)
         {
            this._dump(1,LoaderStatus.READY);
         }
         if(this._status == LoaderStatus.READY)
         {
            this._status = LoaderStatus.LOADING;
            this._time = _loc2_;
            this._load();
            if(this.progress < 1)
            {
               dispatchEvent(new LoaderEvent(LoaderEvent.OPEN,this));
            }
         }
         else if(this._status == LoaderStatus.COMPLETED)
         {
            this._completeHandler(null);
         }
      }
      
      protected function _load() : void
      {
      }
      
      public final function pause() : void
      {
         this.paused = true;
      }
      
      public final function resume() : void
      {
         this.paused = false;
         this.load(false);
      }
      
      public final function cancel() : void
      {
         if(this._status == LoaderStatus.LOADING)
         {
            this._dump(0,LoaderStatus.READY);
         }
      }
      
      protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         var _loc5_:* = null;
         this._content = null;
         var _loc4_:Boolean = Boolean(this._status == LoaderStatus.LOADING);
         if(this._status == LoaderStatus.PAUSED && param2 != LoaderStatus.PAUSED && param2 != LoaderStatus.FAILED)
         {
            this._prePauseStatus = param2;
         }
         else if(this._status != LoaderStatus.DISPOSED)
         {
            this._status = param2;
         }
         if(_loc4_)
         {
            this._time = getTimer() - this._time;
         }
         this._cachedBytesLoaded = 0;
         if(this._status < LoaderStatus.FAILED)
         {
            if(this is LoaderMax)
            {
               this._calculateProgress();
            }
            if(this._dispatchProgress && !param3)
            {
               dispatchEvent(new LoaderEvent(LoaderEvent.PROGRESS,this));
            }
         }
         if(!param3)
         {
            if(_loc4_)
            {
               dispatchEvent(new LoaderEvent(LoaderEvent.CANCEL,this));
            }
            if(param1 != 2)
            {
               dispatchEvent(new LoaderEvent(LoaderEvent.UNLOAD,this));
            }
         }
         if(param2 == LoaderStatus.DISPOSED)
         {
            if(!param3)
            {
               dispatchEvent(new Event("dispose"));
            }
            for(_loc5_ in _listenerTypes)
            {
               if(_loc5_ in this.vars && this.vars[_loc5_] is Function)
               {
                  this.removeEventListener(_listenerTypes[_loc5_],this.vars[_loc5_]);
               }
            }
         }
      }
      
      public final function unload() : void
      {
         this._dump(1,LoaderStatus.READY);
      }
      
      public final function dispose(param1:Boolean = false) : void
      {
         this._dump(!!param1?3:2,LoaderStatus.DISPOSED);
      }
      
      public function prioritize(param1:Boolean = true) : void
      {
         dispatchEvent(new Event("prioritize"));
         if(param1 && this._status != LoaderStatus.COMPLETED && this._status != LoaderStatus.LOADING)
         {
            this.load(false);
         }
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         if(param1 == LoaderEvent.PROGRESS)
         {
            this._dispatchProgress = true;
         }
         else if(param1 == LoaderEvent.CHILD_PROGRESS && this is LoaderMax)
         {
            this._dispatchChildProgress = true;
         }
         super.addEventListener(param1,param2,param3,param4,param5);
      }
      
      protected function _calculateProgress() : void
      {
      }
      
      public function auditSize() : void
      {
      }
      
      override public function toString() : String
      {
         return this._type + " \'" + this.name + "\'" + (this is LoaderItem?" (" + (this as LoaderItem).url + ")":"");
      }
      
      protected function _progressHandler(param1:Event) : void
      {
         if(param1 is ProgressEvent)
         {
            this._cachedBytesLoaded = (param1 as ProgressEvent).bytesLoaded;
            this._cachedBytesTotal = (param1 as ProgressEvent).bytesTotal;
            if(!this._auditedSize)
            {
               this._auditedSize = true;
               dispatchEvent(new Event("auditedSize"));
            }
         }
         if(this._dispatchProgress && this._status == LoaderStatus.LOADING && this._cachedBytesLoaded != this._cachedBytesTotal)
         {
            dispatchEvent(new LoaderEvent(LoaderEvent.PROGRESS,this));
         }
      }
      
      protected function _completeHandler(param1:Event = null) : void
      {
         this._cachedBytesLoaded = this._cachedBytesTotal;
         if(this._status != LoaderStatus.COMPLETED)
         {
            dispatchEvent(new LoaderEvent(LoaderEvent.PROGRESS,this));
            this._status = LoaderStatus.COMPLETED;
            this._time = getTimer() - this._time;
         }
         dispatchEvent(new LoaderEvent(LoaderEvent.COMPLETE,this));
         if(this.autoDispose)
         {
            this.dispose();
         }
      }
      
      protected function _errorHandler(param1:Event) : void
      {
         var _loc2_:Object = param1.target;
         _loc2_ = param1 is LoaderEvent && this.hasOwnProperty("getChildren")?param1.target:this;
         var _loc3_:String = "";
         if(param1.hasOwnProperty("error") && Object(param1).error is Error)
         {
            _loc3_ = Object(param1).error.message;
         }
         else if(param1.hasOwnProperty("text"))
         {
            _loc3_ = Object(param1).text;
         }
         if(param1.type != LoaderEvent.ERROR && param1.type != LoaderEvent.FAIL && this.hasEventListener(param1.type))
         {
            dispatchEvent(new LoaderEvent(param1.type,_loc2_,_loc3_,param1));
         }
         if(param1.type != "uncaughtError")
         {
            "----\nError on " + this.toString() + ": " + _loc3_ + "\n----";
            if(this.hasEventListener(LoaderEvent.ERROR))
            {
               dispatchEvent(new LoaderEvent(LoaderEvent.ERROR,_loc2_,this.toString() + " > " + _loc3_,param1));
            }
         }
      }
      
      protected function _failHandler(param1:Event, param2:Boolean = true) : void
      {
         var _loc3_:Object = null;
         this._dump(0,LoaderStatus.FAILED);
         if(param2)
         {
            this._errorHandler(param1);
         }
         else
         {
            _loc3_ = param1.target;
         }
         dispatchEvent(new LoaderEvent(LoaderEvent.FAIL,param1 is LoaderEvent && this.hasOwnProperty("getChildren")?param1.target:this,this.toString() + " > " + (param1 as Object).text,param1));
      }
      
      protected function _passThroughEvent(param1:Event) : void
      {
         var _loc2_:String = param1.type;
         var _loc3_:Object = this;
         if(this.hasOwnProperty("getChildren"))
         {
            if(param1 is LoaderEvent)
            {
               _loc3_ = param1.target;
            }
            if(_loc2_ == "complete")
            {
               _loc2_ = "childComplete";
            }
            else if(_loc2_ == "open")
            {
               _loc2_ = "childOpen";
            }
            else if(_loc2_ == "cancel")
            {
               _loc2_ = "childCancel";
            }
            else if(_loc2_ == "fail")
            {
               _loc2_ = "childFail";
            }
         }
         if(this.hasEventListener(_loc2_))
         {
            dispatchEvent(new LoaderEvent(_loc2_,_loc3_,!!param1.hasOwnProperty("text")?Object(param1).text:"",param1 is LoaderEvent && LoaderEvent(param1).data != null?LoaderEvent(param1).data:param1));
         }
      }
      
      public function get paused() : Boolean
      {
         return Boolean(this._status == LoaderStatus.PAUSED);
      }
      
      public function set paused(param1:Boolean) : void
      {
         if(param1 && this._status != LoaderStatus.PAUSED)
         {
            this._prePauseStatus = this._status;
            if(this._status == LoaderStatus.LOADING)
            {
               this._dump(0,LoaderStatus.PAUSED);
            }
            this._status = LoaderStatus.PAUSED;
         }
         else if(!param1 && this._status == LoaderStatus.PAUSED)
         {
            if(this._prePauseStatus == LoaderStatus.LOADING)
            {
               this.load(false);
            }
            else
            {
               this._status = int(this._prePauseStatus) || int(LoaderStatus.READY);
            }
         }
      }
      
      public function get status() : int
      {
         return this._status;
      }
      
      public function get bytesLoaded() : uint
      {
         if(this._cacheIsDirty)
         {
            this._calculateProgress();
         }
         return this._cachedBytesLoaded;
      }
      
      public function get bytesTotal() : uint
      {
         if(this._cacheIsDirty)
         {
            this._calculateProgress();
         }
         return this._cachedBytesTotal;
      }
      
      public function get progress() : Number
      {
         return this.bytesTotal != 0?Number(this._cachedBytesLoaded / this._cachedBytesTotal):this._status == LoaderStatus.COMPLETED?Number(1):Number(0);
      }
      
      public function get rootLoader() : LoaderMax
      {
         return this._rootLoader;
      }
      
      public function get content() : *
      {
         return this._content;
      }
      
      public function get auditedSize() : Boolean
      {
         return this._auditedSize;
      }
      
      public function get loadTime() : Number
      {
         if(this._status == LoaderStatus.READY)
         {
            return 0;
         }
         if(this._status == LoaderStatus.LOADING)
         {
            return (getTimer() - this._time) / 1000;
         }
         return this._time / 1000;
      }
   }
}
