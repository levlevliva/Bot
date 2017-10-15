package com.bigpoint.seafight.view.popups.currencypopup
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.tools.class_46;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.MinimizeLockWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyPopup;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildRankMemberListItem;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiButtonVO;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.ConcreteGoodTooltip;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.MysteryChestTooltip;
   import com.bigpoint.seafight.view.popups.shipequipment.skins.StatisticListSkin;
   import com.bigpoint.seafight.view.popups.shipselection.vo.SelectionVListItemGemVo;
   import com.bigpoint.seafight.view.popups.spymenu.WindowSettingsController;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.GemItemToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SmallScrollBarSkin;
   import com.greensock.TweenLite;
   import com.greensock.easing.Strong;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.UIComponent;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_100.class_729;
   import package_138.class_704;
   import package_14.class_25;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_163.class_884;
   import package_170.class_979;
   import package_20.class_33;
   import package_211.class_1369;
   import package_214.class_1604;
   import package_23.class_42;
   import package_29.class_57;
   import package_41.class_93;
   import package_49.class_137;
   import package_49.class_140;
   import package_5.class_43;
   import package_5.class_984;
   import package_52.class_309;
   import package_84.class_270;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.Scroller;
   
   public final class CurrencyWindowController extends WindowController implements IWindowController
   {
      
      public static const MINIMIZED_HEIGHT:int = 37;
      
      private static var minimized:Boolean = false;
       
      
      private var controller:CurrencyPopupController;
      
      private var settingsController:WindowSettingsController;
      
      public function CurrencyWindowController(param1:String, param2:Object)
      {
         super(param1,param2);
      }
      
      override protected function onWindowCreationComplete(param1:FlexEvent) : void
      {
         super.onWindowCreationComplete(param1);
         this.window.helpButton.visible = false;
         this.window.minimizeButton.visible = false;
         this.window.minHeight = 115;
         this.window.maxHeight = 285;
         this.window.title = class_47.method_22.method_20("metacurrency");
         this.settingsController = new WindowSettingsController(this.window,class_43.const_1152,class_43.const_1702,class_43.const_1623,class_43.const_1888);
         this.settingsController.init();
         if(!this.window.locked)
         {
            this.window.height = undefined;
         }
         this.window.visible = false;
         this.component.addEventListener(Event.COMPLETE,this.onWindowUpdateComplete);
         this.controller = new CurrencyPopupController(this.component);
         this.controller.update();
         this.window.addEventListener(class_979.const_32,this.onTitleButtonsClick);
         this.window.addEventListener(class_979.const_49,this.onTitleButtonsClick);
         if(minimized)
         {
            this.minimize(false);
            this.window.minimized = true;
         }
      }
      
      private final function onWindowUpdateComplete(param1:Event) : void
      {
         if(!this.window.locked)
         {
            class_33.name_12.method_41.method_201(this.window);
         }
         this.component.removeEventListener(Event.COMPLETE,this.onWindowUpdateComplete);
         this.window.visible = true;
      }
      
      private final function maximize(param1:Boolean) : void
      {
         var _loc2_:UIComponent = null;
         if(param1)
         {
            TweenLite.to(this.component,1,{
               "scaleX":1,
               "scaleY":1,
               "alpha":1,
               "ease":Strong.easeOut
            });
         }
         else
         {
            _loc2_ = this.component;
            _loc2_.alpha = 1;
            _loc2_.scaleX = 1;
            _loc2_.scaleY = 1;
         }
      }
      
      private final function minimize(param1:Boolean) : void
      {
         var _loc2_:UIComponent = null;
         if(param1)
         {
            TweenLite.to(this.component,1,{
               "scaleX":0,
               "scaleY":0,
               "alpha":0,
               "ease":Strong.easeOut
            });
         }
         else
         {
            _loc2_ = this.component;
            _loc2_.alpha = 0;
            _loc2_.scaleX = 0;
            _loc2_.scaleY = 0;
         }
      }
      
      private final function onTitleButtonsClick(param1:class_979) : void
      {
         switch(param1.type)
         {
            case class_979.const_32:
               break;
            case class_979.const_49:
               if(this.window.minimized)
               {
                  this.minimize(true);
               }
               else
               {
                  this.maximize(true);
               }
               minimized = this.window.minimized;
         }
      }
      
      public function get component() : CurrencyPopup
      {
         return super.viewComponent as CurrencyPopup;
      }
      
      public function get window() : MinimizeLockWindow
      {
         return this.component.owner as MinimizeLockWindow;
      }
      
      public function get windowSkin() : SimpleThinResizableWindowSkin
      {
         return this.window.skin as SimpleThinResizableWindowSkin;
      }
      
      override public function shutdown() : void
      {
         super.shutdown();
         if(this.controller)
         {
            this.controller.destroy();
         }
         if(this.settingsController)
         {
            this.settingsController.destroy();
         }
         this.window.removeEventListener(class_979.const_32,this.onTitleButtonsClick);
         this.window.removeEventListener(class_979.const_49,this.onTitleButtonsClick);
         this.component.removeEventListener(Event.COMPLETE,this.onWindowUpdateComplete);
      }
      
      public function set data(param1:ContentVo) : void
      {
      }
   }
}
