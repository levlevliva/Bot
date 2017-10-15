package com.bigpoint.seafight.view.popups.leaguemenu.controllers
{
   import com.bigpoint.seafight.view.common.components.DynamicTabNavigator;
   import com.bigpoint.seafight.view.common.components.LeagueWindow;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.LeagueWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import flash.events.Event;
   import mx.events.FlexEvent;
   import package_14.class_47;
   import package_20.class_33;
   import package_205.class_1353;
   import package_51.class_1355;
   import package_70.class_196;
   import package_9.class_76;
   import spark.events.IndexChangeEvent;
   
   public final class LeagueWindowNaviController extends WindowController implements IWindowController
   {
      
      private static const TAB_RANKING:int = 0;
      
      private static const TAB_REWARDS:int = 1;
      
      private static const TAB_PROMOTION:int = 2;
      
      private static const TAB_NAMES:Vector.<String> = new <String>[class_47.method_22.method_20("league"),class_47.method_22.method_20("rewards"),class_47.method_22.method_20("promotion")];
       
      
      private var _popupVo:LeagueWindowNaviPopupVo;
      
      private var _navigator:DynamicTabNavigator;
      
      private var _subWindowController:class_1353;
      
      private var _informProxy:class_196;
      
      public function LeagueWindowNaviController(param1:String, param2:Object)
      {
         super(param1,param2);
         this._subWindowController = new class_1353(this.component.content,class_1355.const_561);
         this._informProxy = class_33.name_12.method_127;
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
      
      private final function navigate(param1:IndexChangeEvent) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:int = this._navigator.selectedTab;
         this.openTab(_loc2_);
         switch(_loc2_)
         {
            case TAB_RANKING:
               break;
            case TAB_REWARDS:
               break;
            case TAB_PROMOTION:
         }
      }
      
      private final function openTab(param1:int) : void
      {
         switch(param1)
         {
            case TAB_RANKING:
               this.windowSkin.refreshButton.visible = true;
               StatelessCMD.invoke(CmdSL_OpenLeagueWindowRankingTab);
               break;
            case TAB_REWARDS:
               this.windowSkin.refreshButton.visible = false;
               StatelessCMD.invoke(CmdSL_OpenLeagueWindowRewardsTab);
               break;
            case TAB_PROMOTION:
               this.windowSkin.refreshButton.visible = false;
               StatelessCMD.invoke(CmdSL_OpenLeagueWindowAscendTab);
         }
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
         var _loc2_:Boolean = class_47.method_51.method_141(class_76.const_447);
         _loc1_.push(this.createTabVo(TAB_RANKING));
         _loc1_.push(this.createTabVo(TAB_REWARDS));
         _loc1_.push(this.createTabVo(TAB_PROMOTION,!!_loc2_?null:class_47.method_22.method_20("tooltipleaguepromotion"),_loc2_));
         this._navigator.data = _loc1_;
         this.openTab(TAB_RANKING);
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
      
      public function get component() : LeagueWindowNaviPopup
      {
         return super.viewComponent as LeagueWindowNaviPopup;
      }
      
      public function get window() : LeagueWindow
      {
         return this.component.owner as LeagueWindow;
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
         this._subWindowController.method_119();
         this._subWindowController = null;
      }
      
      public function set data(param1:ContentVo) : void
      {
         this._popupVo = param1 as LeagueWindowNaviPopupVo;
      }
   }
}
