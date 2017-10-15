package com.bigpoint.seafight.view.common.components
{
   import com.adobe.utils.IntUtil;
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_1371;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.common.components.shipcoverflow.components.ShipCoverFlowItem;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenSpyWindow;
   import com.greensock.TweenLite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_11.class_130;
   import package_14.class_47;
   import package_14.class_51;
   import package_170.class_979;
   import package_23.class_42;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1224;
   import package_47.class_935;
   import package_54.class_1089;
   import package_69.class_978;
   import package_72.class_203;
   import package_8.class_1079;
   import package_89.class_1011;
   import package_9.class_91;
   import package_91.class_1246;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.events.IndexChangeEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   public final class PlayerGuildWindow extends ResizableTitleWindow
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      [SkinPart(required="false")]
      public var navigationbar:Group;
      
      [SkinPart(required="false")]
      public var helpButton:DynamicImageButton;
      
      [SkinPart(required="false")]
      public var infoButton:DynamicImageButton;
      
      public function PlayerGuildWindow()
      {
         super();
         mx_internal::_document = this;
         this.title = "";
         this.mouseEnabled = false;
         this.addEventListener("close",this.___PlayerGuildWindow_ResizableTitleWindow1_close);
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
         if(param2 == this.helpButton)
         {
            this.helpButton.addEventListener(MouseEvent.MOUSE_DOWN,this.onHelpButtonPress);
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         if(param2 == this.helpButton)
         {
            this.helpButton.removeEventListener(MouseEvent.MOUSE_DOWN,this.onHelpButtonPress);
         }
         super.partRemoved(param1,param2);
      }
      
      protected final function onHelpButtonPress(param1:MouseEvent) : void
      {
         dispatchEvent(new class_979(class_979.const_5));
      }
      
      public final function ___PlayerGuildWindow_ResizableTitleWindow1_close(param1:CloseEvent) : void
      {
         closeMenu(param1);
      }
   }
}
