package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_210;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentButtonClickEvent;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderCheckBoxRenderer;
   import com.bigpoint.seafight.view.popups.event.modules.EmptyModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.HireHelperMinigameModule;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.target;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuSearchTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuSearchTabController;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuAscendTabVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.presets.PresetComboBoxData;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.infomessagemenu.InfoMessageMenu;
   import com.greensock.TweenMax;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.LocalConnection;
   import flash.system.Capabilities;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IVisualElement;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.LinearGradientStroke;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetStyle;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_123.class_432;
   import package_14.class_1002;
   import package_14.class_1003;
   import package_14.class_220;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_88;
   import package_15.class_48;
   import package_16.class_28;
   import package_17.class_151;
   import package_17.class_224;
   import package_17.class_29;
   import package_20.class_33;
   import package_204.loopsFinished;
   import package_204.s;
   import package_204.smoke;
   import package_204.thiz;
   import package_206.class_1567;
   import package_209.class_1363;
   import package_26.class_204;
   import package_26.class_218;
   import package_26.class_222;
   import package_29.class_57;
   import package_3.class_514;
   import package_34.class_107;
   import package_34.class_1499;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_43.class_106;
   import package_48.class_996;
   import package_5.class_1012;
   import package_5.class_12;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_43;
   import package_50.class_219;
   import package_51.class_1005;
   import package_51.class_1355;
   import package_52.class_167;
   import package_52.class_213;
   import package_53.class_217;
   import package_54.class_159;
   import package_54.class_160;
   import package_54.class_162;
   import package_54.class_319;
   import package_6.class_14;
   import package_69.class_978;
   import package_8.class_114;
   import package_9.class_76;
   import package_95.class_341;
   import package_97.class_1515;
   import package_97.class_914;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.events.IndexChangeEvent;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class UserInterface extends Group
   {
      
      private static const logger:ILogger = Log.getLogger("UserInterface");
      
      public static const MAXIMIZED_SCREEN_HEIGHT_EXCESS:int = 37;
      
      public static var MAX_QUICKBELT_COUNT:int = 3;
       
      
      private var _646779144infoMessageContainer:InfoMessageMenu;
      
      private var _151128011instantMsgBox:InstantMessageContainer;
      
      private var _1784090142menuContainer:MenusContainer;
      
      private var _392942213notifierContainer:NotifierContainer;
      
      private var _1058392307tempContainer:UIComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _UIConfig:XML;
      
      private var _Styles:StyleSheet;
      
      private var _globalSysMsgTxt:TextField;
      
      private var _validStageArea:Rectangle;
      
      private var _saveGameState:int;
      
      private var _zoomMenu:class_212;
      
      private var _chatWindow:class_112;
      
      public var uiElementsArr:Array;
      
      public var GRID_SIZE:int = 1;
      
      public var transferCloneIco:class_217;
      
      public var globalCntTxt:TextField;
      
      public var configMode:Boolean = false;
      
      public var mapScroll:class_221;
      
      public var actionsBar:class_150;
      
      public var quickBelt:Vector.<class_155>;
      
      public var globalActionBtnContainer:class_205;
      
      public var miniMap:class_209;
      
      public var globalDisplayContainer:class_216;
      
      public var messageBoxContainer:class_215;
      
      public var infoIconContainer:class_207;
      
      public var battleInfoContainer:class_211;
      
      public var targetInfoContainer:class_208;
      
      public var subMenuContainer:SubMenuContainer;
      
      public var activeQuickbarCount:int = 1;
      
      private var restoreQuickIcons:Array;
      
      private var restoreQuickPos:Array;
      
      private var restoreQuickCount:int = 0;
      
      private var quickBeltsForRestore:Dictionary;
      
      public function UserInterface()
      {
         this._UIConfig = class_47.method_24.method_979();
         this._Styles = class_47.method_24.method_291();
         this._validStageArea = new Rectangle();
         this.quickBelt = new Vector.<class_155>();
         this.restoreQuickIcons = new Array();
         this.restoreQuickPos = new Array();
         this.quickBeltsForRestore = new Dictionary();
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._UserInterface_MenusContainer1_i(),this._UserInterface_UIComponent1_i(),this._UserInterface_InfoMessageMenu1_i(),this._UserInterface_NotifierContainer1_i(),this._UserInterface_InstantMessageContainer1_i()];
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public final function create(param1:Sprite) : void
      {
         this.mouseEnabled = false;
         this.cacheAsBitmap = true;
         this.refreshValidStageArea();
         this.uiElementsArr = new Array();
         this.miniMap = new class_209(this);
         this.mapScroll = new class_221(this);
         this.actionsBar = new class_150(this);
         this.instantMsgBox.init(this);
         this.subMenuContainer = new SubMenuContainer(this);
         this.notifierContainer.init(this);
         this.infoIconContainer = new class_207();
         this.battleInfoContainer = new class_211(this);
         this.messageBoxContainer = new class_215(this);
         this.targetInfoContainer = new class_208(this.getUIConfig()["targetInfoContainer"][0],this.getStyleSheet());
         this.globalDisplayContainer = new class_216(this);
         this.globalActionBtnContainer = new class_205(this);
         this._zoomMenu = new class_212(this,this._UIConfig,class_47.method_24.method_39.method_2740,this._Styles);
         class_47.method_24.method_122.addChild(this.mapScroll);
         this.globalActionBtnContainer.method_109(class_205.const_166).method_166(0,0,1,1);
         this.quickBelt.push(new class_155(this,0));
         this.uiElementsArr.push(this.addChild(this.quickBelt[0]));
         this.uiElementsArr.push(this.addChild(this.actionsBar));
         this.uiElementsArr.push(this.addChild(this._zoomMenu));
         this.uiElementsArr.push(this.addChild(this.miniMap));
         this.uiElementsArr.push(this.addChild(this.globalDisplayContainer));
         this.uiElementsArr.push(param1.addChild(this.messageBoxContainer));
         this.uiElementsArr.push(this.addChild(this.infoIconContainer));
         this.uiElementsArr.push(this.addChild(this.battleInfoContainer));
         this.uiElementsArr.push(this.addChild(this.targetInfoContainer));
         this.uiElementsArr.push(this.addChild(this.subMenuContainer));
         this.createLogoutCntTxt();
         this.createGlobalSysMsgTextfield();
         class_224.method_21().name_16(new class_219(this,this._UIConfig,this._Styles));
         class_220.name_3.addEventListener(Event.COMPLETE,this.onServerInitComplete);
         this.setComponentsVisible(false);
         this.addEventListener(class_218.const_1045,this.createQuickBelt,false,0,true);
         this.addEventListener(class_218.const_1198,this.removeQuickBelt,false,0,true);
         class_49.name_3.addEventListener(class_49.const_1001,this.onSettingsManagerInit);
      }
      
      private final function onSettingsManagerInit(param1:Event) : void
      {
         var _loc2_:int = class_49.name_3.method_46(class_43.const_337);
         while(_loc2_ >= 1)
         {
            _loc2_--;
            this.createQuickBelt();
         }
      }
      
      public final function init() : void
      {
         this.subMenuContainer.switchMenu(class_214.const_23);
         this.subMenuContainer.switchMenu(class_214.const_26);
         this.subMenuContainer.switchMenu(class_214.const_38);
         this.subMenuContainer.switchMenu(class_214.const_69);
         this.subMenuContainer.switchMenu(class_214.const_17);
         this.subMenuContainer.switchMenu(class_214.const_72);
         this.subMenuContainer.switchMenu(class_214.const_75,true);
         var _loc1_:class_162 = this.actionsBar.method_69(class_150.const_319);
         _loc1_.method_123(true);
         _loc1_.method_167(class_160.const_146);
         class_47.method_112.method_1647(this._UIConfig);
      }
      
      public final function refreshValidStageArea() : void
      {
         var _loc1_:Stage = class_47.method_49;
         if(class_12.var_104 == class_12.const_15)
         {
            this._validStageArea.left = 0;
            this._validStageArea.top = 0;
            this._validStageArea.width = _loc1_.stageWidth;
            this._validStageArea.height = _loc1_.stageHeight - MAXIMIZED_SCREEN_HEIGHT_EXCESS;
         }
         else
         {
            this._validStageArea.left = -(_loc1_.stageWidth - class_51.var_39) / 2;
            this._validStageArea.top = -(_loc1_.stageHeight - class_51.var_40) / 2;
            this._validStageArea.width = _loc1_.stageWidth;
            this._validStageArea.height = _loc1_.stageHeight;
         }
      }
      
      private final function onServerInitComplete(param1:Event) : void
      {
         logger.info("Server Initializations Complete");
         var _loc2_:int = 0;
         while(_loc2_ < this.quickBelt.length)
         {
            class_47.method_112.method_1726(this.quickBelt[_loc2_],_loc2_);
            _loc2_++;
         }
         this.setComponentsVisible(true);
      }
      
      public final function removeEmptyQuickButtons() : void
      {
         if(!class_220.method_1778())
         {
            return;
         }
      }
      
      public final function restoreDefaultUIConfig() : void
      {
         this.resetZoomComponent();
         this.resetActionsComponent();
         this.resetMiniMapComponent();
         this.resetInfoIconsComponent();
         this.resetTargetsComponent();
      }
      
      public final function resetZoomComponent() : void
      {
         this._zoomMenu.method_88();
      }
      
      public final function resetActionsComponent() : void
      {
         var _loc1_:class_155 = null;
         this.actionsBar.method_88();
         for each(_loc1_ in this.quickBelt)
         {
            _loc1_.method_88();
         }
         this.globalDisplayContainer.method_88();
         if(class_12.var_104 == class_12.const_15)
         {
            this.subMenuContainer.x = 0;
            this.subMenuContainer.y = -this._validStageArea.top;
         }
         this.globalActionBtnContainer.method_109(class_205.const_166).method_88();
      }
      
      public final function resetMiniMapComponent() : void
      {
         this.miniMap.method_88();
      }
      
      public final function resetInfoIconsComponent() : void
      {
         this.infoIconContainer.method_88();
         this.infoIconContainer.method_182(true);
      }
      
      public final function resetTargetsComponent() : void
      {
         this.battleInfoContainer.method_88();
         this.targetInfoContainer.method_88();
      }
      
      public final function getUIConfig() : XML
      {
         return this._UIConfig;
      }
      
      public final function getStyleSheet() : StyleSheet
      {
         return this._Styles;
      }
      
      public final function setGlobalUIElement(param1:DisplayObject) : void
      {
         this.uiElementsArr.push(this.addChild(param1));
      }
      
      public final function drawGrid() : void
      {
         var _loc1_:int = this.GRID_SIZE < 10?10:int(this.GRID_SIZE);
         this.graphics.clear();
         this.graphics.beginFill(3355443,0.5);
         this.graphics.drawRect(this._validStageArea.left,this._validStageArea.top,this._validStageArea.width,this._validStageArea.height);
         this.graphics.endFill();
         var _loc2_:Number = this._validStageArea.width;
         var _loc3_:Number = this._validStageArea.height;
         this.graphics.lineStyle(1,0,1);
         var _loc4_:int = this._validStageArea.top;
         while(_loc4_ < _loc3_ + _loc1_)
         {
            this.graphics.moveTo(this._validStageArea.left,_loc4_);
            this.graphics.lineTo(_loc2_,_loc4_);
            _loc4_ = _loc4_ + _loc1_;
         }
         var _loc5_:int = this._validStageArea.left;
         while(_loc5_ < _loc2_ + _loc1_)
         {
            this.graphics.moveTo(_loc5_,this._validStageArea.top);
            this.graphics.lineTo(_loc5_,_loc3_);
            _loc5_ = _loc5_ + _loc1_;
         }
      }
      
      public final function clearGrid() : void
      {
         this.graphics.clear();
      }
      
      public final function createTransferClone(param1:BitmapData) : void
      {
         var transferData:BitmapData = param1;
         this.transferCloneIco = new class_217(this,transferData);
         this.transferCloneIco.addEventListener(class_222.const_529,function(param1:class_222):void
         {
            transferCloneIco.removeEventListener(class_222.const_529,arguments["callee"]);
            if(param1.method_1036)
            {
               updateQuickBelt();
            }
         });
         this.addChild(this.transferCloneIco);
      }
      
      protected final function updateQuickBelt() : void
      {
         var _loc3_:class_223 = null;
         var _loc1_:class_210 = class_47.method_24.var_954;
         var _loc2_:int = _loc1_.name_22.name_7;
         switch(_loc1_.name_22.var_1295)
         {
            case class_206.const_26:
            case class_206.const_218:
               _loc3_ = new class_223(class_223.const_1022);
               _loc3_.name_7 = _loc2_;
               CentralEventUnit.dispatchEvent(_loc3_);
         }
      }
      
      private final function createLogoutCntTxt() : void
      {
         var _loc1_:Object = this._Styles.getStyle(this._UIConfig["logoutCounter"][0].@style);
         var _loc2_:flash.filters.DropShadowFilter = new flash.filters.DropShadowFilter(3,45,0,0.6,8,8,2,3);
         this.globalCntTxt = new TextField();
         this.globalCntTxt.autoSize = _loc1_["autoSize"];
         this.globalCntTxt.multiline = false;
         this.globalCntTxt.selectable = false;
         this.globalCntTxt.mouseEnabled = _loc1_["mouseEnabled"] == "true";
         this.globalCntTxt.border = _loc1_["border"] == "true";
         this.globalCntTxt.background = _loc1_["background"] == "true";
         this.globalCntTxt.defaultTextFormat = this._Styles.transform(_loc1_);
         this.globalCntTxt.visible = false;
         this.globalCntTxt.filters = [_loc2_];
         this.addChild(this.globalCntTxt);
      }
      
      private final function createGlobalSysMsgTextfield() : void
      {
         var _loc1_:Object = this._Styles.getStyle(".globalText");
         this._globalSysMsgTxt = new TextField();
         this._globalSysMsgTxt.width = 500;
         this._globalSysMsgTxt.height = 200;
         this._globalSysMsgTxt.multiline = false;
         this._globalSysMsgTxt.selectable = false;
         this._globalSysMsgTxt.mouseEnabled = _loc1_["mouseEnabled"] == "true";
         this._globalSysMsgTxt.border = _loc1_["border"] == "true";
         this._globalSysMsgTxt.background = _loc1_["background"] == "true";
         this._globalSysMsgTxt.wordWrap = _loc1_["wordWrap"] == "true";
         this._globalSysMsgTxt.defaultTextFormat = this._Styles.transform(_loc1_);
         this._globalSysMsgTxt.visible = false;
         this._globalSysMsgTxt.x = class_51.var_39 / 2 - this._globalSysMsgTxt.width / 2;
         this._globalSysMsgTxt.y = class_51.var_40 / 2 - this._globalSysMsgTxt.height / 2;
         this.addChild(this._globalSysMsgTxt);
      }
      
      private final function sysMsg(param1:String) : void
      {
         if(param1)
         {
            this._globalSysMsgTxt.htmlText = param1;
            this._globalSysMsgTxt.visible = true;
         }
         this._globalSysMsgTxt.x = (class_47.method_49.stageWidth - this._globalSysMsgTxt.width) * 0.5;
         this._globalSysMsgTxt.y = (class_47.method_49.stageHeight - this._globalSysMsgTxt.height) * 0.5;
      }
      
      private final function sysMsgClear() : void
      {
         this._globalSysMsgTxt.htmlText = "";
         this._globalSysMsgTxt.visible = false;
      }
      
      public final function onStageResize() : void
      {
         if(class_12.var_104 != class_12.const_15)
         {
            return;
         }
         var _loc1_:int = class_51.var_39;
         var _loc2_:int = class_51.var_40;
         class_47.method_112.method_939();
         this.menuContainer.onStageResize();
         this.notifierContainer.general.width = _loc1_;
         this.notifierContainer.general.height = _loc2_;
         this.globalActionBtnContainer.method_438();
         if(this._chatWindow)
         {
            this._chatWindow.method_451();
         }
         this.notifierContainer.center();
         this.instantMsgBox.x = (_loc1_ - this.instantMsgBox.width) * 0.5;
         this.globalCntTxt.x = (_loc1_ - this.globalCntTxt.width) * 0.5;
         this.mapScroll.method_34();
         var _loc3_:class_167 = this.subMenuContainer.getSubMenuByName("options");
         _loc3_.placeOnCenter();
         this.refreshValidStageArea();
         if(this.configMode)
         {
            this.drawGrid();
            this.sysMsg(null);
         }
      }
      
      public final function enterConfigMode() : void
      {
         var _loc2_:class_155 = null;
         if(this.configMode)
         {
            return;
         }
         this.quickBeltsForRestore = new Dictionary();
         this.restoreQuickIcons = new Array();
         this.restoreQuickPos = new Array();
         this.restoreQuickCount = 0;
         this.configMode = true;
         var _loc1_:class_204 = new class_204(class_204.const_816,class_204.const_1261);
         dispatchEvent(_loc1_);
         class_29.method_21().method_446();
         this.subMenuContainer.switchSubMenu("options",true);
         this._saveGameState = class_41.name_3.name_17;
         class_41.name_3.name_17 = class_41.const_459;
         this.drawGrid();
         this.actionsBar.method_115();
         var _loc3_:int = 0;
         while(_loc3_ < this.quickBelt.length)
         {
            _loc2_ = this.quickBelt[_loc3_];
            _loc2_.method_115();
            this.restoreQuickIcons[_loc3_] = class_49.name_3.method_1576(_loc3_);
            this.restoreQuickPos[_loc3_] = this.getQuickbarPos(_loc2_);
            _loc3_++;
         }
         this.restoreQuickCount = class_43.const_337;
         this.globalActionBtnContainer.method_115();
         this.miniMap.method_115();
         this.miniMap.method_632.method_391();
         this.globalDisplayContainer.method_115();
         this.battleInfoContainer.method_115();
         this.targetInfoContainer.method_115();
         this.infoIconContainer.method_115();
         this._zoomMenu.method_115();
         class_47.method_24.method_122.method_115();
         this.sysMsg(class_47.method_22.method_28("config_mode_active"));
         this.subMenuContainer.switchMenu(class_214.const_160);
         this.subMenuContainer.getMenu(class_214.const_160).method_440 = true;
      }
      
      public final function exitConfigMode(param1:Boolean = true) : void
      {
         var _loc3_:class_155 = null;
         if(!this.configMode)
         {
            return;
         }
         var _loc2_:class_204 = new class_204(class_204.const_816,class_204.const_1880);
         dispatchEvent(_loc2_);
         if(!param1)
         {
            this.restoreQuickBelts();
         }
         this.configMode = false;
         this.clearGrid();
         this.actionsBar.method_107();
         var _loc4_:int = 0;
         while(_loc4_ < this.quickBelt.length)
         {
            _loc3_ = this.quickBelt[_loc4_];
            _loc3_.method_107();
            _loc4_++;
         }
         this.globalActionBtnContainer.method_107();
         this.miniMap.method_107();
         this.globalDisplayContainer.method_107();
         this.battleInfoContainer.method_107();
         this.targetInfoContainer.method_107();
         this.infoIconContainer.method_107();
         this._zoomMenu.method_107();
         class_47.method_24.method_122.method_107();
         this.sysMsgClear();
         if(param1)
         {
            class_47.method_112.method_2201(this);
         }
         else
         {
            class_47.method_112.method_939();
            if(class_12.var_104 == class_12.const_15)
            {
               this.onStageResize();
            }
         }
         if(class_41.name_3.name_17 == class_41.const_459)
         {
            class_41.name_3.name_17 = this._saveGameState;
         }
         var _loc5_:class_213 = this.subMenuContainer.getMenu(class_214.const_160) as class_213;
         _loc5_.method_611();
         _loc5_.method_440 = false;
         this.subMenuContainer.switchMenu(class_214.const_160,true);
      }
      
      public final function getQuickbarPos(param1:class_155) : Vector.<int>
      {
         var _loc2_:Vector.<int> = new Vector.<int>();
         var _loc3_:int = param1.method_351;
         var _loc4_:int = param1.method_340;
         var _loc5_:int = param1.name_81;
         _loc2_.push(_loc3_);
         _loc2_.push(_loc4_);
         _loc2_.push(_loc5_);
         return _loc2_;
      }
      
      public final function setComponentsVisible(param1:Boolean) : void
      {
         var _loc2_:class_155 = null;
         var _loc3_:int = 0;
         if(class_47.method_51.method_141(class_76.const_136))
         {
            param1 = false;
         }
         this.actionsBar.visible = param1;
         while(_loc3_ < this.quickBelt.length)
         {
            _loc2_ = this.quickBelt[_loc3_];
            _loc2_.visible = param1;
            _loc3_++;
         }
         this.globalActionBtnContainer.method_109(class_205.const_166).visible = param1;
         this.miniMap.method_132(param1);
         this.globalDisplayContainer.method_132(param1);
         this.battleInfoContainer.visible = param1;
         this.targetInfoContainer.visible = param1;
         this.infoIconContainer.visible = param1;
         this._zoomMenu.visible = param1;
         this.subMenuContainer.visible = param1;
         this.messageBoxContainer.visible = param1;
         if(this._chatWindow)
         {
            this._chatWindow.method_1548(param1 && class_49.method_42(class_43.const_370));
         }
      }
      
      public function get zoomMenu() : class_212
      {
         return this._zoomMenu;
      }
      
      public function get validStageArea() : Rectangle
      {
         return this._validStageArea;
      }
      
      public function get chatWindow() : class_112
      {
         return this._chatWindow;
      }
      
      public final function createChatWindow(param1:Sprite) : void
      {
         if(this._chatWindow == null)
         {
            param1.addChild(this._chatWindow = new class_112());
         }
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         return this.addChildAt(param1,this.tempContainer.numChildren);
      }
      
      override public function addChildAt(param1:DisplayObject, param2:int) : DisplayObject
      {
         return this.tempContainer.addChildAt(param1,param2);
      }
      
      override public function removeChild(param1:DisplayObject) : DisplayObject
      {
         return this.tempContainer.removeChild(param1);
      }
      
      public final function createQuickBelt(param1:class_218 = null) : void
      {
         var _loc3_:Vector.<int> = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(this.quickBelt.length >= MAX_QUICKBELT_COUNT)
         {
            return;
         }
         var _loc2_:class_155 = new class_155(this,this.quickBelt.length);
         this.quickBelt.push(_loc2_);
         if(param1 != null)
         {
            this.cleanQuickbeltByID(this.quickBelt.length - 1);
         }
         this.uiElementsArr.push(this.addChildAt(_loc2_,6));
         if(param1 != null)
         {
            _loc2_.method_115();
            class_107.name_3.method_95(class_43.const_337,this.quickBelt.length - 1);
         }
         if(!param1 || param1.method_1447 == 0)
         {
            _loc2_.method_2517();
         }
         else
         {
            _loc3_ = this.restoreQuickPos[param1.name_7];
            if(!_loc3_)
            {
               return;
            }
            _loc4_ = _loc3_[0];
            _loc5_ = _loc3_[1];
            _loc6_ = _loc3_[2];
            _loc2_.method_2486(_loc4_,_loc5_,_loc6_);
         }
      }
      
      private final function restoreQuickBelts() : void
      {
         var _loc1_:Object = null;
         var _loc2_:class_155 = null;
         for each(_loc1_ in this.quickBeltsForRestore)
         {
            _loc2_ = _loc1_ as class_155;
            if(_loc2_.var_2094 != -1)
            {
               _loc2_.var_222 = _loc2_.var_2094;
            }
            this.quickBelt.push(_loc2_);
            this.uiElementsArr.push(this.addChildAt(_loc2_,6));
         }
         class_107.name_3.method_95(class_43.const_337,this.quickBelt.length - 1);
      }
      
      public final function removeQuickBelt(param1:class_218) : void
      {
         var _loc4_:Object = null;
         var _loc5_:class_155 = null;
         if(!this.configMode)
         {
            return;
         }
         var _loc2_:int = param1.name_7;
         var _loc3_:int = 0;
         while(_loc3_ < this.uiElementsArr.length)
         {
            _loc4_ = this.uiElementsArr[_loc3_];
            if(_loc4_ is class_155)
            {
               _loc5_ = _loc4_ as class_155;
               if(_loc5_.var_222 == _loc2_)
               {
                  if(_loc2_ == 1 && this.quickBelt.length == MAX_QUICKBELT_COUNT)
                  {
                     this.rebuild(_loc5_);
                  }
                  _loc5_.parent.removeChild(_loc5_);
                  this.uiElementsArr.splice(_loc3_,1);
                  this.quickBeltsForRestore[_loc5_] = _loc5_;
                  break;
               }
            }
            _loc3_++;
         }
         this.quickBelt.splice(_loc2_,1);
         class_107.name_3.method_95(class_43.const_337,this.quickBelt.length - 1);
      }
      
      public final function cleanQuickbelt(param1:class_155) : void
      {
         var _loc5_:int = 0;
         var _loc2_:int = param1.var_222;
         var _loc3_:int = _loc2_ == 1?int(class_43.const_119):int(class_43.const_180);
         var _loc4_:int = 0;
         while(_loc4_ <= 9)
         {
            _loc5_ = _loc3_ + _loc4_;
            class_107.name_3.method_102(_loc5_);
            _loc4_++;
         }
      }
      
      public final function cleanQuickbeltByID(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc2_:int = param1 == 1?int(class_43.const_119):int(class_43.const_180);
         var _loc3_:int = 0;
         while(_loc3_ <= 9)
         {
            _loc4_ = _loc2_ + _loc3_;
            class_107.name_3.method_102(_loc4_);
            _loc3_++;
         }
         if(_loc2_ == class_43.const_119)
         {
            class_107.name_3.method_102(class_43.const_188);
            class_107.name_3.method_102(class_43.const_161);
            class_107.name_3.method_102(class_43.const_232);
         }
         if(_loc2_ == class_43.const_180)
         {
            class_107.name_3.method_102(class_43.const_279);
            class_107.name_3.method_102(class_43.const_317);
            class_107.name_3.method_102(class_43.const_295);
         }
      }
      
      public final function rebuild(param1:class_155) : void
      {
         var _loc2_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:Dictionary = new Dictionary();
         var _loc4_:class_155 = this.quickBelt[this.quickBelt.length - 1];
         var _loc5_:int = 0;
         while(_loc5_ <= 9)
         {
            _loc2_ = class_49.name_3.method_46(class_43.const_180 + _loc5_);
            if(_loc2_ == 0)
            {
               _loc6_ = class_43.const_119 + _loc5_;
               class_107.name_3.method_102(_loc6_);
            }
            class_107.name_3.method_95(class_43.const_119 + _loc5_,_loc2_);
            _loc3_[class_43.const_119 + _loc5_] = _loc2_;
            _loc5_++;
         }
         _loc2_ = _loc4_.method_351;
         class_107.name_3.method_95(class_43.const_188,_loc2_);
         _loc3_[class_43.const_188] = _loc2_;
         _loc2_ = _loc4_.method_340;
         class_107.name_3.method_95(class_43.const_161,_loc2_);
         _loc3_[class_43.const_161] = _loc2_;
         _loc2_ = _loc4_.method_2134();
         class_107.name_3.method_95(class_43.const_232,_loc2_);
         class_107.name_3.method_932(_loc3_);
         _loc4_.var_2094 = _loc4_.var_222;
         _loc4_.var_222 = 1;
      }
      
      private final function _UserInterface_MenusContainer1_i() : MenusContainer
      {
         var _loc1_:MenusContainer = new MenusContainer();
         _loc1_.id = "menuContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.menuContainer = _loc1_;
         BindingManager.executeBindings(this,"menuContainer",this.menuContainer);
         return _loc1_;
      }
      
      private final function _UserInterface_UIComponent1_i() : UIComponent
      {
         var _loc1_:UIComponent = new UIComponent();
         _loc1_.id = "tempContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tempContainer = _loc1_;
         BindingManager.executeBindings(this,"tempContainer",this.tempContainer);
         return _loc1_;
      }
      
      private final function _UserInterface_InfoMessageMenu1_i() : InfoMessageMenu
      {
         var _loc1_:InfoMessageMenu = new InfoMessageMenu();
         _loc1_.x = 40;
         _loc1_.y = 90;
         _loc1_.id = "infoMessageContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoMessageContainer = _loc1_;
         BindingManager.executeBindings(this,"infoMessageContainer",this.infoMessageContainer);
         return _loc1_;
      }
      
      private final function _UserInterface_NotifierContainer1_i() : NotifierContainer
      {
         var _loc1_:NotifierContainer = new NotifierContainer();
         _loc1_.id = "notifierContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.notifierContainer = _loc1_;
         BindingManager.executeBindings(this,"notifierContainer",this.notifierContainer);
         return _loc1_;
      }
      
      private final function _UserInterface_InstantMessageContainer1_i() : InstantMessageContainer
      {
         var _loc1_:InstantMessageContainer = new InstantMessageContainer();
         _loc1_.id = "instantMsgBox";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.instantMsgBox = _loc1_;
         BindingManager.executeBindings(this,"instantMsgBox",this.instantMsgBox);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get infoMessageContainer() : InfoMessageMenu
      {
         return this._646779144infoMessageContainer;
      }
      
      public function set infoMessageContainer(param1:InfoMessageMenu) : void
      {
         var _loc2_:Object = this._646779144infoMessageContainer;
         if(_loc2_ !== param1)
         {
            this._646779144infoMessageContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoMessageContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get instantMsgBox() : InstantMessageContainer
      {
         return this._151128011instantMsgBox;
      }
      
      public function set instantMsgBox(param1:InstantMessageContainer) : void
      {
         var _loc2_:Object = this._151128011instantMsgBox;
         if(_loc2_ !== param1)
         {
            this._151128011instantMsgBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"instantMsgBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get menuContainer() : MenusContainer
      {
         return this._1784090142menuContainer;
      }
      
      public function set menuContainer(param1:MenusContainer) : void
      {
         var _loc2_:Object = this._1784090142menuContainer;
         if(_loc2_ !== param1)
         {
            this._1784090142menuContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"menuContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get notifierContainer() : NotifierContainer
      {
         return this._392942213notifierContainer;
      }
      
      public function set notifierContainer(param1:NotifierContainer) : void
      {
         var _loc2_:Object = this._392942213notifierContainer;
         if(_loc2_ !== param1)
         {
            this._392942213notifierContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"notifierContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tempContainer() : UIComponent
      {
         return this._1058392307tempContainer;
      }
      
      public function set tempContainer(param1:UIComponent) : void
      {
         var _loc2_:Object = this._1058392307tempContainer;
         if(_loc2_ !== param1)
         {
            this._1058392307tempContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tempContainer",_loc2_,param1));
            }
         }
      }
   }
}
