package com.greensock.loading.core
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.SmallGreenAcceptButton;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabListItem;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.display.ContentDisplay;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.net.LocalConnection;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.Capabilities;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.core.ClassFactory;
   import mx.graphics.LinearGradient;
   import mx.graphics.SolidColor;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_14.class_47;
   import package_14.class_94;
   import package_26.class_1086;
   import package_5.class_22;
   import package_53.class_1100;
   import package_54.class_319;
   import package_6.class_14;
   
   public class DisplayObjectLoader extends LoaderItem
   {
      
      public static var defaultAutoForceGC:Boolean = true;
      
      protected static var _gcDispatcher:Sprite;
      
      protected static var _gcCycles:uint = 0;
       
      
      protected var _loader:Loader;
      
      protected var _sprite:Sprite;
      
      protected var _context:LoaderContext;
      
      protected var _initted:Boolean;
      
      protected var _stealthMode:Boolean;
      
      protected var _fallbackAudit:Loader;
      
      public function DisplayObjectLoader(param1:*, param2:Object = null)
      {
         super(param1,param2);
         this._refreshLoader(false);
         if(LoaderMax.contentDisplayClass is Class)
         {
            this._sprite = new LoaderMax.contentDisplayClass(this);
            if(!this._sprite.hasOwnProperty("rawContent"))
            {
               throw new Error("LoaderMax.contentDisplayClass must be set to a class with a \'rawContent\' property, like com.greensock.loading.display.ContentDisplay");
            }
         }
         else
         {
            this._sprite = new ContentDisplay(this);
         }
      }
      
      public static function forceGC(param1:uint = 1) : void
      {
         if(_gcCycles < param1)
         {
            _gcCycles = param1;
            if(_gcDispatcher == null)
            {
               _gcDispatcher = new Sprite();
               _gcDispatcher.addEventListener(Event.ENTER_FRAME,_forceGCHandler,false,0,true);
            }
         }
      }
      
      protected static function _forceGCHandler(param1:Event) : void
      {
         if(--_gcCycles <= 0)
         {
            _gcDispatcher.removeEventListener(Event.ENTER_FRAME,_forceGCHandler);
            _gcDispatcher = null;
         }
         try
         {
            new LocalConnection().connect("FORCE_GC");
            new LocalConnection().connect("FORCE_GC");
            return;
         }
         catch(error:Error)
         {
            return;
         }
      }
      
      public final function setContentDisplay(param1:Sprite) : void
      {
         this._sprite = param1;
      }
      
      override protected function _load() : void
      {
         _prepRequest();
         if(this.vars.context is LoaderContext)
         {
            this._context = this.vars.context;
         }
         else if(this._context == null)
         {
            if(LoaderMax.defaultContext != null)
            {
               this._context = LoaderMax.defaultContext;
               if(_isLocal)
               {
                  this._context.securityDomain = null;
               }
            }
            else if(!_isLocal)
            {
               this._context = new LoaderContext(true,new ApplicationDomain(ApplicationDomain.currentDomain),SecurityDomain.currentDomain);
            }
         }
         if(Capabilities.playerType != "Desktop")
         {
            Security.allowDomain(_url);
         }
         this._loader.load(_request,this._context);
      }
      
      override public function auditSize() : void
      {
         if(Capabilities.playerType != "Desktop")
         {
            Security.allowDomain(_url);
         }
         super.auditSize();
      }
      
      override protected function _closeStream() : void
      {
         this._closeFallbackAudit();
         super._closeStream();
      }
      
      protected final function _closeFallbackAudit() : void
      {
         if(this._fallbackAudit != null)
         {
            this._fallbackAudit.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this._auditStreamHandler,false,0,true);
            this._fallbackAudit.contentLoaderInfo.addEventListener(Event.COMPLETE,this._auditStreamHandler,false,0,true);
            this._fallbackAudit.contentLoaderInfo.addEventListener("ioError",this._auditStreamHandler,false,0,true);
            this._fallbackAudit.contentLoaderInfo.addEventListener("securityError",this._auditStreamHandler,false,0,true);
            try
            {
               this._fallbackAudit.close();
            }
            catch(error:Error)
            {
            }
            this._fallbackAudit = null;
         }
      }
      
      override protected function _auditStreamHandler(param1:Event) : void
      {
         var _loc2_:URLRequest = null;
         if(param1.type == "securityError")
         {
            if(this._fallbackAudit == null)
            {
               this._context = new LoaderContext(false);
               _scriptAccessDenied = true;
               dispatchEvent(new LoaderEvent(LoaderEvent.SCRIPT_ACCESS_DENIED,this,ErrorEvent(param1).text));
               _errorHandler(param1);
               this._fallbackAudit = new Loader();
               this._fallbackAudit.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this._auditStreamHandler,false,0,true);
               this._fallbackAudit.contentLoaderInfo.addEventListener(Event.COMPLETE,this._auditStreamHandler,false,0,true);
               this._fallbackAudit.contentLoaderInfo.addEventListener("ioError",this._auditStreamHandler,false,0,true);
               this._fallbackAudit.contentLoaderInfo.addEventListener("securityError",this._auditStreamHandler,false,0,true);
               _loc2_ = new URLRequest();
               _loc2_.data = _request.data;
               _loc2_.method = _request.method;
               _setRequestURL(_loc2_,_url,!_isLocal || _url.substr(0,4) == "http"?"gsCacheBusterID=" + _cacheID++ + "&purpose=audit":"");
               if(Capabilities.playerType != "Desktop")
               {
                  Security.allowDomain(_url);
               }
               this._fallbackAudit.load(_loc2_,this._context);
               return;
            }
            this._closeFallbackAudit();
         }
         super._auditStreamHandler(param1);
      }
      
      protected function _refreshLoader(param1:Boolean = true) : void
      {
         if(this._loader != null)
         {
            if(_status == LoaderStatus.LOADING)
            {
               try
               {
                  this._loader.close();
               }
               catch(error:Error)
               {
               }
            }
            this._loader.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,_progressHandler);
            this._loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,_completeHandler);
            this._loader.contentLoaderInfo.removeEventListener("ioError",_failHandler);
            this._loader.contentLoaderInfo.removeEventListener("securityError",this._securityErrorHandler);
            this._loader.contentLoaderInfo.removeEventListener("httpStatus",_httpStatusHandler);
            this._loader.contentLoaderInfo.removeEventListener(Event.INIT,this._initHandler);
            if(this._loader.hasOwnProperty("uncaughtErrorEvents"))
            {
               Object(this._loader).uncaughtErrorEvents.removeEventListener("uncaughtError",_errorHandler);
            }
            if(param1)
            {
               try
               {
                  if(this._loader.parent == null && this._sprite != null)
                  {
                     this._sprite.addChild(this._loader);
                  }
                  if(this._loader.hasOwnProperty("unloadAndStop"))
                  {
                     (this._loader as Object).unloadAndStop();
                  }
                  else
                  {
                     this._loader.unload();
                  }
               }
               catch(error:Error)
               {
               }
               if(this._loader.parent)
               {
                  this._loader.parent.removeChild(this._loader);
               }
               if("autoForceGC" in this.vars?Boolean(this.vars.autoForceGC):Boolean(defaultAutoForceGC))
               {
                  forceGC(!!this.hasOwnProperty("getClass")?uint(3):uint(1));
               }
            }
         }
         this._initted = false;
         this._loader = new Loader();
         this._loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,_progressHandler,false,0,true);
         this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,_completeHandler,false,0,true);
         this._loader.contentLoaderInfo.addEventListener("ioError",_failHandler,false,0,true);
         this._loader.contentLoaderInfo.addEventListener("securityError",this._securityErrorHandler,false,0,true);
         this._loader.contentLoaderInfo.addEventListener("httpStatus",_httpStatusHandler,false,0,true);
         this._loader.contentLoaderInfo.addEventListener(Event.INIT,this._initHandler,false,0,true);
         if(this._loader.hasOwnProperty("uncaughtErrorEvents"))
         {
            Object(this._loader).uncaughtErrorEvents.addEventListener("uncaughtError",_errorHandler,false,0,true);
         }
      }
      
      override protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         if(!this._stealthMode)
         {
            this._refreshLoader(Boolean(param1 != 2));
         }
         if(param1 == 1)
         {
            (this._sprite as Object).rawContent = null;
         }
         else if(param1 == 2)
         {
            (this._sprite as Object).loader = null;
         }
         else if(param1 == 3)
         {
            (this._sprite as Object).dispose(false,false);
         }
         super._dump(param1,param2,param3);
      }
      
      protected function _determineScriptAccess() : void
      {
         if(!_scriptAccessDenied)
         {
            if(!this._loader.contentLoaderInfo.childAllowsParent)
            {
               _scriptAccessDenied = true;
               dispatchEvent(new LoaderEvent(LoaderEvent.SCRIPT_ACCESS_DENIED,this,"Error #2123: Security sandbox violation: " + this + ". No policy files granted access."));
            }
         }
      }
      
      protected final function _securityErrorHandler(param1:ErrorEvent) : void
      {
         if(this._context != null && this._context.checkPolicyFile && !(this.vars.context is LoaderContext))
         {
            this._context = new LoaderContext(false);
            _scriptAccessDenied = true;
            dispatchEvent(new LoaderEvent(LoaderEvent.SCRIPT_ACCESS_DENIED,this,param1.text));
            _errorHandler(param1);
            this._load();
         }
         else
         {
            _failHandler(param1);
         }
      }
      
      protected function _initHandler(param1:Event) : void
      {
         if(!this._initted)
         {
            this._initted = true;
            if(_content == null)
            {
               _content = !!_scriptAccessDenied?this._loader:this._loader.content;
            }
            (this._sprite as Object).rawContent = _content as DisplayObject;
            dispatchEvent(new LoaderEvent(LoaderEvent.INIT,this));
         }
      }
      
      override public function get content() : *
      {
         return this._sprite;
      }
      
      public function get rawContent() : *
      {
         return _content;
      }
   }
}
