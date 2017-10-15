package com.bigpoint.seafight.view.popups.guildmenu.player.controllers
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.DynamicTabNavigator;
   import com.bigpoint.seafight.view.common.components.PlayerGuildWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuCurrencyController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.PlayerGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.PlayerGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPresetsVo;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindowAnnouncementsTab;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindowIslandsTab;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindowMembersTab;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindowOverviewTab;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindowTreasuryTab;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import package_14.class_47;
   import package_171.class_1275;
   import package_205.class_1353;
   import package_208.class_1361;
   import package_26.class_1354;
   import package_41.class_84;
   import package_51.class_1355;
   import package_69.class_978;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public final class PlayerGuildWindowNaviController extends WindowController implements IWindowController
   {
      
      public static const TAB_OVERVIEW:int = 0;
      
      public static const TAB_ANNOUNCEMENTS:int = 1;
      
      public static const TAB_MEMBERS:int = 2;
      
      public static const TAB_ISLANDS:int = 3;
      
      public static const TAB_TREASURY:int = 4;
      
      private static const TAB_NAMES:Vector.<String> = new <String>[class_47.method_22.method_20("overview"),class_47.method_22.method_20("announcements"),class_47.method_22.method_20("members"),class_47.method_22.method_20("guildislands"),class_47.method_22.method_20("treasury")];
       
      
      private var _proxy:class_1361;
      
      private var _popupVo:PlayerGuildWindowNaviPopupVo;
      
      private var _navigator:DynamicTabNavigator;
      
      private var _subWindowController:class_1353;
      
      private var _guildMenuCurrencyController:GuildMenuCurrencyController;
      
      private var _currentTab:int;
      
      public function PlayerGuildWindowNaviController(param1:String, param2:Object)
      {
         super(param1,param2);
         this._currentTab = -1;
         this._proxy = new class_1361();
         this._proxy.addEventListener(class_978.const_4,this.onServerUpdateReceived);
         this._guildMenuCurrencyController = new GuildMenuCurrencyController();
         this._subWindowController = new class_1353(this.component.content,class_1355.const_244);
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
         this._proxy.name_16();
         this._guildMenuCurrencyController.init(this.component.vanity.currencyList);
      }
      
      private final function onServerUpdateReceived(param1:Event) : void
      {
         if(this._proxy.method_148())
         {
            this.generateData();
         }
         else
         {
            this.window.closeMenu();
         }
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
               StatelessCMD.invoke(CmdSL_OpenPlayerGuildWindowOverviewTab);
               break;
            case TAB_ANNOUNCEMENTS:
               StatelessCMD.invoke(CmdSL_OpenPlayerGuildWindowAnnouncementsTab);
               break;
            case TAB_MEMBERS:
               StatelessCMD.invoke(CmdSL_OpenPlayerGuildWindowMembersTab);
               break;
            case TAB_ISLANDS:
               StatelessCMD.invoke(CmdSL_OpenPlayerGuildWindowIslandsTab);
               break;
            case TAB_TREASURY:
               StatelessCMD.invoke(CmdSL_OpenPlayerGuildWindowTreasuryTab);
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
         _loc1_.push(this.createTabVo(TAB_ANNOUNCEMENTS));
         _loc1_.push(this.createTabVo(TAB_MEMBERS));
         _loc1_.push(this.createTabVo(TAB_ISLANDS));
         _loc1_.push(this.createTabVo(TAB_TREASURY));
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
      
      public function get component() : PlayerGuildWindowNaviPopup
      {
         return super.viewComponent as PlayerGuildWindowNaviPopup;
      }
      
      public function get window() : PlayerGuildWindow
      {
         return this.component.owner as PlayerGuildWindow;
      }
      
      public function get windowSkin() : BasicResizableWindowSkin
      {
         return this.window.skin as BasicResizableWindowSkin;
      }
      
      override public function shutdown() : void
      {
         super.shutdown();
         this.component.removeEventListener(Event.CLOSE,this.shutdown);
         this._guildMenuCurrencyController.destroy();
         this._proxy.removeEventListener(class_978.const_4,this.onServerUpdateReceived);
         this._navigator.removeEventListener(FlexEvent.CHANGING,this.navigate);
         this._proxy.method_36();
         this._subWindowController.removeEventListener(class_1354.const_34,this.onWindowTabChangeEvent);
         this._subWindowController.method_119();
         this._subWindowController = null;
      }
      
      public function set data(param1:ContentVo) : void
      {
         this._popupVo = param1 as PlayerGuildWindowNaviPopupVo;
      }
   }
}
