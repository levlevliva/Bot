package com.bigpoint.seafight.view.popups.mateysmenu.controllers
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.DynamicTabNavigator;
   import com.bigpoint.seafight.view.common.components.MateysWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.common.TextInputWithLabel;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InventoryDragDropController;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.GuildRelationsTableColumnHeaderRenderer;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.MateysWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.MateysWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModuleVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.ShipOverviewTab;
   import com.bigpoint.seafight.view.popups.shipequipment.tabs.ShipEquipmentPopupController;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPopupVo;
   import com.bigpoint.seafight.view.popups.teamscore.AbstractArenaPopupController;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.mateyswindow.CmdSL_OpenMateysWindowOverviewTab;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.IList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_10.class_18;
   import package_100.class_358;
   import package_104.class_362;
   import package_104.class_448;
   import package_111.class_391;
   import package_111.class_425;
   import package_14.class_1313;
   import package_14.class_200;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_143.class_542;
   import package_16.class_28;
   import package_17.class_323;
   import package_170.class_979;
   import package_171.class_1043;
   import package_171.class_1267;
   import package_171.class_1269;
   import package_171.class_1270;
   import package_171.class_1273;
   import package_171.class_1274;
   import package_171.class_1275;
   import package_171.class_1276;
   import package_20.class_33;
   import package_205.class_1353;
   import package_210.class_1364;
   import package_26.class_1354;
   import package_36.class_1417;
   import package_39.class_1366;
   import package_40.class_334;
   import package_41.class_330;
   import package_42.class_98;
   import package_51.class_1355;
   import package_6.class_14;
   import package_7.class_104;
   import package_72.class_203;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.components.gridClasses.GridColumn;
   import spark.events.IndexChangeEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   public final class MateysWindowNaviController extends WindowController implements IWindowController
   {
      
      public static const TAB_OVERVIEW:int = 0;
      
      private static const TAB_NAMES:Vector.<String> = new <String>[class_96.method_20(class_96.const_58,"title")];
       
      
      private var _popupVo:MateysWindowNaviPopupVo;
      
      private var _navigator:DynamicTabNavigator;
      
      private var _subWindowController:class_1353;
      
      private var _currentTab:int;
      
      public function MateysWindowNaviController(param1:String, param2:Object)
      {
         super(param1,param2);
         this._currentTab = -1;
         this._subWindowController = new class_1353(this.component.content,class_1355.const_1071);
         this._subWindowController.addEventListener(class_1354.const_34,this.onWindowTabChangeEvent);
         this.component.addEventListener(Event.CLOSE,this.shutdown);
      }
      
      override protected function onWindowCreationComplete(param1:FlexEvent) : void
      {
         super.onWindowCreationComplete(param1);
         var _loc2_:BasicResizableWindowSkin = this.windowSkin;
         _loc2_.refreshButton.visible = false;
         _loc2_.infoButton.visible = false;
         _loc2_.navigationbar.addElement(this._navigator = new DynamicTabNavigator(this.window));
         this._navigator.addEventListener(FlexEvent.CHANGING,this.navigate);
         this.generateData();
      }
      
      private final function onWindowTabChangeEvent(param1:class_1354) : void
      {
         this.openTab(param1.method_581());
      }
      
      private final function navigate(param1:IndexChangeEvent) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:int = this._navigator.selectedTab;
         this.openTab(_loc2_);
      }
      
      private final function openTab(param1:int) : void
      {
         switch(param1)
         {
            case TAB_OVERVIEW:
               StatelessCMD.invoke(CmdSL_OpenMateysWindowOverviewTab);
         }
         this._currentTab = param1;
         this._navigator.selectedTab = param1;
      }
      
      private final function generateData() : void
      {
         if(!this._popupVo)
         {
            return;
         }
         this.populateTabData();
      }
      
      private final function populateTabData() : void
      {
         var _loc1_:Vector.<WindowButtonBarButtonVo> = new Vector.<WindowButtonBarButtonVo>();
         _loc1_.push(this.createTabVo(TAB_OVERVIEW));
         this._navigator.data = _loc1_;
         if(this._currentTab < 0 || !this._navigator.isTabAvailable(this._currentTab))
         {
            this.openTab(this._navigator.getFirstTab());
         }
         else
         {
            this._navigator.selectedTab = this._currentTab;
            this._subWindowController.method_182();
         }
      }
      
      private final function createTabVo(param1:int, param2:String = null, param3:Boolean = true) : WindowButtonBarButtonVo
      {
         var _loc4_:WindowButtonBarButtonVo = new WindowButtonBarButtonVo();
         _loc4_.tabId = param1;
         _loc4_.name = TAB_NAMES[param1];
         _loc4_.enabled = param3;
         _loc4_.tooltip = param2;
         return _loc4_;
      }
      
      public function get component() : MateysWindowNaviPopup
      {
         return super.viewComponent as MateysWindowNaviPopup;
      }
      
      public function get window() : MateysWindow
      {
         return this.component.owner as MateysWindow;
      }
      
      public function get windowSkin() : BasicResizableWindowSkin
      {
         return this.window.skin as BasicResizableWindowSkin;
      }
      
      override public function shutdown() : void
      {
         super.shutdown();
         this.component.removeEventListener(Event.CLOSE,this.shutdown);
         this._navigator.removeEventListener(FlexEvent.CHANGING,this.navigate);
         this._subWindowController.removeEventListener(class_1354.const_34,this.onWindowTabChangeEvent);
         this._subWindowController.method_119();
         this._subWindowController = null;
      }
      
      public function set data(param1:ContentVo) : void
      {
         this._popupVo = param1 as MateysWindowNaviPopupVo;
      }
   }
}
