package com.bigpoint.seafight.view.common.components
{
   import com.adobe.serialization.json.JSONEncoder;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.shipcoverflow.components.ShipCoverFlowItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.TowerListItem;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardSubListItem;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.CloseEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_877;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_121.class_841;
   import package_136.class_926;
   import package_14.class_47;
   import package_14.class_88;
   import package_170.class_979;
   import package_171.class_1059;
   import package_171.class_981;
   import package_190.class_1562;
   import package_213.class_1522;
   import package_220.class_1601;
   import package_30.class_62;
   import package_41.class_89;
   import package_48.class_996;
   import package_6.class_14;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   public final class LeagueWindow extends ResizableTitleWindow
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      [SkinPart(required="false")]
      public var navigationbar:Group;
      
      [SkinPart(required="false")]
      public var helpButton:DynamicImageButton;
      
      [SkinPart(required="false")]
      public var infoButton:DynamicImageButton;
      
      [SkinPart(required="false")]
      public var refreshButton:DynamicImageButton;
      
      public function LeagueWindow()
      {
         super();
         mx_internal::_document = this;
         this.title = "";
         this.mouseEnabled = false;
         this.addEventListener("close",this.___LeagueWindow_ResizableTitleWindow1_close);
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
         else if(param2 == this.refreshButton)
         {
            this.refreshButton.addEventListener(MouseEvent.MOUSE_DOWN,this.onRefreshButtonPress);
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         if(param2 == this.helpButton)
         {
            this.helpButton.removeEventListener(MouseEvent.MOUSE_DOWN,this.onHelpButtonPress);
         }
         else if(param2 == this.refreshButton)
         {
            this.refreshButton.removeEventListener(MouseEvent.MOUSE_DOWN,this.onRefreshButtonPress);
         }
         super.partRemoved(param1,param2);
      }
      
      protected final function onRefreshButtonPress(param1:MouseEvent) : void
      {
         dispatchEvent(new class_979(class_979.const_24));
      }
      
      protected final function onHelpButtonPress(param1:MouseEvent) : void
      {
         dispatchEvent(new class_979(class_979.const_5));
      }
      
      public final function ___LeagueWindow_ResizableTitleWindow1_close(param1:CloseEvent) : void
      {
         closeMenu(param1);
      }
   }
}
