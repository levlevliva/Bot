package com.bigpoint.seafight
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.MouseHandler;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_44;
   import com.bigpoint.seafight.tools.class_46;
   import com.bigpoint.seafight.tools.class_60;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuBar;
   import com.bigpoint.seafight.view.mainmenu.MainMenuController;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.CheckBoxGroup;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MetaCurrencyIndicatorList;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagDropTarget;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupInvitationListener;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildMenuIslandsTab;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.GuildMenuIslandsTabController;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardsTabListItem;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.DeckInventoryVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.DeckStatsVo;
   import com.bigpoint.seafight.view.popups.vo.MinigameContentVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_19;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenMinigameWindow;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import com.greensock.plugins.AutoAlphaPlugin;
   import com.greensock.plugins.BezierPlugin;
   import com.greensock.plugins.BlurFilterPlugin;
   import com.greensock.plugins.ColorMatrixFilterPlugin;
   import com.greensock.plugins.ColorTransformPlugin;
   import com.greensock.plugins.FramePlugin;
   import com.greensock.plugins.GlowFilterPlugin;
   import com.greensock.plugins.ScalePlugin;
   import com.greensock.plugins.ScrollRectPlugin;
   import com.greensock.plugins.SoundTransformPlugin;
   import com.greensock.plugins.TintPlugin;
   import com.greensock.plugins.TweenPlugin;
   import com.soenkerohde.logging.SOSLoggingTarget;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.Security;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IVisualElement;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.managers.ToolTipManager;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_10.class_18;
   import package_10.class_38;
   import package_105.class_369;
   import package_105.class_529;
   import package_11.class_20;
   import package_12.class_21;
   import package_123.class_1032;
   import package_13.class_23;
   import package_130.class_1143;
   import package_14.class_25;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_61;
   import package_14.class_88;
   import package_14.class_94;
   import package_15.class_273;
   import package_15.class_48;
   import package_152.class_664;
   import package_152.class_852;
   import package_16.class_28;
   import package_165.class_954;
   import package_165.class_955;
   import package_165.class_956;
   import package_165.class_957;
   import package_17.class_29;
   import package_17.class_31;
   import package_17.class_37;
   import package_17.class_54;
   import package_18.class_30;
   import package_18.class_392;
   import package_18.class_40;
   import package_18.class_530;
   import package_19.class_32;
   import package_190.class_1181;
   import package_2.class_65;
   import package_2.class_9;
   import package_20.class_33;
   import package_21.class_34;
   import package_212.class_1537;
   import package_214.class_1604;
   import package_22.class_36;
   import package_23.class_39;
   import package_23.class_42;
   import package_24.class_45;
   import package_25.class_50;
   import package_26.class_52;
   import package_27.class_53;
   import package_28.class_56;
   import package_29.class_565;
   import package_29.class_57;
   import package_3.class_26;
   import package_3.class_59;
   import package_30.class_1013;
   import package_30.class_62;
   import package_31.class_63;
   import package_32.class_64;
   import package_33.class_66;
   import package_34.class_69;
   import package_35.class_70;
   import package_36.class_71;
   import package_4.class_11;
   import package_41.class_84;
   import package_41.class_93;
   import package_45.class_110;
   import package_46.class_1500;
   import package_46.class_1501;
   import package_46.class_975;
   import package_47.class_685;
   import package_48.class_138;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_49.class_140;
   import package_49.class_880;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_43;
   import package_51.class_1355;
   import package_51.class_148;
   import package_52.class_168;
   import package_54.class_163;
   import package_6.class_14;
   import package_7.class_15;
   import package_7.class_35;
   import package_7.class_55;
   import package_72.class_1442;
   import package_8.class_16;
   import package_9.class_17;
   import package_9.class_899;
   import package_9.class_91;
   import package_92.class_336;
   import package_92.class_944;
   import package_97.class_986;
   import spark.components.Application;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.layouts.BasicLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   public class Main extends Application
   {
      
      public static var COMPILE_TIMESTAMP:String;
      
      public static const LOG:ILogger = Log.getLogger("-");
      
      public static const SYSTEM_MESSAGEBOX:class_45 = new class_45("System-Message","",false);
      
      public static const NETSPEED_IN_KBPERSEC_NOTSET:int = -1;
      
      public static const NETSPEED_MIN_KBPERSEC_FOR_INITIAL_LOAD_SOUND_AND_ANIMATION:int = 50;
      
      public static const NETSPEED_MAX_KBPERSEC_FOR_PRE_USE_BAD_MAP_TILES_QUALITY:int = 100;
       
      
      private var _410956671container:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _mainMenuController:MainMenuController;
      
      private var _resourceManager:class_42;
      
      private var _questResources:class_23;
      
      private var _cameraControl:class_37;
      
      private var _keyboardControl:class_29;
      
      private var _mouseControl:class_31;
      
      private var _tooltipControl:class_64;
      
      private var _connection:class_28;
      
      private var _commands:class_65;
      
      private var _globalActionsControl:class_54;
      
      private var _backgroundContainer:class_19;
      
      private var _stageResizeListner:class_21;
      
      private var _mainClip:UIComponent;
      
      private var _loadingClip:Sprite;
      
      private var _msgBoxClip:Sprite;
      
      private var _chatClip:Sprite;
      
      private var _death:Boolean;
      
      private var _speedTest:class_66;
      
      private var _netSpeedInKbPerSec:int = -1;
      
      private var _txtCompileStamp:TextField;
      
      private var _mainComponent:UIComponent;
      
      private var _mainmenu:MainMenuBar;
      
      mx_internal var _Main_StylesInit_done:Boolean = false;
      
      public function Main()
      {
         this._speedTest = new class_66();
         super();
         mx_internal::_document = this;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._Main_Array1_c);
         this.addEventListener("addedToStage",this.___Main_Application1_addedToStage);
         this.addEventListener("applicationComplete",this.___Main_Application1_applicationComplete);
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
            this.backgroundColor = 0;
         };
         mx_internal::_Main_StylesInit();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private final function onApplicationComplete() : void
      {
         this.createDebugText();
         TweenPlugin.activate([AutoAlphaPlugin,FramePlugin,ColorMatrixFilterPlugin,GlowFilterPlugin,ColorTransformPlugin,BezierPlugin,SoundTransformPlugin,ScalePlugin,TintPlugin,ScrollRectPlugin,BlurFilterPlugin]);
         new class_38(loaderInfo.parameters["eventStreamClientContext"] as String,stage);
         class_51.var_329 = String(loaderInfo.parameters["base_url"]);
         if(class_51.var_329 == "undefined" || class_51.var_329 == null || class_51.var_329.length == 0)
         {
            class_51.var_329 = "";
            class_51.var_571 = true;
         }
         if(class_51.var_329 == "")
         {
            class_51.var_392 = "";
         }
         else
         {
            class_51.var_392 = class_51.var_329 + "/client/";
         }
         class_51.var_952 = loaderInfo.parameters["cdnhost"] as String;
         Security.loadPolicyFile(class_51.var_952 + "/" + "crossdomain.xml" + "?" + class_22.const_976 + class_39.method_922("crossdomain.xml"));
         if(class_51.var_952 == "undefined" || class_51.var_952 == null || class_51.var_952.length == 0)
         {
            class_51.var_952 = class_51.var_329;
            class_51.var_906 = class_51.var_392;
         }
         else
         {
            class_51.var_906 = class_51.var_952 + "/client/";
         }
         class_53.method_21().method_2701();
         ToolTipManager.toolTipClass = MenuToolTip;
         this.initMainMenu();
      }
      
      private final function initMainMenu() : void
      {
         this._mainmenu = new MainMenuBar();
         this._mainmenu.percentWidth = 100;
         this._mainmenu.height = 40;
         this._mainmenu.top = 0;
         addElement(this._mainmenu);
      }
      
      protected function addedToStage() : void
      {
         this.createDebugText();
         Security.allowDomain("package_1");
         class_51.var_571 = loaderInfo.parameters["base_url"] == null;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.handleKeyDown);
         class_47.method_49 = this.stage;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         this._mainComponent = new UIComponent();
         this._mainClip = new UIComponent();
         this._loadingClip = new Sprite();
         this._msgBoxClip = new Sprite();
         this._chatClip = new Sprite();
         this.addChild(this._mainClip);
         this.addChild(this._loadingClip);
         this.addChild(this._msgBoxClip);
         this.addChild(this._chatClip);
         CentralEventUnit.init();
         MouseHandler.init(this.stage);
         this.showLoader();
         this._stageResizeListner = new class_21(this);
         this._stageResizeListner.method_34();
         class_47.method_49.addEventListener(Event.RESIZE,this.onStageResize);
         this.container.addElementAt(this._mainComponent,0);
         this.onStageResize();
         class_62.name_3.name_23(stage);
      }
      
      private final function showLoader() : void
      {
         var loadScreen:class_58 = null;
         loadScreen = class_58.method_21();
         loadScreen.addEventListener("removed",function(param1:Event):void
         {
            loadScreen.method_750();
            if(_loadingClip.parent)
            {
               _loadingClip.parent.removeChild(_loadingClip);
            }
            class_38.method_173(class_18.const_1217,{"val":100});
         });
         loadScreen.method_1929(this._loadingClip);
         loadScreen.method_2587(500,function(param1:Event):void
         {
            loadScreen.method_542 = class_42.method_21().method_757;
         });
         this.checkParameters();
         loadScreen.method_1766();
      }
      
      private final function onStageResize(param1:Event = null) : void
      {
         this.container.width = class_51.var_39;
         this.container.height = class_51.var_40;
         if(this._backgroundContainer)
         {
            this._backgroundContainer.method_1968();
         }
      }
      
      private final function handleKeyDown(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case class_22.const_1444:
               if(this._txtCompileStamp.parent)
               {
                  this._txtCompileStamp.parent.removeChild(this._txtCompileStamp);
                  break;
               }
               this.addChild(this._txtCompileStamp);
               break;
            case class_22.const_1612:
               class_46.name_3.method_1475 = null;
               class_46.name_3.name_31 = null;
         }
      }
      
      private final function initRess() : void
      {
         this._questResources = new class_23(class_51.var_1649);
         LOG.info("Quest-XML loaded: " + class_51.var_1649);
         this.initResources();
      }
      
      private final function handleModelLocatorCreated() : void
      {
         LOG.info("model loaded");
         class_47.method_24.var_12.subMenuContainer.switchSubMenu("options",true);
         class_47.method_72.name_16();
         this.createController();
         this._backgroundContainer = new class_19();
         this._backgroundContainer.method_2644();
         this._stageResizeListner.method_34();
         class_20.name_16(this._questResources);
         this.addChildAt(this._backgroundContainer,0);
      }
      
      public final function logInitbytesLoaded() : void
      {
         if(this.netSpeedInKbPerSec != NETSPEED_IN_KBPERSEC_NOTSET)
         {
            return;
         }
         this.calculateNetSpeedAndSave(class_42.method_21().method_757);
         LOG.info("BYTES LOADED INIT:" + class_42.method_21().method_757 + " bytes - Speed: " + this.netSpeedInKbPerSec + "kbytes/sec");
      }
      
      public function get mainClip() : UIComponent
      {
         return this._mainClip;
      }
      
      public function get chatClip() : Sprite
      {
         return this._chatClip;
      }
      
      public function get msgBoxClip() : Sprite
      {
         return this._msgBoxClip;
      }
      
      public final function setDeath(param1:Boolean) : void
      {
         this._death = param1;
         this.filters = !!param1?new Array(class_60.method_701()):null;
      }
      
      public function get death() : Boolean
      {
         return this._death;
      }
      
      private final function calculateNetSpeedAndSave(param1:int) : void
      {
         this._netSpeedInKbPerSec = this._speedTest.method_990(param1);
      }
      
      public function get netSpeedInKbPerSec() : int
      {
         return this._netSpeedInKbPerSec;
      }
      
      private final function checkParameters() : void
      {
         if(loaderInfo.parameters["user_id"])
         {
            class_25.var_1349 = loaderInfo.parameters[class_25.const_644];
            class_58.method_21().method_82("loading flash vars");
            this.setSystemParameters();
            class_58.method_21().method_82("check version");
            class_46.method_2316(COMPILE_TIMESTAMP,class_51.var_1753,class_51.var_1535 + "?action=internalMap&oldVersion=1",this.initResourceManager);
            class_46.name_3.method_1269();
            LOG.warn("use CDN: " + class_51.var_906);
            return;
         }
         class_58.method_21().method_82("loading local flash vars");
         this.createSOSLogger();
         this.loadLocalSetup();
      }
      
      private final function createDebugText() : void
      {
         if(this._txtCompileStamp)
         {
            return;
         }
         var _loc1_:TextFormat = new TextFormat();
         _loc1_.color = 16777215;
         _loc1_.size = 12;
         this._txtCompileStamp = new TextField();
         this._txtCompileStamp.border = true;
         this._txtCompileStamp.backgroundColor = 0;
         this._txtCompileStamp.background = true;
         this._txtCompileStamp.text = !!COMPILE_TIMESTAMP?COMPILE_TIMESTAMP:"";
         this._txtCompileStamp.setTextFormat(_loc1_);
         this._txtCompileStamp.autoSize = "left";
      }
      
      private final function logDebugText(param1:String) : void
      {
         this._txtCompileStamp.appendText(class_22.const_10 + param1);
      }
      
      private final function configureClientStartMode() : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         if(class_12.var_104 == class_12.const_130)
         {
            _loc3_ = class_12.const_15;
         }
         else if(class_49.name_3.method_97(class_43.const_247))
         {
            _loc3_ = class_49.method_46(class_43.const_247);
         }
         else
         {
            _loc3_ = class_12.const_15;
         }
         var _loc4_:int = class_51.var_420;
         if(_loc3_ == class_12.const_463 && (_loc4_ == 631 || _loc4_ == 149 || _loc4_ == 205))
         {
            _loc3_ = class_12.const_442;
         }
         class_12.var_104 = _loc3_;
         class_12.var_946 = _loc3_;
         switch(_loc3_)
         {
            case class_12.const_463:
               class_51.var_39 = 640;
               class_51.var_40 = 500;
               _loc2_ = "small";
               break;
            case class_12.const_15:
               this.container.horizontalCenter = undefined;
               this.container.verticalCenter = undefined;
               this.container.x = 0;
               this.container.y = UserInterface.MAXIMIZED_SCREEN_HEIGHT_EXCESS;
               class_51.var_39 = stage.stageWidth;
               class_51.var_40 = stage.stageHeight - UserInterface.MAXIMIZED_SCREEN_HEIGHT_EXCESS;
               class_47.method_49.removeEventListener(Event.RESIZE,this.onStageResize);
               _loc2_ = "big";
               break;
            case class_12.const_442:
               class_51.var_39 = 800;
               class_51.var_40 = 620;
               _loc2_ = "big";
               break;
            case class_12.const_962:
               class_51.var_39 = 990;
               class_51.var_40 = 545;
               class_12.var_104 = class_12.const_15;
               class_12.var_956 = class_51.var_39;
               class_12.var_916 = class_51.var_40;
               _loc2_ = "big";
               break;
            case class_12.const_943:
               class_51.var_39 = 1246;
               class_51.var_40 = 801;
               class_12.var_104 = class_12.const_15;
               class_12.var_956 = class_51.var_39;
               class_12.var_916 = class_51.var_40;
               _loc2_ = "big";
               break;
            default:
               throw new class_57(class_12.var_104);
         }
         this.container.width = class_51.var_39;
         this.container.height = class_51.var_40;
         class_58.method_21().method_438();
         class_51.var_2194 = class_42.method_47("res/uiConfig/" + "ui_" + _loc2_ + ".cfg.xml");
         class_51.var_1692 = class_42.method_47("res/uiConfig/" + "client.css");
      }
      
      private final function setSystemParameters() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc6_:* = null;
         class_51.var_420 = loaderInfo.parameters["projectID"];
         var _loc1_:Boolean = false;
         for each(_loc2_ in class_51.const_803)
         {
            _loc1_ = _loc1_ || class_51.var_420 == _loc2_;
         }
         _loc3_ = class_61.method_21().method_835();
         if(_loc3_[class_26.const_775])
         {
            class_51.var_696 = true;
            this.createSOSLogger();
         }
         else if(loaderInfo.parameters["logserver"] && String(loaderInfo.parameters["logserver"]).length > 0)
         {
            if(loaderInfo.parameters["logtype"] == "sos")
            {
               this.createSOSLogger(loaderInfo.parameters["logserver"],loaderInfo.parameters["logport"],class_51.var_21.name_4);
            }
         }
         else if(_loc1_)
         {
            this.createSOSLogger("localhost",4444,class_51.var_21.name_4);
            class_51.var_2066 = true;
         }
         class_51.var_1337 = class_13.method_796(loaderInfo.parameters["enableChat"]);
         if(!class_51.var_1337)
         {
            LOG.warn("Disable Chat by FlashVars");
         }
         var _loc4_:String = "&" + class_24.method_521(8);
         if(loaderInfo.parameters["embedded"] == "1")
         {
            class_12.var_104 = class_12.const_130;
         }
         class_51.var_1008 = class_51.var_329 + "/api/client/";
         class_51.var_1306 = loaderInfo.parameters["imghost"] as String;
         class_51.var_1666 = class_51.var_1306 + "seafight/client/";
         class_51.var_1535 = class_51.var_329 + "/index.es";
         class_51.var_1463 = String(loaderInfo.parameters["__cv"]);
         class_51.var_21.name_4 = int(loaderInfo.parameters["user_id"]);
         class_51.var_21.var_6 = class_51.var_420;
         class_51.var_129 = loaderInfo.parameters["lang"] as String;
         class_51.var_1000 = loaderInfo.parameters["session_id"];
         class_51.var_1638 = String(loaderInfo.parameters["gameserver"]).split(":")[0];
         class_51.var_1652 = String(loaderInfo.parameters["gameserver"]).split(":")[1];
         class_51.var_1576 = "minimaps/";
         class_51.var_571 = false;
         class_51.var_1649 = class_51.var_392 + "lang/seafight.quests.php?lang=" + class_51.var_129 + _loc4_;
         class_16.var_1947 = class_51.var_392 + "lang/client.lang.php?lang=" + class_51.var_129 + _loc4_;
         class_16.var_2015 = class_51.var_392 + "lang/conversations.lang.php?lang=" + class_51.var_129 + _loc4_;
         class_16.var_1842 = class_51.var_392 + "lang/labels.lang.php?lang=" + class_51.var_129 + _loc4_;
         class_16.var_1983 = class_51.var_392 + "lang/npcnames.php?lang=" + class_51.var_129 + _loc4_;
         class_16.var_1962 = class_51.var_392 + "lang/descriptions.lang.php?lang=" + class_51.var_129 + _loc4_;
         class_16.var_1814 = class_51.var_392 + "lang/helptexts.lang.php?lang=" + class_51.var_129 + _loc4_;
         class_51.var_1753 = class_51.var_1008 + "getCompileTime.php?" + _loc4_;
         class_51.var_984 = loaderInfo.parameters["chatWebDomain"] + "/" + loaderInfo.parameters["chatPath"];
         class_51.var_1590 = loaderInfo.parameters["isFastReg"] == "2";
         class_51.var_1561 = int(loaderInfo.parameters["globalId"]);
         class_51.var_2080 = loaderInfo.parameters["eventStreamClientContext"] as String;
         class_51.var_1519 = class_51.var_392 + "lang/instances.lang.php?lang=" + class_51.var_129 + _loc4_;
         this.initLoginMessage();
         this.setLinks();
         var _loc5_:String = "";
         for(_loc6_ in loaderInfo.parameters)
         {
            _loc5_ = _loc5_ + (_loc6_ + "=" + loaderInfo.parameters[_loc6_] + " | ");
         }
         LOG.info("Flashvars: " + _loc5_.substr(0,_loc5_.length - 3));
         LOG.info("FLAG_CV: " + class_51.var_1463);
      }
      
      private final function setLinks() : void
      {
         var _loc1_:String = class_24.method_521(8);
         class_51.var_1159 = class_51.var_1008 + "getStartTip.php?lang=" + class_51.var_129 + class_51.const_1506;
         class_51.var_1724 = "cfg/client.cfg.xml";
         class_58.method_21().method_830(0,true);
      }
      
      private final function loadLocalSetup() : void
      {
         var request:URLRequest = null;
         var setupLoader:URLLoader = new URLLoader();
         request = new URLRequest("setup.xml");
         class_51.var_571 = true;
         LOG.info("LOADING local setup: " + request.url);
         setupLoader.load(request);
         setupLoader.addEventListener(IOErrorEvent.IO_ERROR,function(param1:IOErrorEvent):void
         {
            LOG.error("ERROR LOADING local setup: " + request.url);
         });
         setupLoader.addEventListener(Event.COMPLETE,this.handleSetupLoaded);
      }
      
      private final function handleSetupLoaded(param1:Event) : void
      {
         var setupXML:XML = null;
         var lang:String = null;
         var lpath:String = null;
         var featureList:XMLList = null;
         var event:Event = param1;
         var strTrue:String = "true";
         try
         {
            setupXML = new XML(event.target.data);
            lang = setupXML.lang.@value;
            if(lang)
            {
               class_51.var_129 = lang;
            }
            lpath = class_51.var_1917 + class_51.var_129;
            class_51.var_1649 = lpath + "/seafight.quests.xml";
            class_16.var_1947 = lpath + "/seafight.client.xml";
            class_16.var_2015 = lpath + "/seafight.conversations.xml";
            class_16.var_1842 = lpath + "/seafight.labels.xml";
            class_16.var_1983 = lpath + "/seafight.npcnames.xml";
            class_16.var_1962 = lpath + "/seafight.descriptions.xml";
            class_16.var_1814 = lpath + "/seafight.helptexts.xml";
            class_16.var_2474 = lpath + "/seafight.shipyard.xml";
            class_51.var_1519 = lpath + "/seafight.instances.xml";
            class_51.var_420 = setupXML.chat.@projectID;
            class_51.var_21.name_4 = setupXML.user.@id;
            class_51.var_21.var_6 = class_51.var_420;
            class_51.var_1000 = setupXML.user.@session;
            class_51.var_1561 = setupXML.user.@global;
            class_51.var_1638 = setupXML.gameserver.@host;
            class_51.var_1652 = int(setupXML.gameserver.@port);
            class_51.var_1118 = setupXML.debug.@grid == strTrue || class_51.var_1118;
            class_51.var_2114 = setupXML.sound.@enabled == strTrue;
            class_51.var_984 = setupXML.chat.@webDomain + "/" + setupXML.chat.@path;
            class_51.var_329 = setupXML["base"].@url;
            featureList = setupXML["features"];
            class_51.var_1008 = class_51.var_329 + "/api/client/";
            class_51.var_1535 = class_51.var_329 + "/index.es";
            class_51.var_1918 = setupXML.loadwebimages.@enabled == strTrue;
            class_51.var_696 = true;
            this.setLinks();
            class_47.method_1361 = setupXML["quality"].@fps;
            if(setupXML.@embededMode == "true")
            {
               class_12.var_104 = class_12.const_130;
            }
         }
         catch(e:Error)
         {
            LOG.error("ERROR PARSING local setup xml");
            LOG.error(e.message + ": " + e.getStackTrace());
            return;
         }
         this.initLoginMessage();
         this.initResourceManager();
      }
      
      private final function initLoginMessage() : void
      {
         class_55.name_3.name_4.name_4 = class_51.var_21.name_4;
         class_55.name_3.name_4.var_6 = class_51.var_420;
         class_55.name_3.var_1606 = class_51.var_1000 + "7";
      }
      
      private final function initResourceManager() : void
      {
         class_58.method_21().method_82("init resource manager");
         class_41.name_3.name_17 = class_41.const_770;
         this.initRess();
         this._speedTest.method_1321();
      }
      
      private final function initResources() : void
      {
         LOG.info("INIT create resource manager");
         class_58.method_21().method_82("loading resources");
         this._resourceManager = class_42.method_21();
         this._resourceManager.addEventListener(class_42.const_1043,this.handleResourceFilesReady);
         this._resourceManager.name_16();
      }
      
      private final function handleResourceFilesReady(param1:Event) : void
      {
         class_58.method_21().method_82("loading fx resources");
         this._resourceManager.var_613.addEventListener(FileCollectionEvent.ALL_FILES_LOADED,this.handleCollectionPreloaded1);
         this._resourceManager.var_613.loadAll();
      }
      
      private final function handleCollectionPreloaded1(param1:FileCollectionEvent) : void
      {
         this._resourceManager.var_613.removeEventListener(FileCollectionEvent.ALL_FILES_LOADED,this.handleCollectionPreloaded1);
         this._resourceManager.var_613.loadLinear = false;
         class_58.method_21().method_82("loading ui resources");
         this._resourceManager.var_287.addEventListener(FileCollectionEvent.ALL_FILES_LOADED,this.handleCollectionPreloaded2);
         this._resourceManager.var_287.loadAll();
      }
      
      private final function handleCollectionPreloaded2(param1:FileCollectionEvent) : void
      {
         var _loc2_:SWFFinisher = null;
         var _loc3_:class_34 = null;
         LOG.info("LOADING COMPLETE collections (fxCollection, uiCollection)");
         this._resourceManager.var_287.removeEventListener(FileCollectionEvent.ALL_FILES_LOADED,this.handleCollectionPreloaded2);
         this._resourceManager.var_287.loadLinear = false;
         try
         {
            class_58.method_21().method_82("loading font resources");
            _loc2_ = class_42.method_21().var_287.getFinisher("fontlib") as SWFFinisher;
            _loc3_ = _loc2_.getAsDisplayObject() as class_34;
         }
         catch(e:Error)
         {
         }
         class_47.method_21().name_16(this);
         this._stageResizeListner.method_34();
         this.connectToGameServer();
      }
      
      private final function createController() : void
      {
         LOG.info("INIT create controller");
         class_58.method_21().method_82("init controller");
         this._cameraControl = class_37.method_21();
         this._keyboardControl = class_29.method_21();
         this._mouseControl = class_31.method_21();
         this._tooltipControl = class_64.method_21();
         this._globalActionsControl = class_54.method_21();
         this._globalActionsControl.method_877(this._connection);
         class_11.method_21();
         class_63.method_2797(class_42.method_47(class_51.var_1724),this.handleClientCfgLoaded);
      }
      
      private final function handleClientCfgLoaded(param1:XML) : void
      {
         class_44.method_21().name_16(param1["link_list"][0]);
      }
      
      private final function connectToGameServer() : void
      {
         this._commands = new class_65();
         this._connection = new class_28();
         class_48.name_3.name_16(this._connection);
         this._connection.name_16(this._commands);
         this._connection.addEventListener(class_56.const_757,this.onStartConnection);
         this._connection.addEventListener(class_56.const_500,this.onConnectionSuccess);
         this._connection.method_969();
         this._mainMenuController = new MainMenuController(this._mainmenu,this._connection,class_48.name_3);
         GroupInvitationListener.instance;
         this._commands.method_2680(this._connection);
         this._commands.method_30(class_15.name_3,this._mainMenuController);
         this._commands.method_30(class_40.name_3,this._mainMenuController);
         this._commands.method_30(class_30.name_3,this._mainMenuController);
         this._commands.method_30(class_36.name_3,this._mainMenuController);
         this._commands.method_30(class_68.name_3,this._mainMenuController);
         this._commands.method_30(class_35.name_3,new class_59(this._connection,this.onUserLogin));
         class_69.method_877(this._connection);
         class_50.var_2377 = this._commands;
         var _loc1_:class_71 = class_71.name_3;
      }
      
      private final function onStartConnection(param1:class_56) : void
      {
         class_58.method_21().method_82("connect to server");
      }
      
      private final function onConnectionSuccess(param1:class_56) : void
      {
         class_58.method_21().method_82("logging in user...");
         this._connection.method_31(class_55.name_3);
         class_38.method_173(class_18.const_1856,{"val":1});
      }
      
      private final function onUserLogin(param1:class_35) : void
      {
         var msg:class_35 = param1;
         if(false == this._commands.method_1526)
         {
            this._connection.method_2780();
         }
         var d:Date = new Date(msg.var_1411);
         var now:Date = new Date();
         class_51.var_420 = msg.var_462;
         class_70.method_1080 = msg.var_1411;
         class_49.name_3.method_50(class_43.const_247,msg.var_471);
         class_49.name_3.method_50(class_43.const_340,msg.var_445);
         class_49.name_3.method_95(class_43.const_247,msg.var_457);
         class_49.name_3.method_95(class_43.const_340,msg.var_496);
         this.configureClientStartMode();
         if(class_47.method_24 == null)
         {
            class_47.method_21().addEventListener(Event.COMPLETE,function(param1:Event):void
            {
               _mainMenuController.init();
               handleModelLocatorCreated();
               createController();
               loadMap(msg.var_143);
            });
            class_47.method_21().method_1814(this._connection);
            this._stageResizeListner.method_34();
         }
         else
         {
            this.loadMap(msg.var_143);
         }
         class_33.name_12.method_371.method_559 = class_33.name_12.method_441.method_559 = this._connection;
      }
      
      private final function loadMap(param1:class_17) : void
      {
         LOG.info("Load map id " + param1.name_11 + ": " + param1.var_205);
         class_47.method_51.method_1525(param1);
         class_47.method_51.addEventListener(class_52.const_94,this.handleMapLoadComplete);
         class_47.method_51.method_729();
      }
      
      private final function handleMapLoadComplete(param1:class_52) : void
      {
         class_47.method_51.removeEventListener(class_52.const_94,this.handleMapLoadComplete);
         class_47.method_24.method_39.method_1125();
         class_47.method_24.var_12.miniMap.method_1533(class_47.method_51.method_175());
         if(false == this._commands.method_1526)
         {
            this._commands.method_2625(this._connection);
            this._connection.method_1859();
            this._connection.method_1743();
         }
         class_47.method_24.method_451();
         class_32.name_12();
      }
      
      private final function createSOSLogger(param1:String = "localhost", param2:int = 4444, param3:int = -1, param4:String = "unknown") : void
      {
         var _loc5_:SOSLoggingTarget = new SOSLoggingTarget();
         _loc5_.server = param1;
         _loc5_.port = param2;
         _loc5_.user_id = param3;
         _loc5_.user_name = param4;
         _loc5_.includeLevel = true;
         _loc5_.includeCategory = true;
         Log.addTarget(_loc5_);
         LOG.info(class_51.method_1991());
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         return this.addChildAt(param1,numChildren);
      }
      
      override public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
      {
         return this._mainComponent.addChild(param1);
      }
      
      private final function _Main_Array1_c() : Array
      {
         var _loc1_:Array = [this._Main_Group1_i()];
         return _loc1_;
      }
      
      private final function _Main_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.layout = this._Main_BasicLayout1_c();
         _loc1_.id = "container";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.container = _loc1_;
         BindingManager.executeBindings(this,"container",this.container);
         return _loc1_;
      }
      
      private final function _Main_BasicLayout1_c() : BasicLayout
      {
         var _loc1_:BasicLayout = new BasicLayout();
         return _loc1_;
      }
      
      public final function ___Main_Application1_addedToStage(param1:Event) : void
      {
         this.addedToStage();
      }
      
      public final function ___Main_Application1_applicationComplete(param1:FlexEvent) : void
      {
         this.onApplicationComplete();
      }
      
      mx_internal final function _Main_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         if(mx_internal::_Main_StylesInit_done)
         {
            return;
         }
         mx_internal::_Main_StylesInit_done = true;
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontgold10");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontgold10");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 11050846;
               this.fontSize = 10;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontgold10b");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontgold10b");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 11050846;
               this.fontSize = 10;
               this.fontWeight = "bold";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontoldgold11");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontoldgold11");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 11050846;
               this.fontSize = 11;
               this.fontWeight = "bold";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontoldgoldReg11");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontoldgoldReg11");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 11050846;
               this.fontSize = 11;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontoldgoldBold16");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontoldgoldBold16");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 11050846;
               this.fontSize = 16;
               this.fontWeight = "bold";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontgold11b");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontgold11b");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 11050846;
               this.fontSize = 11;
               this.fontWeight = "bold";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontgold11");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontgold11");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 11050846;
               this.fontSize = 11;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontgold12");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontgold12");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 11050846;
               this.fontSize = 11;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontgold12b");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontgold12b");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 11050846;
               this.fontSize = 12;
               this.fontWeight = "bold";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontwhite10");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontwhite10");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 16777215;
               this.fontSize = 10;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontwhite10b");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontwhite10b");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 16777215;
               this.fontSize = 10;
               this.fontWeight = "bold";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontgreen10");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontgreen10");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 3244592;
               this.fontSize = 10;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontgray10");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontgray10");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 6645606;
               this.fontSize = 10;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontgray11");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontgray11");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 6645606;
               this.fontSize = 11;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontgray12");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontgray12");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 6645606;
               this.fontSize = 12;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontwhite11");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontwhite11");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 16777215;
               this.fontSize = 11;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontwhite11b");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontwhite11b");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 16777215;
               this.fontSize = 11;
               this.fontWeight = "bold";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontwhite11Bold");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontwhite11Bold");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 16777215;
               this.fontSize = 11;
               this.fontWeight = "bold";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontwhite12");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontwhite12");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 16777215;
               this.fontSize = 12;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontwhite12b");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontwhite12b");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 16777215;
               this.fontSize = 12;
               this.fontWeight = "bold";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontyellow12Bold");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontyellow12Bold");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 16698112;
               this.fontSize = 12;
               this.fontWeight = "bold";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontlightyellow11Bold");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontlightyellow11Bold");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 16770150;
               this.fontSize = 11;
               this.fontWeight = "bold";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontgrey10");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontgrey10");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 10066329;
               this.fontSize = 10;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontgrey11b");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontgrey11b");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 10066329;
               this.fontSize = 11;
               this.fontWeight = "bold";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontgrey11");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontgrey11");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 10066329;
               this.fontSize = 11;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontgrey12b");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontgrey12b");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 10066329;
               this.fontSize = 12;
               this.fontWeight = "bold";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontgrey12");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontgrey12");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 10066329;
               this.fontSize = 12;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontorange12");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontorange12");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 12550955;
               this.fontSize = 12;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontorange12b");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontorange12b");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 12550955;
               this.fontSize = 12;
               this.fontWeight = "bold";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","modalstyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".modalstyle");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.modalTransparencyColor = "0x000000";
               this.modalTransparencyBlur = "0";
            };
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get container() : Group
      {
         return this._410956671container;
      }
      
      public function set container(param1:Group) : void
      {
         var _loc2_:Object = this._410956671container;
         if(_loc2_ !== param1)
         {
            this._410956671container = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container",_loc2_,param1));
            }
         }
      }
   }
}
