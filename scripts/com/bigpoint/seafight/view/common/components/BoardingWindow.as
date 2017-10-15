package com.bigpoint.seafight.view.common.components
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.gem.DefaultGem_VO;
   import com.bigpoint.seafight.model.inventory.vo.gem.Gem_VO;
   import com.bigpoint.seafight.model.vo.class_1261;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_82;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.BoardingInfoTooltipListItem;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderCheckBoxRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.island.common.SimpleHitpointsBarDisplay;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildCurrencyVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.target;
   import com.bigpoint.seafight.view.popups.messageuserpopup.MessageUserPopupController;
   import com.bigpoint.seafight.view.popups.messageuserpopup.component.MessageUserPopup;
   import com.bigpoint.seafight.view.popups.messageuserpopup.vo.MessageUserPopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleWindowSkin;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.filters.BevelFilter;
   import flash.filters.GlowFilter;
   import flash.filters.GradientBevelFilter;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequestMethod;
   import flash.text.AntiAliasType;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.states.AddItems;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.GuildIslandType;
   import package_11.class_130;
   import package_112.class_395;
   import package_112.class_622;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_96;
   import package_15.class_48;
   import package_170.class_979;
   import package_28.class_56;
   import package_37.class_75;
   import package_40.class_85;
   import package_41.class_103;
   import package_45.class_110;
   import package_47.class_757;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_43;
   import package_51.class_974;
   import package_6.class_14;
   import package_7.class_74;
   import package_71.class_201;
   import package_72.class_1442;
   import package_89.class_1378;
   import package_92.class_336;
   import package_92.class_944;
   import package_98.class_777;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   use namespace mx_internal;
   
   public final class BoardingWindow extends ResizableTitleWindow
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      [SkinPart(required="false")]
      public var navigationbar:Group;
      
      [SkinPart(required="false")]
      public var helpButton:DynamicImageButton;
      
      [SkinPart(required="false")]
      public var infoButton:DynamicImageButton;
      
      public function BoardingWindow()
      {
         super();
         mx_internal::_document = this;
         this.title = "";
         this.mouseEnabled = false;
         this.addEventListener("close",this.___BoardingWindow_ResizableTitleWindow1_close);
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
      
      public final function ___BoardingWindow_ResizableTitleWindow1_close(param1:CloseEvent) : void
      {
         closeMenu(param1);
      }
   }
}
