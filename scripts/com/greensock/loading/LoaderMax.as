package com.greensock.loading
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.net.events.class_1021;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.class_46;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
   import com.bigpoint.seafight.view.popups.event.modules.common.clash.ClashRankingListItem;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.target;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.component.RolesList;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.GuildRelationsTableColumnHeaderRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuRanksTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuRanksTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRanksTabVo;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.itemrenderers.MateyActionsItemRenderer;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.greensock.TweenMax;
   import com.greensock.core.TweenCore;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.LoaderCore;
   import com.greensock.loading.core.LoaderItem;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.effects.Parallel;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.graphics.GradientEntry;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.seafight.com.module.gems.class_642;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.guild.class_476;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_10.class_18;
   import package_10.class_38;
   import package_105.class_369;
   import package_105.class_529;
   import package_121.class_841;
   import package_131.class_573;
   import package_133.class_595;
   import package_14.class_102;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_94;
   import package_14.class_96;
   import package_151.class_905;
   import package_152.class_664;
   import package_152.class_668;
   import package_152.class_937;
   import package_156.class_654;
   import package_16.class_28;
   import package_17.class_37;
   import package_170.class_979;
   import package_171.class_1276;
   import package_175.class_1593;
   import package_18.class_392;
   import package_20.class_33;
   import package_213.class_1522;
   import package_30.class_62;
   import package_34.class_1499;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_975;
   import package_47.class_881;
   import package_48.class_138;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_945;
   import package_51.class_1082;
   import package_51.class_1355;
   import package_52.class_167;
   import package_52.class_168;
   import package_54.class_163;
   import package_56.class_170;
   import package_6.class_14;
   import package_60.class_183;
   import package_72.class_203;
   import package_76.class_243;
   import package_9.class_120;
   import package_9.class_91;
   import package_92.class_944;
   import package_92.class_995;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.components.Scroller;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   import spark.events.IndexChangeEvent;
   import spark.events.TextOperationEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class LoaderMax extends LoaderCore
   {
      
      public static const version:Number = 1.9;
      
      public static var defaultEstimatedBytes:uint = 20000;
      
      public static var defaultAuditSize:Boolean = true;
      
      public static var defaultContext:LoaderContext;
      
      public static var contentDisplayClass:Class;
       
      
      protected var _loaders:Array;
      
      protected var _activeLoaders:Dictionary;
      
      public var skipFailed:Boolean;
      
      public var skipPaused:Boolean;
      
      public var maxConnections:uint;
      
      public var autoLoad:Boolean;
      
      public function LoaderMax(param1:Object = null)
      {
         var _loc2_:int = 0;
         super(param1);
         _type = "LoaderMax";
         this._loaders = [];
         this._activeLoaders = new Dictionary();
         this.skipFailed = Boolean(this.vars.skipFailed != false);
         this.skipPaused = Boolean(this.vars.skipPaused != false);
         this.autoLoad = Boolean(this.vars.autoLoad == true);
         this.maxConnections = "maxConnections" in this.vars?uint(uint(this.vars.maxConnections)):uint(2);
         if(this.vars.loaders is Array)
         {
            _loc2_ = 0;
            while(_loc2_ < this.vars.loaders.length)
            {
               this.insert(this.vars.loaders[_loc2_],_loc2_);
               _loc2_++;
            }
         }
      }
      
      public static function parse(param1:*, param2:Object = null, param3:Object = null) : *
      {
         var _loc4_:LoaderMax = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         if(param1 is Array)
         {
            _loc4_ = new LoaderMax(param2);
            _loc5_ = param1.length;
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               _loc4_.append(LoaderMax.parse(param1[_loc6_],param3));
               _loc6_++;
            }
            return _loc4_;
         }
         if(param1 is String || param1 is URLRequest)
         {
            _loc7_ = param1 is String?param1:URLRequest(param1).url;
            _loc7_ = _loc7_.toLowerCase().split("?")[0];
            _loc7_ = _loc7_.substr(_loc7_.lastIndexOf(".") + 1);
            if(_loc7_ in _extensions)
            {
               return new _extensions[_loc7_](param1,param2);
            }
         }
         else if(param1 is LoaderCore)
         {
            return param1 as LoaderCore;
         }
         throw new Error("LoaderMax could not parse " + param1 + ". Don\'t forget to use LoaderMax.activate() to activate the necessary types of loaders.");
      }
      
      public static function activate(param1:Array) : void
      {
      }
      
      public static function registerFileType(param1:String, param2:Class) : void
      {
         _activateClass("",param2,param1);
      }
      
      public static function getLoader(param1:String) : *
      {
         return _globalRootLoader != null?_globalRootLoader.getLoader(param1):null;
      }
      
      public static function getContent(param1:String) : *
      {
         return _globalRootLoader != null?_globalRootLoader.getContent(param1):null;
      }
      
      public static function prioritize(param1:String, param2:Boolean = true) : LoaderCore
      {
         var _loc3_:LoaderCore = getLoader(param1);
         if(_loc3_ != null)
         {
            _loc3_.prioritize(param2);
         }
         return _loc3_;
      }
      
      override protected function _load() : void
      {
         this._loadNext(null);
      }
      
      public final function append(param1:LoaderCore) : LoaderCore
      {
         return this.insert(param1,this._loaders.length);
      }
      
      public final function prepend(param1:LoaderCore) : LoaderCore
      {
         return this.insert(param1,0);
      }
      
      public final function insert(param1:LoaderCore, param2:uint = 999999999) : LoaderCore
      {
         var _loc3_:* = null;
         if(param1 == null || param1 == this || _status == LoaderStatus.DISPOSED)
         {
            return null;
         }
         if(this != param1.rootLoader)
         {
            this._removeLoader(param1,false);
         }
         if(param1.rootLoader == _globalRootLoader)
         {
            param1.rootLoader.remove(param1);
         }
         if(param2 > this._loaders.length)
         {
            param2 = this._loaders.length;
         }
         this._loaders.splice(param2,0,param1);
         if(this != _globalRootLoader)
         {
            for(_loc3_ in _listenerTypes)
            {
               if(_loc3_ != "onProgress" && _loc3_ != "onInit")
               {
                  param1.addEventListener(_listenerTypes[_loc3_],_passThroughEvent,false,-100,true);
               }
            }
            param1.addEventListener(LoaderEvent.PROGRESS,this._progressHandler,false,-100,true);
            param1.addEventListener("prioritize",this._prioritizeHandler,false,-100,true);
         }
         param1.addEventListener("dispose",this._disposeHandler,false,-100,true);
         _cacheIsDirty = true;
         if(_status != LoaderStatus.LOADING)
         {
            if(_status != LoaderStatus.PAUSED)
            {
               _status = LoaderStatus.READY;
            }
            else if(_prePauseStatus == LoaderStatus.COMPLETED)
            {
               _prePauseStatus = LoaderStatus.READY;
            }
         }
         if(this.autoLoad && param1.status == LoaderStatus.READY)
         {
            if(_status != LoaderStatus.LOADING)
            {
               this.load(false);
            }
            else
            {
               this._loadNext(null);
            }
         }
         return param1;
      }
      
      public final function remove(param1:LoaderCore) : void
      {
         this._removeLoader(param1,true);
      }
      
      protected final function _removeLoader(param1:LoaderCore, param2:Boolean) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param2 && this != param1.rootLoader)
         {
            param1.rootLoader.append(param1);
         }
         this._removeLoaderListeners(param1,true);
         this._loaders.splice(this.getChildIndex(param1),1);
         if(param1 in this._activeLoaders)
         {
            delete this._activeLoaders[param1];
            param1.cancel();
            if(_status == LoaderStatus.LOADING)
            {
               this._loadNext(null);
            }
         }
         _cacheIsDirty = true;
         this._progressHandler(null);
      }
      
      public final function empty(param1:Boolean = true, param2:Boolean = false) : void
      {
         var _loc3_:int = this._loaders.length;
         while(--_loc3_ > -1)
         {
            if(param1)
            {
               LoaderCore(this._loaders[_loc3_]).dispose(param2);
            }
            else if(param2)
            {
               LoaderCore(this._loaders[_loc3_]).unload();
            }
            else
            {
               this._removeLoader(this._loaders[_loc3_],true);
            }
         }
      }
      
      override protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         var _loc4_:int = 0;
         if(param2 == LoaderStatus.DISPOSED)
         {
            _status = LoaderStatus.DISPOSED;
            this.empty(true,Boolean(param1 == 3));
            if(this.vars.requireWithRoot is DisplayObject)
            {
               delete _rootLookup[this.vars.requireWithRoot];
            }
            this._activeLoaders = null;
         }
         if(param1 <= 1)
         {
            this._cancelActiveLoaders();
         }
         if(param1 == 1)
         {
            _loc4_ = this._loaders.length;
            while(--_loc4_ > -1)
            {
               LoaderCore(this._loaders[_loc4_]).unload();
            }
         }
         super._dump(param1,param2,param3);
         _cacheIsDirty = true;
      }
      
      override protected function _calculateProgress() : void
      {
         var _loc2_:LoaderCore = null;
         var _loc3_:int = 0;
         _cachedBytesLoaded = 0;
         _cachedBytesTotal = 0;
         var _loc1_:int = this._loaders.length;
         while(--_loc1_ > -1)
         {
            _loc2_ = this._loaders[_loc1_];
            _loc3_ = _loc2_.status;
            if(_loc3_ <= LoaderStatus.COMPLETED || !this.skipPaused && _loc3_ == LoaderStatus.PAUSED || !this.skipFailed && _loc3_ == LoaderStatus.FAILED)
            {
               _cachedBytesLoaded = _cachedBytesLoaded + _loc2_.bytesLoaded;
               _cachedBytesTotal = _cachedBytesTotal + _loc2_.bytesTotal;
            }
         }
         _cacheIsDirty = false;
      }
      
      protected final function _cancelActiveLoaders() : void
      {
         var _loc2_:LoaderCore = null;
         var _loc1_:int = this._loaders.length;
         while(--_loc1_ > -1)
         {
            _loc2_ = this._loaders[_loc1_];
            if(_loc2_.status == LoaderStatus.LOADING)
            {
               delete this._activeLoaders[_loc2_];
               this._removeLoaderListeners(_loc2_,false);
               _loc2_.cancel();
            }
         }
      }
      
      protected final function _removeLoaderListeners(param1:LoaderCore, param2:Boolean) : void
      {
         var _loc3_:* = null;
         param1.removeEventListener(LoaderEvent.COMPLETE,this._loadNext);
         param1.removeEventListener(LoaderEvent.CANCEL,this._loadNext);
         if(param2)
         {
            param1.removeEventListener(LoaderEvent.PROGRESS,this._progressHandler);
            param1.removeEventListener("prioritize",this._prioritizeHandler);
            param1.removeEventListener("dispose",this._disposeHandler);
            for(_loc3_ in _listenerTypes)
            {
               if(_loc3_ != "onProgress" && _loc3_ != "onInit")
               {
                  param1.removeEventListener(_listenerTypes[_loc3_],_passThroughEvent);
               }
            }
         }
      }
      
      public final function getChildrenByStatus(param1:int, param2:Boolean = false) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:Array = this.getChildren(param2,false);
         var _loc5_:int = _loc4_.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if(LoaderCore(_loc4_[_loc6_]).status == param1)
            {
               _loc3_.push(_loc4_[_loc6_]);
            }
            _loc6_++;
         }
         return _loc3_;
      }
      
      public final function getChildAt(param1:int) : *
      {
         return this._loaders[param1];
      }
      
      public final function getChildren(param1:Boolean = false, param2:Boolean = false) : Array
      {
         var _loc3_:Array = [];
         var _loc4_:int = this._loaders.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(!param2 || !(this._loaders[_loc5_] is LoaderMax))
            {
               _loc3_.push(this._loaders[_loc5_]);
            }
            if(param1 && this._loaders[_loc5_].hasOwnProperty("getChildren"))
            {
               _loc3_ = _loc3_.concat(this._loaders[_loc5_].getChildren(true,param2));
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public final function prependURLs(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Array = this.getChildren(param2,true);
         var _loc4_:int = _loc3_.length;
         while(--_loc4_ > -1)
         {
            LoaderItem(_loc3_[_loc4_]).url = param1 + LoaderItem(_loc3_[_loc4_]).url;
         }
      }
      
      public final function replaceURLText(param1:String, param2:String, param3:Boolean = false) : void
      {
         var _loc5_:LoaderItem = null;
         var _loc4_:Array = this.getChildren(param3,true);
         var _loc6_:int = _loc4_.length;
         while(--_loc6_ > -1)
         {
            _loc5_ = _loc4_[_loc6_];
            _loc5_.url = _loc5_.url.split(param1).join(param2);
            if("alternateURL" in _loc5_.vars)
            {
               _loc5_.vars.alternateURL = _loc5_.vars.alternateURL.split(param1).join(param2);
            }
         }
      }
      
      public final function getLoader(param1:String) : *
      {
         var _loc3_:LoaderCore = null;
         var _loc2_:int = this._loaders.length;
         while(--_loc2_ > -1)
         {
            _loc3_ = this._loaders[_loc2_];
            if(_loc3_.name == param1 || _loc3_ is LoaderItem && (_loc3_ as LoaderItem).url == param1)
            {
               return _loc3_;
            }
            if(_loc3_.hasOwnProperty("getLoader"))
            {
               _loc3_ = (_loc3_ as Object).getLoader(param1) as LoaderCore;
               if(_loc3_ != null)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      public final function getContent(param1:String) : *
      {
         var _loc2_:LoaderCore = this.getLoader(param1);
         return _loc2_ != null?_loc2_.content:null;
      }
      
      public final function getChildIndex(param1:LoaderCore) : uint
      {
         var _loc2_:int = this._loaders.length;
         while(--_loc2_ > -1)
         {
            if(this._loaders[_loc2_] == param1)
            {
               return _loc2_;
            }
         }
         return 999999999;
      }
      
      override public function auditSize() : void
      {
         if(!this.auditedSize)
         {
            this._auditSize(null);
         }
      }
      
      protected final function _auditSize(param1:Event = null) : void
      {
         var _loc4_:LoaderCore = null;
         var _loc5_:Boolean = false;
         if(param1 != null)
         {
            param1.target.removeEventListener("auditedSize",this._auditSize);
            param1.target.removeEventListener(LoaderEvent.FAIL,this._auditSize);
         }
         var _loc2_:uint = this._loaders.length;
         var _loc3_:int = !!this.skipPaused?int(LoaderStatus.COMPLETED):int(LoaderStatus.PAUSED);
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc4_ = this._loaders[_loc6_];
            if(!_loc4_.auditedSize && _loc4_.status <= _loc3_)
            {
               if(!_loc5_)
               {
                  _loc4_.addEventListener("auditedSize",this._auditSize,false,-100,true);
                  _loc4_.addEventListener(LoaderEvent.FAIL,this._auditSize,false,-100,true);
               }
               _loc5_ = true;
               _loc4_.auditSize();
            }
            _loc6_++;
         }
         if(!_loc5_)
         {
            if(_status == LoaderStatus.LOADING)
            {
               this._loadNext(null);
            }
            dispatchEvent(new Event("auditedSize"));
         }
      }
      
      protected final function _loadNext(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:LoaderCore = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         if(param1 != null && this._activeLoaders != null)
         {
            delete this._activeLoaders[param1.target];
            this._removeLoaderListeners(LoaderCore(param1.target),false);
         }
         if(_status == LoaderStatus.LOADING)
         {
            _loc2_ = "auditSize" in this.vars?Boolean(Boolean(this.vars.auditSize)):Boolean(LoaderMax.defaultAuditSize);
            if(_loc2_ && !this.auditedSize)
            {
               this._auditSize(null);
               return;
            }
            _loc4_ = this._loaders.concat();
            _loc5_ = _loc4_.length;
            _loc6_ = 0;
            this._calculateProgress();
            _loc7_ = 0;
            while(true)
            {
               if(_loc7_ < _loc5_)
               {
                  _loc3_ = _loc4_[_loc7_];
                  if(!this.skipPaused && _loc3_.status == LoaderStatus.PAUSED)
                  {
                     break;
                  }
                  if(!this.skipFailed && _loc3_.status == LoaderStatus.FAILED)
                  {
                     super._failHandler(new LoaderEvent(LoaderEvent.FAIL,this,"Did not complete LoaderMax because skipFailed was false and " + _loc3_.toString() + " failed."),false);
                     return;
                  }
                  if(_loc3_.status <= LoaderStatus.LOADING)
                  {
                     _loc6_++;
                     if(!(_loc3_ in this._activeLoaders))
                     {
                        this._activeLoaders[_loc3_] = true;
                        _loc3_.addEventListener(LoaderEvent.COMPLETE,this._loadNext,false,-100,true);
                        _loc3_.addEventListener(LoaderEvent.CANCEL,this._loadNext,false,-100,true);
                        _loc3_.load(false);
                     }
                     if(_loc6_ == this.maxConnections)
                     {
                     }
                  }
                  _loc7_++;
                  continue;
               }
               if(_loc6_ == 0 && _cachedBytesLoaded == _cachedBytesTotal)
               {
                  _completeHandler(null);
               }
            }
            super._failHandler(new LoaderEvent(LoaderEvent.FAIL,this,"Did not complete LoaderMax because skipPaused was false and " + _loc3_.toString() + " was paused."),false);
            return;
         }
      }
      
      override protected function _progressHandler(param1:Event) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         if(_dispatchChildProgress && param1 != null)
         {
            dispatchEvent(new LoaderEvent(LoaderEvent.CHILD_PROGRESS,param1.target));
         }
         if(_dispatchProgress && _status != LoaderStatus.DISPOSED)
         {
            _loc2_ = _cachedBytesLoaded;
            _loc3_ = _cachedBytesTotal;
            this._calculateProgress();
            if(!(_loc2_ == 0 && _cachedBytesLoaded == 0))
            {
               if((_cachedBytesLoaded != _cachedBytesTotal || _status != LoaderStatus.LOADING) && (_loc2_ != _cachedBytesLoaded || _loc3_ != _cachedBytesTotal))
               {
                  dispatchEvent(new LoaderEvent(LoaderEvent.PROGRESS,this));
               }
            }
         }
         else
         {
            _cacheIsDirty = true;
         }
      }
      
      protected final function _disposeHandler(param1:Event) : void
      {
         this._removeLoader(LoaderCore(param1.target),false);
      }
      
      protected final function _prioritizeHandler(param1:Event) : void
      {
         var _loc3_:uint = 0;
         var _loc2_:LoaderCore = param1.target as LoaderCore;
         this._loaders.splice(this.getChildIndex(_loc2_),1);
         this._loaders.unshift(_loc2_);
         if(_status == LoaderStatus.LOADING && _loc2_.status <= LoaderStatus.LOADING && !(_loc2_ in this._activeLoaders))
         {
            this._cancelActiveLoaders();
            _loc3_ = this.maxConnections;
            this.maxConnections = 1;
            this._loadNext(null);
            this.maxConnections = _loc3_;
         }
      }
      
      public function get numChildren() : uint
      {
         return this._loaders.length;
      }
      
      override public function get content() : *
      {
         var _loc1_:Array = [];
         var _loc2_:int = this._loaders.length;
         while(--_loc2_ > -1)
         {
            _loc1_[_loc2_] = LoaderCore(this._loaders[_loc2_]).content;
         }
         return _loc1_;
      }
      
      override public function get status() : int
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         if(_status == LoaderStatus.COMPLETED)
         {
            _loc1_ = [0,0,0,0,0,0];
            _loc2_ = this._loaders.length;
            while(--_loc2_ > -1)
            {
               _loc1_[LoaderCore(this._loaders[_loc2_]).status]++;
            }
            if(!this.skipFailed && _loc1_[4] != 0 || !this.skipPaused && _loc1_[3] != 0)
            {
               _status = LoaderStatus.FAILED;
            }
            else if(_loc1_[0] + _loc1_[1] != 0)
            {
               _status = LoaderStatus.READY;
               _cacheIsDirty = true;
            }
         }
         return _status;
      }
      
      override public function get auditedSize() : Boolean
      {
         var _loc1_:int = !!this.skipPaused?int(LoaderStatus.COMPLETED):int(LoaderStatus.PAUSED);
         var _loc2_:int = this._loaders.length;
         while(--_loc2_ > -1)
         {
            if(!LoaderCore(this._loaders[_loc2_]).auditedSize && LoaderCore(this._loaders[_loc2_]).status <= _loc1_)
            {
               return false;
            }
         }
         return true;
      }
      
      public function get rawProgress() : Number
      {
         var _loc3_:int = 0;
         var _loc1_:Number = 0;
         var _loc2_:uint = 0;
         var _loc4_:int = this._loaders.length;
         while(--_loc4_ > -1)
         {
            _loc3_ = LoaderCore(this._loaders[_loc4_]).status;
            if(_loc3_ != LoaderStatus.DISPOSED && !(_loc3_ == LoaderStatus.PAUSED && this.skipPaused) && !(_loc3_ == LoaderStatus.FAILED && this.skipFailed))
            {
               _loc2_++;
               _loc1_ = _loc1_ + (this._loaders[_loc4_] is LoaderMax?LoaderMax(this._loaders[_loc4_]).rawProgress:LoaderCore(this._loaders[_loc4_]).progress);
            }
         }
         return _loc2_ == 0?Number(0):Number(_loc1_ / _loc2_);
      }
   }
}
