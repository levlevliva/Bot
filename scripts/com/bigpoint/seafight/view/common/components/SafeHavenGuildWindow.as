package com.bigpoint.seafight.view.common.components
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.GuildRankRightCheckBox;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.PlayerProfileViewVo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.IFlexModuleFactory;
   import mx.core.IUIComponent;
   import mx.events.CloseEvent;
   import package_100.class_1186;
   import package_14.class_47;
   import package_158.class_703;
   import package_165.class_1532;
   import package_170.class_979;
   import package_171.class_981;
   import package_34.class_116;
   import package_41.class_89;
   import package_41.class_93;
   import package_5.class_123;
   import package_5.class_22;
   import package_7.class_1538;
   import package_88.class_290;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   
   public final class SafeHavenGuildWindow extends ResizableTitleWindow
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      [SkinPart(required="false")]
      public var navigationbar:Group;
      
      [SkinPart(required="false")]
      public var helpButton:DynamicImageButton;
      
      [SkinPart(required="false")]
      public var infoButton:DynamicImageButton;
      
      public function SafeHavenGuildWindow()
      {
         super();
         mx_internal::_document = this;
         this.title = "";
         this.mouseEnabled = false;
         this.addEventListener("close",this.___SafeHavenGuildWindow_ResizableTitleWindow1_close);
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
      
      public final function ___SafeHavenGuildWindow_ResizableTitleWindow1_close(param1:CloseEvent) : void
      {
         closeMenu(param1);
      }
   }
}
