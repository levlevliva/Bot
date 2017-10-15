package com.bigpoint.seafight.view.common.components
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.presets.PresetComboBoxData;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.IFlexModuleFactory;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ResizeEvent;
   import package_104.class_448;
   import package_104.class_989;
   import package_121.class_841;
   import package_123.class_837;
   import package_14.class_1002;
   import package_14.class_1126;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_15.class_48;
   import package_153.class_931;
   import package_160.class_1553;
   import package_160.class_795;
   import package_17.class_54;
   import package_17.class_990;
   import package_170.class_979;
   import package_26.class_52;
   import package_29.class_565;
   import package_3.class_26;
   import package_30.class_1013;
   import package_34.class_1272;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_129;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_54.class_319;
   import package_6.class_14;
   import package_9.class_120;
   import package_9.class_76;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.effects.animation.MotionPath;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public class ResizeableExtendedWindow extends ResizableTitleWindow
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      [SkinPart(required="false")]
      public var helpButton:DynamicImageButton;
      
      [SkinPart(required="false")]
      public var refreshButton:DynamicImageButton;
      
      [SkinPart(required="false")]
      public var infoButton:DynamicImageButton;
      
      public var helpButton_visible:Boolean = true;
      
      public var refreshButton_visible:Boolean = true;
      
      public var infoButton_visible:Boolean = true;
      
      public var closeButton_visible:Boolean = true;
      
      private var delayTween:TweenMax;
      
      public function ResizeableExtendedWindow()
      {
         super();
         mx_internal::_document = this;
         this.title = "";
         this.mouseEnabled = false;
         this.addEventListener("close",this.___ResizeableExtendedWindow_ResizableTitleWindow1_close);
         this.addEventListener("resize",this.___ResizeableExtendedWindow_ResizableTitleWindow1_resize);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.skinClass = BasicResizableWindowSkin;
            this.borderAlpha = 1;
            this.backgroundColor = 0;
            this.borderColor = 9404775;
            this.backgroundAlpha = 0.7;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         var _loc3_:class_87 = class_47.method_22;
         if(param2 == this.helpButton)
         {
            this.helpButton.addEventListener(MouseEvent.MOUSE_DOWN,this.helpButtonHandler);
            this.helpButton.toolTip = _loc3_.method_20("help");
         }
         if(param2 == this.refreshButton)
         {
            this.refreshButton.addEventListener(MouseEvent.MOUSE_DOWN,this.refreshHandler);
            this.refreshButton.toolTip = _loc3_.method_20("questRefreshButton");
         }
         if(param2 == this.infoButton)
         {
            this.infoButton.addEventListener(MouseEvent.MOUSE_DOWN,this.questInfoHandler);
            this.infoButton.toolTip = _loc3_.method_20("questtracker");
         }
         if(param2 == closeButton)
         {
            closeButton.visible = this.closeButton_visible;
            closeButton.toolTip = _loc3_.method_20("close");
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         if(param2 == this.helpButton)
         {
            this.helpButton.removeEventListener(MouseEvent.MOUSE_DOWN,this.helpButtonHandler);
         }
         if(param2 == this.refreshButton)
         {
            this.refreshButton.removeEventListener(MouseEvent.MOUSE_DOWN,this.refreshHandler);
         }
         if(param2 == this.infoButton)
         {
            this.infoButton.removeEventListener(MouseEvent.MOUSE_DOWN,this.questInfoHandler);
         }
         super.partRemoved(param1,param2);
      }
      
      protected final function helpButtonHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new class_979(class_979.const_5));
      }
      
      protected final function questInfoHandler(param1:MouseEvent) : void
      {
         dispatchEvent(new class_979(class_979.const_676));
      }
      
      protected final function refreshHandler(param1:MouseEvent) : void
      {
         if(null == this.delayTween)
         {
            this.delayTween = TweenMax.delayedCall(0.7,this.delayedSubmission);
         }
      }
      
      protected final function delayedSubmission() : void
      {
         dispatchEvent(new class_979(class_979.const_24));
         this.delayTween = null;
      }
      
      public final function triggerResize(param1:ResizeEvent = null) : void
      {
      }
      
      public final function ___ResizeableExtendedWindow_ResizableTitleWindow1_close(param1:CloseEvent) : void
      {
         closeMenu(param1);
      }
      
      public final function ___ResizeableExtendedWindow_ResizableTitleWindow1_resize(param1:ResizeEvent) : void
      {
         this.triggerResize(param1);
      }
   }
}
