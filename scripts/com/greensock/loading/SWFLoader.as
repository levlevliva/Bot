package com.greensock.loading
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1021;
   import com.bigpoint.seafight.tools.class_1187;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListItem;
   import com.bigpoint.seafight.view.popups.boarding.skins.CommonEquipmentListSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.event.MinigamePopupController;
   import com.bigpoint.seafight.view.popups.event.component.MinigamePopup;
   import com.bigpoint.seafight.view.popups.event.modules.common.BulletText;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.MemberRankAssignationVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import com.bigpoint.seafight.view.popups.quest.regular.AbstractQuestPopupController;
   import com.bigpoint.seafight.view.popups.shipequipment.component.SimpleStatisticItem;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.seafight.view.popups.vo.MinigameContentVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatsListItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.PergamentButtonBarSkinInnerClass2;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.DisplayObjectLoader;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.AVM1Movie;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.media.SoundTransform;
   import flash.system.ApplicationDomain;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IVisualElement;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.event.EventType;
   import net.bigpoint.seafight.com.module.gems.class_593;
   import net.bigpoint.seafight.com.module.gems.class_772;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_1475;
   import net.bigpoint.seafight.com.module.guild.class_394;
   import net.bigpoint.seafight.com.module.guild.class_459;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import net.bigpoint.seafight.com.module.guild.class_635;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_100.class_1186;
   import package_106.class_783;
   import package_118.class_1445;
   import package_118.class_539;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_152.class_611;
   import package_152.class_934;
   import package_153.class_931;
   import package_26.class_960;
   import package_27.class_53;
   import package_32.class_1245;
   import package_32.class_338;
   import package_32.class_64;
   import package_34.class_116;
   import package_34.class_117;
   import package_34.class_1257;
   import package_34.class_73;
   import package_41.class_103;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_1224;
   import package_46.class_1455;
   import package_46.class_975;
   import package_5.class_1509;
   import package_5.class_939;
   import package_51.class_148;
   import package_51.class_974;
   import package_54.class_1089;
   import package_54.class_163;
   import package_55.class_1008;
   import package_56.class_170;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_15;
   import package_7.class_1538;
   import package_72.class_1080;
   import package_73.class_1112;
   import package_88.class_1093;
   import package_88.class_967;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.primitives.Graphic;
   import spark.primitives.Line;
   
   public final class SWFLoader extends DisplayObjectLoader
   {
      
      private static var _classActivated:Boolean = _activateClass("SWFLoader",SWFLoader,"swf");
       
      
      protected var _lastPTUncaughtError:Event;
      
      protected var _queue:LoaderMax;
      
      protected var _hasRSL:Boolean;
      
      protected var _rslAddedCount:uint;
      
      protected var _loaderCompleted:Boolean;
      
      protected var _loadOnExitStealth:Boolean;
      
      protected var _loaderFailed:Boolean;
      
      public function SWFLoader(param1:*, param2:Object = null)
      {
         super(param1,param2);
         _preferEstimatedBytesInAudit = true;
         _type = "SWFLoader";
      }
      
      override protected function _load() : void
      {
         if(_stealthMode)
         {
            _stealthMode = this._loadOnExitStealth;
         }
         else if(!_initted)
         {
            _loader.visible = false;
            _sprite.addChild(_loader);
            super._load();
         }
         else if(this._queue != null)
         {
            this._changeQueueListeners(true);
            this._queue.load(false);
         }
      }
      
      override protected function _refreshLoader(param1:Boolean = true) : void
      {
         super._refreshLoader(param1);
         this._loaderCompleted = false;
      }
      
      protected final function _changeQueueListeners(param1:Boolean) : void
      {
         var _loc2_:* = null;
         if(this._queue != null)
         {
            if(param1 && this.vars.integrateProgress != false)
            {
               for(_loc2_ in _listenerTypes)
               {
                  if(_loc2_ != "onProgress" && _loc2_ != "onInit")
                  {
                     this._queue.addEventListener(_listenerTypes[_loc2_],this._passThroughEvent,false,-100,true);
                  }
               }
               this._queue.addEventListener(LoaderEvent.COMPLETE,this._completeHandler,false,-100,true);
               this._queue.addEventListener(LoaderEvent.PROGRESS,this._progressHandler,false,-100,true);
               this._queue.addEventListener(LoaderEvent.FAIL,this._failHandler,false,-100,true);
            }
            else
            {
               this._queue.removeEventListener(LoaderEvent.COMPLETE,this._completeHandler);
               this._queue.removeEventListener(LoaderEvent.PROGRESS,this._progressHandler);
               this._queue.removeEventListener(LoaderEvent.FAIL,this._failHandler);
               for(_loc2_ in _listenerTypes)
               {
                  if(_loc2_ != "onProgress" && _loc2_ != "onInit")
                  {
                     this._queue.removeEventListener(_listenerTypes[_loc2_],this._passThroughEvent);
                  }
               }
            }
         }
      }
      
      override protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         var _loc4_:* = undefined;
         this._loaderCompleted = false;
         if(_status == LoaderStatus.LOADING && !_initted && !this._loaderFailed)
         {
            _stealthMode = true;
            super._dump(param1,param2,param3);
            return;
         }
         if(_initted && !_scriptAccessDenied && param1 != 2)
         {
            this._stopMovieClips(_loader.content);
            if(_loader.content in _rootLookup)
            {
               this._queue = LoaderMax(_rootLookup[_loader.content]);
               this._changeQueueListeners(false);
               if(param1 == 0)
               {
                  this._queue.cancel();
               }
               else
               {
                  delete _rootLookup[_loader.content];
                  this._queue.dispose(Boolean(param1 != 2));
               }
            }
         }
         if(_stealthMode)
         {
            try
            {
               _loader.close();
            }
            catch(error:Error)
            {
            }
         }
         this._loadOnExitStealth = false;
         this._loaderFailed = false;
         _stealthMode = this._hasRSL = _loc5_;
         _cacheIsDirty = true;
         if(param1 >= 1)
         {
            this._queue = null;
            _initted = false;
            super._dump(param1,param2,param3);
         }
         else
         {
            _loc4_ = _content;
            super._dump(param1,param2,param3);
            _content = _loc4_;
         }
      }
      
      protected final function _stopMovieClips(param1:DisplayObject) : void
      {
         var _loc2_:MovieClip = param1 as MovieClip;
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.stop();
         var _loc3_:int = _loc2_.numChildren;
         while(--_loc3_ > -1)
         {
            this._stopMovieClips(_loc2_.getChildAt(_loc3_));
         }
      }
      
      override protected function _determineScriptAccess() : void
      {
         var mc:DisplayObject = null;
         try
         {
            mc = _loader.content;
         }
         catch(error:Error)
         {
            _scriptAccessDenied = true;
            dispatchEvent(new LoaderEvent(LoaderEvent.SCRIPT_ACCESS_DENIED,this,error.message));
            return;
         }
         if(_loader.content is AVM1Movie)
         {
            _scriptAccessDenied = true;
            dispatchEvent(new LoaderEvent(LoaderEvent.SCRIPT_ACCESS_DENIED,this,"AVM1Movie denies script access"));
         }
      }
      
      override protected function _calculateProgress() : void
      {
         _cachedBytesLoaded = !!_stealthMode?uint(0):uint(_loader.contentLoaderInfo.bytesLoaded);
         if(_loader.contentLoaderInfo.bytesTotal != 0)
         {
            _cachedBytesTotal = _loader.contentLoaderInfo.bytesTotal;
         }
         if(_cachedBytesTotal < _cachedBytesLoaded || this._loaderCompleted)
         {
            _cachedBytesTotal = _cachedBytesLoaded;
         }
         if(this.vars.integrateProgress != false)
         {
            if(this._queue != null && (uint(this.vars.estimatedBytes) < _cachedBytesLoaded || this._queue.auditedSize))
            {
               if(this._queue.status <= LoaderStatus.COMPLETED)
               {
                  _cachedBytesLoaded = _cachedBytesLoaded + this._queue.bytesLoaded;
                  _cachedBytesTotal = _cachedBytesTotal + this._queue.bytesTotal;
               }
            }
            else if(uint(this.vars.estimatedBytes) > _cachedBytesLoaded && (!_initted || this._queue != null && this._queue.status <= LoaderStatus.COMPLETED && !this._queue.auditedSize))
            {
               _cachedBytesTotal = uint(this.vars.estimatedBytes);
            }
         }
         if(this._hasRSL && _content == null || !_initted && _cachedBytesLoaded == _cachedBytesTotal)
         {
            _cachedBytesLoaded = int(_cachedBytesLoaded * 0.99);
         }
         _cacheIsDirty = false;
      }
      
      protected final function _checkRequiredLoaders() : void
      {
         if(this._queue == null && this.vars.integrateProgress != false && !_scriptAccessDenied && _content != null)
         {
            this._queue = _rootLookup[_content];
            if(this._queue != null)
            {
               this._changeQueueListeners(true);
               this._queue.load(false);
               _cacheIsDirty = true;
            }
         }
      }
      
      public final function getClass(param1:String) : Class
      {
         var _loc2_:Object = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         if(_content == null || _scriptAccessDenied)
         {
            return null;
         }
         if(_content.loaderInfo.applicationDomain.hasDefinition(param1))
         {
            return _content.loaderInfo.applicationDomain.getDefinition(param1);
         }
         if(this._queue != null)
         {
            _loc3_ = this._queue.getChildren(true,true);
            _loc4_ = _loc3_.length;
            while(--_loc4_ > -1)
            {
               if(_loc3_[_loc4_] is SWFLoader)
               {
                  _loc2_ = (_loc3_[_loc4_] as SWFLoader).getClass(param1);
                  if(_loc2_ != null)
                  {
                     return _loc2_ as Class;
                  }
               }
            }
         }
         return null;
      }
      
      public final function getSWFChild(param1:String) : DisplayObject
      {
         return !_scriptAccessDenied && _content is DisplayObjectContainer?DisplayObjectContainer(_content).getChildByName(param1):null;
      }
      
      public final function getLoader(param1:String) : *
      {
         return this._queue != null?this._queue.getLoader(param1):null;
      }
      
      public final function getContent(param1:String) : *
      {
         if(param1 == this.name || param1 == _url)
         {
            return this.content;
         }
         var _loc2_:LoaderCore = this.getLoader(param1);
         return _loc2_ != null?_loc2_.content:null;
      }
      
      public final function getChildren(param1:Boolean = false, param2:Boolean = false) : Array
      {
         return this._queue != null?this._queue.getChildren(param1,param2):[];
      }
      
      override protected function _initHandler(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:DisplayObject = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         if(_stealthMode)
         {
            _initted = true;
            _loc2_ = this._loadOnExitStealth;
            this._dump(_status == LoaderStatus.DISPOSED?3:1,_status,true);
            if(_loc2_)
            {
               this._load();
            }
            return;
         }
         this._hasRSL = false;
         try
         {
            _loc3_ = _loader.content;
            _loc4_ = getQualifiedClassName(_loc3_);
            if(_loc4_.substr(-13) == "__Preloader__")
            {
               _loc5_ = _loc3_["__rslPreloader"];
               if(_loc5_ != null)
               {
                  _loc4_ = getQualifiedClassName(_loc5_);
                  if(_loc4_ == "fl.rsl::RSLPreloader")
                  {
                     this._hasRSL = true;
                     this._rslAddedCount = 0;
                     _loc3_.addEventListener(Event.ADDED,this._rslAddedHandler);
                  }
               }
            }
         }
         catch(error:Error)
         {
         }
         if(!this._hasRSL)
         {
            this._init();
         }
      }
      
      protected final function _init() : void
      {
         var _loc1_:SoundTransform = null;
         this._determineScriptAccess();
         if(!_scriptAccessDenied)
         {
            if(!this._hasRSL)
            {
               _content = _loader.content;
            }
            if(_content != null)
            {
               if(this.vars.autoPlay == false && _content is MovieClip)
               {
                  _loc1_ = _content.soundTransform;
                  _loc1_.volume = 0;
                  _content.soundTransform = _loc1_;
                  _content.stop();
               }
               this._checkRequiredLoaders();
            }
            if(_loader.parent == _sprite)
            {
               if(_sprite.stage != null && this.vars.suppressInitReparentEvents == true)
               {
                  _sprite.addEventListener(Event.ADDED_TO_STAGE,this._captureFirstEvent,true,1000,true);
                  _loader.addEventListener(Event.REMOVED_FROM_STAGE,this._captureFirstEvent,true,1000,true);
               }
               _sprite.removeChild(_loader);
            }
         }
         else
         {
            _content = _loader;
            _loader.visible = true;
         }
         super._initHandler(null);
      }
      
      protected final function _captureFirstEvent(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         param1.currentTarget.removeEventListener(param1.type,this._captureFirstEvent);
      }
      
      protected final function _rslAddedHandler(param1:Event) : void
      {
         if(param1.target is DisplayObject && param1.currentTarget is DisplayObjectContainer && param1.target.parent == param1.currentTarget)
         {
            this._rslAddedCount++;
         }
         if(this._rslAddedCount > 1)
         {
            param1.currentTarget.removeEventListener(Event.ADDED,this._rslAddedHandler);
            if(_status == LoaderStatus.LOADING)
            {
               _content = param1.target;
               this._init();
               this._calculateProgress();
               dispatchEvent(new LoaderEvent(LoaderEvent.PROGRESS,this));
               this._completeHandler(null);
            }
         }
      }
      
      override protected function _passThroughEvent(param1:Event) : void
      {
         if(!(param1.type == "uncaughtError" && this._suppressUncaughtError(param1)) && param1.target != this._queue)
         {
            super._passThroughEvent(param1);
         }
      }
      
      override protected function _progressHandler(param1:Event) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         if(_status == LoaderStatus.LOADING)
         {
            if(this._queue == null && _initted)
            {
               this._checkRequiredLoaders();
            }
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
      }
      
      override protected function _completeHandler(param1:Event = null) : void
      {
         var _loc2_:SoundTransform = null;
         this._loaderCompleted = true;
         this._checkRequiredLoaders();
         this._calculateProgress();
         if(this.progress == 1)
         {
            if(!_scriptAccessDenied && this.vars.autoPlay == false && _content is MovieClip)
            {
               _loc2_ = _content.soundTransform;
               _loc2_.volume = 1;
               _content.soundTransform = _loc2_;
            }
            this._changeQueueListeners(false);
            super._determineScriptAccess();
            super._completeHandler(param1);
         }
      }
      
      override protected function _errorHandler(param1:Event) : void
      {
         if(!this._suppressUncaughtError(param1))
         {
            super._errorHandler(param1);
         }
      }
      
      protected final function _suppressUncaughtError(param1:Event) : Boolean
      {
         if(param1 is LoaderEvent && LoaderEvent(param1).data is Event)
         {
            param1 = LoaderEvent(param1).data as Event;
         }
         if(param1.type == "uncaughtError")
         {
            if(this._lastPTUncaughtError == (this._lastPTUncaughtError = param1))
            {
               return true;
            }
            if(this.vars.suppressUncaughtErrors == true)
            {
               param1.preventDefault();
               param1.stopImmediatePropagation();
               return true;
            }
         }
         return false;
      }
      
      override protected function _failHandler(param1:Event, param2:Boolean = true) : void
      {
         if((param1.type == "ioError" || param1.type == "securityError") && param1.target == _loader.contentLoaderInfo)
         {
            this._loaderFailed = true;
            if(this._loadOnExitStealth)
            {
               this._dump(1,_status,true);
               this._load();
               return;
            }
         }
         if(param1.target == this._queue)
         {
            _status = LoaderStatus.FAILED;
            _time = getTimer() - _time;
            dispatchEvent(new LoaderEvent(LoaderEvent.CANCEL,this));
            dispatchEvent(new LoaderEvent(LoaderEvent.FAIL,this,this.toString() + " > " + (param1 as Object).text));
            return;
         }
         super._failHandler(param1,param2);
      }
      
      override public function set url(param1:String) : void
      {
         if(_url != param1)
         {
            if(_status == LoaderStatus.LOADING && !_initted && !this._loaderFailed)
            {
               this._loadOnExitStealth = true;
            }
            super.url = param1;
         }
      }
   }
}
