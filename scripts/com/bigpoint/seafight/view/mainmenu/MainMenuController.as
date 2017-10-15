package com.bigpoint.seafight.view.mainmenu
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getMapFieldPoint;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.currencypopup.CurrencyPopupController;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.target;
   import com.bigpoint.seafight.view.popups.groupwindow.OpenGroupWindowCommand;
   import com.bigpoint.seafight.view.userInterface.class_112;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenCastleWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenCauldronWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenCurrencyWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenMonthlyLoginBonusWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenQuestWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenReputationWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenSpyWindow;
   import com.bigpoint.services.statelessCommands.commands.boarding.CmdSL_OpenBoardingWindow;
   import com.bigpoint.services.statelessCommands.commands.gemwindow.CmdSL_OpenGemWindow;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindow;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenSafeHavenGuildWindow;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindow;
   import com.bigpoint.services.statelessCommands.commands.mateyswindow.CmdSL_OpenMateysWindow;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.mx_internal;
   import mx.events.FlexMouseEvent;
   import mx.graphics.SolidColor;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import package_104.class_628;
   import package_104.class_641;
   import package_14.class_102;
   import package_14.class_118;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_15.class_48;
   import package_16.class_28;
   import package_18.class_30;
   import package_18.class_40;
   import package_18.class_620;
   import package_20.class_33;
   import package_22.class_36;
   import package_26.class_101;
   import package_28.class_56;
   import package_3.class_10;
   import package_34.class_107;
   import package_34.class_115;
   import package_34.class_116;
   import package_34.class_117;
   import package_36.class_100;
   import package_41.class_103;
   import package_43.class_105;
   import package_43.class_106;
   import package_45.class_110;
   import package_5.class_22;
   import package_5.class_43;
   import package_6.class_14;
   import package_7.class_1039;
   import package_7.class_104;
   import package_7.class_119;
   import package_7.class_15;
   import package_8.class_114;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   import spark.filters.DropShadowFilter;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public final class MainMenuController extends class_10
   {
       
      
      private var _view:MainMenuBar;
      
      private var _time:int;
      
      private var _buttons:Dictionary;
      
      private var _connection:class_28;
      
      private var _queryHub:class_48;
      
      private var _currencyController:CurrencyPopupController;
      
      public function MainMenuController(param1:MainMenuBar, param2:class_28, param3:class_48)
      {
         super();
         this._view = param1;
         this._view.icoGold.source = CurrencyItemRenderer.getTinyCurrencyIconPath(class_103.name_36);
         this._view.icoPearls.source = CurrencyItemRenderer.getTinyCurrencyIconPath(class_103.name_32);
         this._view.currenciesClickArea.addEventListener(MouseEvent.CLICK,this.onCurrenciesAreaClick);
         this._view.currencyButton.addEventListener(MouseEvent.CLICK,this.onCurrencyWindowButtonClick);
         this._view.currenciesList.addEventListener(FlexMouseEvent.MOUSE_DOWN_OUTSIDE,this.onMouseDownOutsideCurrenciesList);
         this._connection = param2;
         this._queryHub = param3;
         this._queryHub.var_491.addEventListener(Event.CHANGE,this.onUserCurrencyMessage);
         this._queryHub.var_987.addEventListener(Event.CHANGE,this.onMapFeaturesChangeEvent);
         this.createDropdownButtonData();
         method_23(class_15.name_3,this.onUserInitMessage);
         method_23(class_40.name_3,this.onActivateEventWindowMessage);
         method_23(class_30.name_3,this.onDeactivateEventWindowMessage);
         method_23(class_36.name_3,this.onUserLeagueIdMessage);
         method_23(class_68.name_3,this.onGuildIslandAttackNotificationMessage);
         method_23(class_104.name_3,this.onUserUpdateInformMessage);
         class_49.name_3.addEventListener(class_49.const_1107,this.onSettingsManagerInit);
      }
      
      public final function init() : void
      {
         this.initButtons();
         this.addToolTips();
         class_47.method_49.addEventListener(Event.ENTER_FRAME,this.updateMapPosition);
         CentralEventUnit.addEventListener(class_56.const_51,this.onConnectionClose);
      }
      
      private final function initButtons() : void
      {
         this._view.addEventListener(class_101.const_1259,this.onMenuButtonClick);
         this._view.safehaven.setButtonData(MainMenuButtonVo.BUTTON_NAVIGATOR,this.getSafeHavenButtonList());
         this._view.socials.setButtonData(MainMenuButtonVo.BUTTON_SOCIALS,this.getSocialsButtonList());
         this._view.event.setButtonData(MainMenuButtonVo.BUTTON_EVENTS,this.getEventButtonList());
         this._view.ship.setButtonData(MainMenuButtonVo.BUTTON_SHIP,this.getShipButtonList());
      }
      
      private final function getSafeHavenButtonList() : ArrayList
      {
         var _loc1_:ArrayList = new ArrayList();
         _loc1_.addItem(this.getButton(MainMenuButtonVo.BUTTON_LEAGUE));
         _loc1_.addItem(this.getButton(MainMenuButtonVo.BUTTON_GEMFORGE));
         _loc1_.addItem(this.getButton(MainMenuButtonVo.BUTTON_SPY));
         _loc1_.addItem(this.getButton(MainMenuButtonVo.BUTTON_CAULDRON));
         return _loc1_;
      }
      
      private final function getSocialsButtonList() : ArrayList
      {
         var _loc1_:ArrayList = new ArrayList();
         _loc1_.addItem(this.getButton(MainMenuButtonVo.BUTTON_GROUP));
         _loc1_.addItem(this.getButton(MainMenuButtonVo.BUTTON_MATEYS));
         _loc1_.addItem(this.getButton(MainMenuButtonVo.BUTTON_GUILD));
         return _loc1_;
      }
      
      private final function getEventButtonList() : ArrayList
      {
         var _loc1_:ArrayList = new ArrayList();
         _loc1_.addItem(this.getButton(MainMenuButtonVo.BUTTON_EVENTS_MAIN));
         _loc1_.addItem(this.getButton(MainMenuButtonVo.BUTTON_EVENTS_MONTHLY_LOGIN_BONUS));
         _loc1_.addItem(this.getButton(MainMenuButtonVo.BUTTON_EVENTS_REPUTATION_WINDOW));
         return _loc1_;
      }
      
      private final function getShipButtonList() : ArrayList
      {
         var _loc1_:ArrayList = new ArrayList();
         _loc1_.addItem(this.getButton(MainMenuButtonVo.BUTTON_SHIP_MAIN));
         _loc1_.addItem(this.getButton(MainMenuButtonVo.BUTTON_SHIP_CASTLE));
         return _loc1_;
      }
      
      private final function createDropdownButtonData() : void
      {
         this._buttons = new Dictionary();
         this._buttons[MainMenuButtonVo.BUTTON_GUILD_PLAYER] = new MainMenuButtonVo(MainMenuButtonVo.BUTTON_GUILD_PLAYER,"ico_guild","guild",true,false);
         this._buttons[MainMenuButtonVo.BUTTON_GUILD_SEARCH] = new MainMenuButtonVo(MainMenuButtonVo.BUTTON_GUILD_SEARCH,"ico_guildsearch","guildsearch",true,false);
         this._buttons[MainMenuButtonVo.BUTTON_LEAGUE] = new MainMenuButtonVo(MainMenuButtonVo.BUTTON_LEAGUE,"ico_league","league",true,false);
         this._buttons[MainMenuButtonVo.BUTTON_GUILD] = new MainMenuButtonVo(MainMenuButtonVo.BUTTON_GUILD,"ico_guild","guild",true,false,new ArrayList([this.getButton(MainMenuButtonVo.BUTTON_GUILD_PLAYER),this.getButton(MainMenuButtonVo.BUTTON_GUILD_SEARCH)]));
         this._buttons[MainMenuButtonVo.BUTTON_GEMFORGE] = new MainMenuButtonVo(MainMenuButtonVo.BUTTON_GEMFORGE,"ico_gemforge","gemforge",false,false);
         this._buttons[MainMenuButtonVo.BUTTON_GROUP] = new MainMenuButtonVo(MainMenuButtonVo.BUTTON_GROUP,"ico_group","group_view_window_title",true,false);
         this._buttons[MainMenuButtonVo.BUTTON_MATEYS] = new MainMenuButtonVo(MainMenuButtonVo.BUTTON_MATEYS,"ico_matey","mateys",true,false);
         this._buttons[MainMenuButtonVo.BUTTON_SPY] = new MainMenuButtonVo(MainMenuButtonVo.BUTTON_SPY,"ico_spy","spy",false,false);
         this._buttons[MainMenuButtonVo.BUTTON_CAULDRON] = new MainMenuButtonVo(MainMenuButtonVo.BUTTON_CAULDRON,"ico_cauldron","cauldron",false,false);
         this._buttons[MainMenuButtonVo.BUTTON_EVENTS_MAIN] = new MainMenuButtonVo(MainMenuButtonVo.BUTTON_EVENTS_MAIN,"ico_event_window","txevent",false,false);
         this._buttons[MainMenuButtonVo.BUTTON_EVENTS_MONTHLY_LOGIN_BONUS] = new MainMenuButtonVo(MainMenuButtonVo.BUTTON_EVENTS_MONTHLY_LOGIN_BONUS,"ico_monthly_login","montlhy_login_bonus",true,false);
         this._buttons[MainMenuButtonVo.BUTTON_EVENTS_REPUTATION_WINDOW] = new MainMenuButtonVo(MainMenuButtonVo.BUTTON_EVENTS_REPUTATION_WINDOW,"ico_reputation","reputation_window",true,false);
         this._buttons[MainMenuButtonVo.BUTTON_SHIP_MAIN] = new MainMenuButtonVo(MainMenuButtonVo.BUTTON_SHIP_MAIN,"icon_ship_equipment","charMenuOverviewTab",true,false);
         this._buttons[MainMenuButtonVo.BUTTON_SHIP_CASTLE] = new MainMenuButtonVo(MainMenuButtonVo.BUTTON_SHIP_CASTLE,"icon_castle","castle",true,false);
      }
      
      private final function getButton(param1:int) : MainMenuButtonVo
      {
         return this._buttons[param1] as MainMenuButtonVo;
      }
      
      private final function onMenuButtonClick(param1:class_101) : void
      {
         var _loc4_:class_112 = null;
         var _loc5_:Boolean = false;
         switch(param1.name_7)
         {
            case MainMenuButtonVo.BUTTON_CHAT:
               _loc4_ = class_47.method_24.var_12.chatWindow;
               _loc5_ = this._view.chat.selected;
               if(_loc4_)
               {
                  _loc4_.method_1548(_loc5_);
               }
               class_107.name_3.method_95(class_43.const_370,_loc5_);
               break;
            case MainMenuButtonVo.BUTTON_SOCIALS:
               const_3.warn("socials click, do nothing");
               break;
            case MainMenuButtonVo.BUTTON_GROUP:
               new OpenGroupWindowCommand().execute();
               break;
            case MainMenuButtonVo.BUTTON_MATEYS:
               StatelessCMD.invoke(CmdSL_OpenMateysWindow);
               break;
            case MainMenuButtonVo.BUTTON_NAVIGATOR:
               const_3.warn("navigator click, do nothing");
               break;
            case MainMenuButtonVo.BUTTON_LEAGUE:
               StatelessCMD.invoke(CmdSL_OpenLeagueWindow);
               break;
            case MainMenuButtonVo.BUTTON_GUILD:
               const_3.warn("guild click, do nothing");
               break;
            case MainMenuButtonVo.BUTTON_GUILD_PLAYER:
               StatelessCMD.invoke(CmdSL_OpenPlayerGuildWindow);
               break;
            case MainMenuButtonVo.BUTTON_GUILD_SEARCH:
               StatelessCMD.invoke(CmdSL_OpenSafeHavenGuildWindow);
               break;
            case MainMenuButtonVo.BUTTON_GEMFORGE:
               StatelessCMD.invoke(CmdSL_OpenGemWindow);
               break;
            case MainMenuButtonVo.BUTTON_EVENTS:
               const_3.warn("event click, do nothing");
               break;
            case MainMenuButtonVo.BUTTON_EVENTS_MAIN:
               if(!class_33.name_12.method_41.method_45(class_110.const_458))
               {
                  class_115.name_3.method_1488();
                  break;
               }
               break;
            case MainMenuButtonVo.BUTTON_EVENTS_MONTHLY_LOGIN_BONUS:
               StatelessCMD.invoke(CmdSL_OpenMonthlyLoginBonusWindow);
               break;
            case MainMenuButtonVo.BUTTON_EVENTS_REPUTATION_WINDOW:
               StatelessCMD.invoke(CmdSL_OpenReputationWindow);
               break;
            case MainMenuButtonVo.BUTTON_SHIP:
               const_3.warn("ship click, do nothing");
               break;
            case MainMenuButtonVo.BUTTON_SHIP_MAIN:
               class_116.name_3.method_872();
               break;
            case MainMenuButtonVo.BUTTON_SHIP_CASTLE:
               StatelessCMD.invoke(CmdSL_OpenCastleWindow);
               break;
            case MainMenuButtonVo.BUTTON_BOARDING:
               StatelessCMD.invoke(CmdSL_OpenBoardingWindow);
               break;
            case MainMenuButtonVo.BUTTON_QUESTS:
               class_33.name_12.method_41.method_133(class_110.const_723);
               StatelessCMD.invoke(CmdSL_OpenQuestWindow);
               break;
            case MainMenuButtonVo.BUTTON_OPTIONS:
               class_47.method_24.var_12.subMenuContainer.switchSubMenu("options");
               break;
            case MainMenuButtonVo.BUTTON_LOGOUT:
               this._connection.method_31(class_119.name_3);
               class_33.name_12.method_41.method_813();
               break;
            case MainMenuButtonVo.BUTTON_SPY:
               StatelessCMD.invoke(CmdSL_OpenSpyWindow);
               break;
            case MainMenuButtonVo.BUTTON_CAULDRON:
               StatelessCMD.invoke(CmdSL_OpenCauldronWindow);
               break;
            default:
               const_3.error("unhandled button id == " + MainMenuButtonVo + "::" + param1.name_7);
               return;
         }
         var _loc2_:ItemRenderer = param1.target as ItemRenderer;
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:List = _loc2_.owner as List;
         if(!_loc3_)
         {
            return;
         }
         _loc3_.visible = false;
         _loc3_.includeInLayout = false;
      }
      
      private final function enableButtons(param1:Boolean) : void
      {
         this._view.enable(param1);
      }
      
      private final function onSettingsManagerInit(param1:Event) : void
      {
         this._view.chat.selected = class_49.method_42(class_43.const_370);
      }
      
      private final function onMapFeaturesChangeEvent(param1:Event) : void
      {
         var _loc2_:class_105 = param1.currentTarget as class_105;
         var _loc3_:Boolean = _loc2_.method_2242();
         this.enableButton(MainMenuButtonVo.BUTTON_SPY,_loc2_.method_940());
         this.enableButton(MainMenuButtonVo.BUTTON_GEMFORGE,_loc3_);
         this.enableButton(MainMenuButtonVo.BUTTON_CAULDRON,_loc3_);
         this.checkSafeHavenButton(_loc3_);
      }
      
      private final function onUserInitMessage(param1:class_14) : void
      {
         var _loc2_:Boolean = this.getButton(MainMenuButtonVo.BUTTON_EVENTS_MAIN).enabled;
         this.enableButtons(true);
         this.enableButton(MainMenuButtonVo.BUTTON_EVENTS_MAIN,_loc2_);
         this.enableButton(MainMenuButtonVo.BUTTON_GUILD_PLAYER,(param1 as class_15).name_20.name_20 > 0);
         class_117.name_3.method_942();
      }
      
      private final function checkSafeHavenButton(param1:Boolean) : void
      {
         this._view.safehaven.iconName = !!param1?"ico_safehaven":"ico_navigate";
         this._view.safehaven.toolTip = class_47.method_22.method_20("quickaccess") + " - " + class_47.method_22.method_20(!!param1?"safehaven":"opensea");
      }
      
      private final function enableButton(param1:int, param2:Boolean) : void
      {
         var _loc3_:MainMenuButtonVo = this.getButton(param1);
         _loc3_.enabled = param2;
         this._view.updateButtons();
      }
      
      private final function onUserLeagueIdMessage(param1:class_14) : void
      {
         var _loc2_:class_36 = param1 as class_36;
         this.enableButton(MainMenuButtonVo.BUTTON_LEAGUE,_loc2_.var_89 > -1);
      }
      
      private final function onGuildIslandAttackNotificationMessage(param1:class_14) : void
      {
         var _loc2_:Boolean = (param1 as class_68).var_517;
         this._view.safehaven.notify(_loc2_);
         this.getButton(MainMenuButtonVo.BUTTON_SOCIALS).notify = _loc2_;
         this.getButton(MainMenuButtonVo.BUTTON_GUILD_PLAYER).notify = _loc2_;
         this.getButton(MainMenuButtonVo.BUTTON_GUILD).notify = _loc2_;
      }
      
      private final function onUserUpdateInformMessage(param1:class_14) : void
      {
         var _loc2_:class_104 = param1 as class_104;
         class_114.name_3.method_116(_loc2_.name_5);
      }
      
      private final function onActivateEventWindowMessage(param1:class_14) : void
      {
         param1 = null;
         this.enableButton(MainMenuButtonVo.BUTTON_EVENTS_MAIN,true);
      }
      
      private final function onDeactivateEventWindowMessage(param1:class_14) : void
      {
         param1 = null;
         this.enableButton(MainMenuButtonVo.BUTTON_EVENTS_MAIN,false);
      }
      
      private final function onUserCurrencyMessage(param1:Event) : void
      {
         var _loc2_:class_106 = param1.target as class_106;
         class_114.name_3.method_2506(_loc2_);
         this._view.pearls = _loc2_.name_8.real;
         this._view.gold = _loc2_.name_8.gold;
      }
      
      private final function onCurrenciesAreaClick(param1:MouseEvent) : void
      {
         if(this._currencyController == null)
         {
            this._currencyController = new CurrencyPopupController(this._view.currenciesList);
         }
         this._currencyController.update();
         this._view.currenciesList.includeInLayout = this._view.currenciesList.visible = !this._view.currenciesList.visible;
      }
      
      private final function onMouseDownOutsideCurrenciesList(param1:FlexMouseEvent = null) : void
      {
         this._view.currenciesList.visible = false;
         this._view.currenciesList.includeInLayout = false;
      }
      
      private final function onCurrencyWindowButtonClick(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         new CmdSL_OpenCurrencyWindow().execute();
      }
      
      private final function addToolTips() : void
      {
         var _loc1_:class_87 = class_47.method_22;
         var _loc2_:class_88 = class_47.method_37;
         this._view.account.toolTip = _loc1_.method_20("tooltipcredits");
         this._view.chat.toolTip = _loc1_.method_20("minimizeChat");
         this._view.socials.toolTip = _loc1_.method_20("socials");
         this._view.safehaven.toolTip = _loc1_.method_20("safehaven");
         this._view.ship.toolTip = _loc1_.method_20("charMenuOverviewTab");
         this._view.boarding.toolTip = _loc2_.method_32(class_88.const_27,"CREW");
         this._view.quests.toolTip = _loc1_.method_20("questMenu");
         this._view.options.toolTip = _loc1_.method_20("options");
         this._view.logout.toolTip = _loc1_.method_20("tooltip_globalMenu_logout");
      }
      
      private final function updateMapPosition(param1:Event) : void
      {
         if(getTimer() - this._time < 1000)
         {
            return;
         }
         this._time = getTimer();
         var _loc2_:class_100 = class_47.method_29.method_44(class_51.var_21);
         if(null == _loc2_)
         {
            return;
         }
         var _loc3_:Point = _loc2_.method_693();
         var _loc4_:Point = !_loc3_?new Point():getMapFieldPoint(_loc3_.x,_loc3_.y,class_102.method_210());
         var _loc5_:Array = class_118.method_436(_loc4_.x,_loc4_.y);
         this._view.mapName.text = class_47.method_51.method_699();
         this._view.mapPosition.text = class_22.const_226 + class_118.method_1336(_loc5_[0],2) + _loc5_[1];
      }
      
      private final function onConnectionClose(param1:class_56) : void
      {
         var _loc2_:MainMenuButtonVo = null;
         this.enableButtons(false);
         for each(_loc2_ in this._buttons)
         {
            _loc2_.notify = false;
         }
         this.onMouseDownOutsideCurrenciesList();
         this._view.safehaven.notify(false);
      }
   }
}
