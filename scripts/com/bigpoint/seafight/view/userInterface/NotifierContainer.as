package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.BriskImg;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.greensock.TweenMax;
   import com.greensock.easing.Quad;
   import flash.display.BlendMode;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.DropShadowFilter;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import package_108.class_596;
   import package_108.class_755;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_94;
   import package_26.class_52;
   import package_41.class_84;
   import package_5.class_123;
   import package_50.complete;
   import package_50.duration;
   import package_50.elapse;
   import package_50.intensity;
   import package_50.irender;
   import package_50.layer;
   import package_50.mrender;
   import package_50.scale;
   import package_50.shake;
   import package_50.timer;
   import package_6.class_14;
   import package_69.class_978;
   import package_9.class_91;
   import package_92.class_995;
   import package_92.class_997;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   
   public final class NotifierContainer extends Group
   {
       
      
      private var _1884123887_notifierHolder:UIComponent;
      
      private var _80148248general:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _resourceManager:class_87;
      
      private var _configXML:XML;
      
      private var _ui:UserInterface;
      
      private var _notifierPopUpArr:Array;
      
      private var _styleSheet:StyleSheet;
      
      private var _instanceNotifier:TextField;
      
      private var _instanceNotifierMode:TextField;
      
      public function NotifierContainer()
      {
         this._resourceManager = class_47.method_22;
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._NotifierContainer_UIComponent1_i(),this._NotifierContainer_Group2_i()];
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public final function init(param1:UserInterface) : void
      {
         this._ui = param1;
         this.mouseChildren = false;
         this.mouseEnabled = false;
         this._configXML = this._ui.getUIConfig().notifierContainer[0];
         this._styleSheet = this._ui.getStyleSheet();
         this._notifierPopUpArr = new Array();
         this._notifierHolder.mouseEnabled = false;
         this._notifierHolder.mouseChildren = false;
         class_47.method_51.addEventListener(class_52.const_94,this.setInstanceNotifier);
      }
      
      public final function setInstanceNotifier(param1:class_52) : void
      {
         var _loc2_:Object = null;
         this.rePosition();
         _loc2_ = this._styleSheet.getStyle(this._configXML.instanceNotifier[0].@styleMap);
         var _loc3_:Object = this._styleSheet.getStyle(this._configXML.instanceNotifier[0].@styleMode);
         if(this._instanceNotifier != null)
         {
            TweenMax.killTweensOf(this._notifierHolder);
            TweenMax.killTweensOf(this._instanceNotifier);
            TweenMax.killTweensOf(this._instanceNotifierMode);
            this._instanceNotifier.visible = true;
            this._instanceNotifier.htmlText = this._resourceManager.method_28(this._configXML.instanceNotifier[0].@resKey) + decodeURIComponent(class_47.method_51.method_699());
            this._instanceNotifier.x = -this._instanceNotifier.width * 0.5;
            this._instanceNotifierMode.visible = true;
            this._instanceNotifierMode.htmlText = this._resourceManager.method_28(this._configXML.instanceNotifier[0].@resKey + this.checkMode());
            this._instanceNotifierMode.x = -this._instanceNotifierMode.width / 2;
         }
         else
         {
            this._instanceNotifier = new TextField();
            this._instanceNotifier.width = class_51.var_39;
            this._instanceNotifier.height = class_51.var_40 / 4;
            this._instanceNotifier.multiline = _loc2_["multiline"] == "true";
            this._instanceNotifier.selectable = _loc2_["selectable"] == "true";
            this._instanceNotifier.mouseEnabled = false;
            this._instanceNotifier.border = false;
            this._instanceNotifier.background = _loc2_["background"] == "true";
            this._instanceNotifier.visible = true;
            this._instanceNotifier.defaultTextFormat = this._styleSheet.transform(_loc2_);
            this._instanceNotifier.htmlText = this._resourceManager.method_28(this._configXML.instanceNotifier[0].@resKey) + decodeURIComponent(class_47.method_51.method_699());
            this._instanceNotifier.x = -this._instanceNotifier.width * 0.5;
            this._instanceNotifier.y = -this._instanceNotifier.height * 0.5;
            this._instanceNotifierMode = new TextField();
            this._instanceNotifierMode.autoSize = _loc3_["autoSize"];
            this._instanceNotifierMode.multiline = _loc3_["multiline"] == "true";
            this._instanceNotifierMode.selectable = _loc3_["selectable"] == "true";
            this._instanceNotifierMode.mouseEnabled = false;
            this._instanceNotifierMode.border = false;
            this._instanceNotifierMode.background = _loc3_["background"] == "true";
            this._instanceNotifierMode.visible = true;
            this._instanceNotifierMode.defaultTextFormat = this._styleSheet.transform(_loc3_);
            this._instanceNotifierMode.htmlText = this._resourceManager.method_28(this._configXML.instanceNotifier[0].@resKey + this.checkMode());
            this._instanceNotifierMode.x = -this._instanceNotifierMode.width * 0.5;
            this._instanceNotifierMode.y = -this._instanceNotifierMode.height * 0.25;
            this.center();
            this._notifierHolder.addChild(this._instanceNotifier);
            this._notifierHolder.addChild(this._instanceNotifierMode);
            this._notifierHolder.filters = [new DropShadowFilter(3,45,0,0.6,6,6,2,3)];
         }
         this._notifierHolder.alpha = 0;
         TweenMax.to(this._notifierHolder,2,{
            "ease":Quad.easeOut,
            "delay":1,
            "alpha":1
         });
         TweenMax.from(this._instanceNotifier,2,{
            "ease":Quad.easeOut,
            "delay":1,
            "x":"-30"
         });
         TweenMax.from(this._instanceNotifierMode,2,{
            "ease":Quad.easeOut,
            "delay":1,
            "x":"30",
            "onComplete":this.handleTweenComplete
         });
      }
      
      private final function handleTweenComplete() : void
      {
         TweenMax.to(this._notifierHolder,1,{
            "ease":Quad.easeIn,
            "delay":3,
            "alpha":0
         });
         TweenMax.to(this._instanceNotifier,1,{
            "ease":Quad.easeIn,
            "delay":3,
            "x":"30"
         });
         TweenMax.to(this._instanceNotifierMode,1,{
            "ease":Quad.easeIn,
            "delay":3,
            "x":"-30",
            "onComplete":this.removeNotifier
         });
      }
      
      private final function removeNotifier() : void
      {
         this._instanceNotifier.visible = false;
         this._instanceNotifierMode.visible = false;
      }
      
      private final function checkMode() : String
      {
         return !!class_47.method_51.method_1292()?"_pvp":"_pve";
      }
      
      public final function rePosition() : void
      {
         x = class_47.method_24.method_122.x;
         y = class_47.method_24.method_122.y;
      }
      
      public final function center() : void
      {
         if(this._notifierHolder)
         {
            this._notifierHolder.x = class_51.var_39 * 0.5;
            this._notifierHolder.y = class_51.var_40 * 0.5;
         }
      }
      
      private final function _NotifierContainer_UIComponent1_i() : UIComponent
      {
         var _loc1_:UIComponent = new UIComponent();
         _loc1_.id = "_notifierHolder";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._notifierHolder = _loc1_;
         BindingManager.executeBindings(this,"_notifierHolder",this._notifierHolder);
         return _loc1_;
      }
      
      private final function _NotifierContainer_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.id = "general";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.general = _loc1_;
         BindingManager.executeBindings(this,"general",this.general);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _notifierHolder() : UIComponent
      {
         return this._1884123887_notifierHolder;
      }
      
      public function set _notifierHolder(param1:UIComponent) : void
      {
         var _loc2_:Object = this._1884123887_notifierHolder;
         if(_loc2_ !== param1)
         {
            this._1884123887_notifierHolder = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_notifierHolder",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get general() : Group
      {
         return this._80148248general;
      }
      
      public function set general(param1:Group) : void
      {
         var _loc2_:Object = this._80148248general;
         if(_loc2_ !== param1)
         {
            this._80148248general = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"general",_loc2_,param1));
            }
         }
      }
   }
}
