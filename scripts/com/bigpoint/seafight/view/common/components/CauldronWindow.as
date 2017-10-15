package com.bigpoint.seafight.view.common.components
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_713;
   import package_104.class_641;
   import package_127.class_870;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_143.class_542;
   import package_16.class_28;
   import package_170.class_979;
   import package_22.class_423;
   import package_22.class_655;
   import package_220.class_1601;
   import package_34.class_107;
   import package_41.class_89;
   import package_5.class_123;
   import package_5.class_43;
   import package_53.class_1100;
   import package_54.class_163;
   import package_54.class_319;
   import package_6.class_14;
   import package_65.class_1046;
   import package_72.class_203;
   import package_92.class_336;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public final class CauldronWindow extends ResizableTitleWindow
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      [SkinPart(required="false")]
      public var helpButton:DynamicImageButton;
      
      [SkinPart(required="false")]
      public var infoButton:DynamicImageButton;
      
      [SkinPart(required="false")]
      public var refreshButton:DynamicImageButton;
      
      public function CauldronWindow()
      {
         super();
         mx_internal::_document = this;
         this.title = "";
         this.mouseEnabled = false;
         this.addEventListener("close",this.___CauldronWindow_ResizableTitleWindow1_close);
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
         if(param2 == this.helpButton)
         {
            this.helpButton.addEventListener(MouseEvent.MOUSE_DOWN,this.onHelpButtonPress);
         }
         else if(param2 == this.infoButton)
         {
            this.infoButton.visible = false;
         }
         else if(param2 == this.refreshButton)
         {
            this.refreshButton.visible = false;
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
      
      public final function ___CauldronWindow_ResizableTitleWindow1_close(param1:CloseEvent) : void
      {
         closeMenu(param1);
      }
   }
}
