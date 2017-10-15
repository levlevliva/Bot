package com.bigpoint.seafight.view.userInterface.widgets.menus.skins
{
   import com.adobe.serialization.json.JSONTokenizer;
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.display.utils.onCooldownToolTip;
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_1187;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.DynamicImageButton;
   import com.bigpoint.seafight.view.common.components.MinimizeLockWindow;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.common.components.WindowBG;
   import com.bigpoint.seafight.view.common.components.shipcoverflow.components.ShipCoverFlowItem;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.common.skins.DynamicImageButtonSkin;
   import com.bigpoint.seafight.view.popups.avatarupload.component.AvatarUploadPopup;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.common.table.CommonHListSkin;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.event.modules.common.skins.NpcKillsModuleSkin;
   import com.bigpoint.seafight.view.popups.event.modules.common.skins.RankingModuleSkin;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameScoreScreenModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.GemsInventoryGroup;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.IGemsInventory;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemListVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemsInventoryVo;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindow;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowController;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildTreasuryLogListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildRankMemberListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankItemListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabButtonListItem;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.PlayerProfileViewVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.QuestWindowHeaderBG;
   import com.bigpoint.seafight.view.popups.shipequipment.skins.StatisticListSkin;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.class_207;
   import com.bigpoint.seafight.view.userInterface.class_208;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.class_211;
   import com.bigpoint.seafight.view.userInterface.class_212;
   import com.bigpoint.seafight.view.userInterface.class_215;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.bigpoint.seafight.view.userInterface.class_221;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flashx.textLayout.conversion.TextConverter;
   import flashx.textLayout.elements.TextFlow;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_806;
   import net.bigpoint.seafight.com.module.guild.class_821;
   import net.bigpoint.seafight.com.module.guild.class_906;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import net.bigpoint.seafight.com.module.useraction.UserActionFailedReason;
   import org.osflash.signals.ISlot;
   import org.osflash.signals.SlotList;
   import package_10.class_18;
   import package_10.class_38;
   import package_100.class_1186;
   import package_11.class_130;
   import package_110.class_526;
   import package_111.class_696;
   import package_117.class_733;
   import package_121.class_841;
   import package_123.class_1032;
   import package_130.class_1143;
   import package_130.class_663;
   import package_130.class_711;
   import package_14.class_220;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_140.class_985;
   import package_143.class_542;
   import package_143.class_933;
   import package_145.class_1161;
   import package_145.class_567;
   import package_145.class_569;
   import package_146.class_1209;
   import package_146.class_1223;
   import package_146.class_568;
   import package_153.class_931;
   import package_16.class_28;
   import package_163.class_846;
   import package_163.class_884;
   import package_166.class_971;
   import package_168.class_1142;
   import package_168.class_1165;
   import package_168.class_976;
   import package_169.class_1130;
   import package_169.class_1131;
   import package_169.class_1133;
   import package_169.class_1134;
   import package_169.class_1152;
   import package_169.class_1153;
   import package_169.class_1154;
   import package_169.class_1155;
   import package_169.class_1156;
   import package_169.class_1190;
   import package_169.class_1213;
   import package_169.class_1216;
   import package_169.class_977;
   import package_17.class_224;
   import package_17.class_37;
   import package_17.class_54;
   import package_174.class_1375;
   import package_184.class_1135;
   import package_187.class_1164;
   import package_188.class_1144;
   import package_188.class_1149;
   import package_188.class_1151;
   import package_188.class_1201;
   import package_188.class_1203;
   import package_188.class_1215;
   import package_190.class_1181;
   import package_191.class_1171;
   import package_191.class_1173;
   import package_191.class_1174;
   import package_191.class_1175;
   import package_191.class_1177;
   import package_192.class_1172;
   import package_195.class_1188;
   import package_197.class_1197;
   import package_198.class_1202;
   import package_198.class_1204;
   import package_198.class_1206;
   import package_198.class_1207;
   import package_198.class_1208;
   import package_198.class_1211;
   import package_198.class_1214;
   import package_198.class_1218;
   import package_198.class_1221;
   import package_199.class_1220;
   import package_20.class_33;
   import package_200.class_1222;
   import package_204.class_1295;
   import package_23.class_42;
   import package_26.class_218;
   import package_26.class_969;
   import package_29.class_57;
   import package_3.t;
   import package_32.class_64;
   import package_34.class_107;
   import package_34.class_116;
   import package_34.class_1499;
   import package_36.class_1417;
   import package_40.class_416;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_98;
   import package_44.class_108;
   import package_46.class_1224;
   import package_46.class_1500;
   import package_47.class_935;
   import package_48.class_996;
   import package_49.class_137;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_50.class_141;
   import package_50.class_219;
   import package_51.class_974;
   import package_52.class_309;
   import package_54.class_319;
   import package_58.class_175;
   import package_6.class_14;
   import package_61.class_787;
   import package_72.class_203;
   import package_80.class_1166;
   import package_80.class_1167;
   import package_80.class_1210;
   import package_80.class_1212;
   import package_80.class_261;
   import package_84.class_270;
   import package_88.class_1093;
   import package_88.class_290;
   import package_9.class_120;
   import package_91.class_1246;
   import package_93.class_987;
   import package_95.class_341;
   import package_97.class_409;
   import package_97.class_752;
   import package_99.class_374;
   import package_99.class_458;
   import package_99.class_786;
   import package_99.class_810;
   import package_99.class_823;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichEditableText;
   import spark.components.RichText;
   import spark.components.Scroller;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   import spark.core.SpriteVisualElement;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.layouts.BasicLayout;
   import spark.layouts.HorizontalLayout;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   public final class BasicResizableWindowSkin extends SparkSkin implements IStateClient2
   {
      
      protected static const EDGE_WIDTH:int = 10;
       
      
      private var _1332194002background:Rect;
      
      private var _1427077073backgroundFill:SolidColor;
      
      private var _1383304148border:Rect;
      
      private var _1395787140borderStroke:SolidColorStroke;
      
      private var _631173356bottomGroup:Group;
      
      private var _312699062closeButton:DynamicImageButton;
      
      private var _809612678contentGroup:Group;
      
      private var _567321830contents:Group;
      
      private var _139410089controlBarGroup:Group;
      
      private var _391915467disabledLayer:Group;
      
      private var _735423955helpButton:DynamicImageButton;
      
      private var _1302741632infoButton:DynamicImageButton;
      
      private var _104976386moveArea:Group;
      
      private var _271562369navigationbar:Group;
      
      private var _2033767917refreshButton:DynamicImageButton;
      
      private var _1870028133titleBar:Group;
      
      private var _1893287094titleDisplay:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var localBorderColor:uint = 0;
      
      private var localBGColor:uint = 0;
      
      private var localBorderAlpha:Number = 0;
      
      private var localBGAlpha:Number = 0;
      
      private var isdirty:Boolean = false;
      
      private var _titleString:String;
      
      mx_internal var _BasicResizableWindowSkin_StylesInit_done:Boolean = false;
      
      private var _213507019hostComponent:ResizeableExtendedWindow;
      
      public function BasicResizableWindowSkin()
      {
         super();
         mx_internal::_document = this;
         this.name = "BasicResizableWindowSkin";
         this.blendMode = "normal";
         this.mouseEnabled = false;
         this.minWidth = 76;
         this.maxHeight = 10;
         this.height = 10;
         this.mxmlContent = [this._BasicResizableWindowSkin_WindowBG1_c(),this._BasicResizableWindowSkin_Group1_c()];
         this.currentState = "normal";
         this.addEventListener("initialize",this.___BasicResizableWindowSkin_SparkSkin1_initialize);
         var _loc1_:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._BasicResizableWindowSkin_Group7_i);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"inactive",
            "stateGroups":["inactiveGroup"],
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
         }),new State({
            "name":"normalWithControlBar",
            "stateGroups":["withControls"],
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_loc1_,
               "destination":"contents",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["contentGroup"]
            })]
         }),new State({
            "name":"inactiveWithControlBar",
            "stateGroups":["inactiveGroup","withControls"],
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_loc1_,
               "destination":"contents",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["contentGroup"]
            })]
         }),new State({
            "name":"disabledWithControlBar",
            "stateGroups":["withControls"],
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_loc1_,
               "destination":"contents",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["contentGroup"]
            }),new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
         })];
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         mx_internal::_BasicResizableWindowSkin_StylesInit();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private final function init(param1:FlexEvent) : void
      {
         this.localBorderColor = getStyle("borderColor");
         this.localBorderAlpha = getStyle("borderAlpha");
         this.localBGColor = getStyle("backgroundColor");
         this.localBGAlpha = getStyle("backgroundAlpha");
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(!this.hostComponent)
         {
            return;
         }
         if(!this.hostComponent.helpButton_visible)
         {
            this.helpButton.visible = false;
         }
         if(!this.hostComponent.refreshButton_visible)
         {
            this.refreshButton.visible = false;
         }
         if(!this.hostComponent.infoButton_visible)
         {
            this.infoButton.visible = false;
         }
         if(this._titleString && this.titleDisplay.text != this._titleString)
         {
            this.titleDisplay.text = this._titleString;
            this.isdirty = true;
         }
         if(this.isdirty)
         {
            invalidateDisplayList();
            this.isdirty = false;
         }
      }
      
      public function set titleString(param1:String) : void
      {
         this._titleString = param1;
         invalidateProperties();
      }
      
      private final function block(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private final function _BasicResizableWindowSkin_WindowBG1_c() : WindowBG
      {
         var _loc1_:WindowBG = new WindowBG();
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.left = -18;
         _loc1_.right = -19;
         _loc1_.top = -19;
         _loc1_.bottom = -19;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.mxmlContent = [this._BasicResizableWindowSkin_Rect1_i(),this._BasicResizableWindowSkin_Rect2_i(),this._BasicResizableWindowSkin_Group2_i(),this._BasicResizableWindowSkin_Group9_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.visible = false;
         _loc1_.stroke = this._BasicResizableWindowSkin_SolidColorStroke1_i();
         _loc1_.initialized(this,"border");
         this.border = _loc1_;
         BindingManager.executeBindings(this,"border",this.border);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_SolidColorStroke1_i() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.weight = 0;
         this.borderStroke = _loc1_;
         BindingManager.executeBindings(this,"borderStroke",this.borderStroke);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 1;
         _loc1_.top = 1;
         _loc1_.right = 1;
         _loc1_.bottom = 1;
         _loc1_.fill = this._BasicResizableWindowSkin_SolidColor1_i();
         _loc1_.initialized(this,"background");
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 0;
         _loc1_.alpha = 0.8;
         this.backgroundFill = _loc1_;
         BindingManager.executeBindings(this,"backgroundFill",this.backgroundFill);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.layout = this._BasicResizableWindowSkin_VerticalLayout1_c();
         _loc1_.mxmlContent = [this._BasicResizableWindowSkin_Group3_i(),this._BasicResizableWindowSkin_Group6_i()];
         _loc1_.id = "contents";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contents = _loc1_;
         BindingManager.executeBindings(this,"contents",this.contents);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "justify";
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 39;
         _loc1_.mxmlContent = [this._BasicResizableWindowSkin_QuestWindowHeaderBG1_c(),this._BasicResizableWindowSkin_Rect3_c(),this._BasicResizableWindowSkin_Label1_i(),this._BasicResizableWindowSkin_Group4_i(),this._BasicResizableWindowSkin_HGroup1_c(),this._BasicResizableWindowSkin_Group5_i(),this._BasicResizableWindowSkin_BriskImageDynaLib1_c(),this._BasicResizableWindowSkin_BriskImageDynaLib2_c(),this._BasicResizableWindowSkin_HGroup2_c()];
         _loc1_.id = "titleBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleBar = _loc1_;
         BindingManager.executeBindings(this,"titleBar",this.titleBar);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_QuestWindowHeaderBG1_c() : QuestWindowHeaderBG
      {
         var _loc1_:QuestWindowHeaderBG = new QuestWindowHeaderBG();
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_Rect3_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.top = 30;
         _loc1_.percentWidth = 100;
         _loc1_.height = 10;
         _loc1_.fill = this._BasicResizableWindowSkin_BriskBitmapFill1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_BriskBitmapFill1_c() : BriskBitmapFill
      {
         var _loc1_:BriskBitmapFill = new BriskBitmapFill();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "rope_seamless";
         _loc1_.fillMode = "repeat";
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.styleName = "fontwhite15";
         _loc1_.text = "";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = -1;
         _loc1_.filters = [this._BasicResizableWindowSkin_DropShadowFilter1_c()];
         _loc1_.id = "titleDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleDisplay = _loc1_;
         BindingManager.executeBindings(this,"titleDisplay",this.titleDisplay);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.distance = 2;
         _loc1_.angle = 90;
         _loc1_.color = 0;
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = -20;
         _loc1_.bottom = 0;
         _loc1_.id = "moveArea";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moveArea = _loc1_;
         BindingManager.executeBindings(this,"moveArea",this.moveArea);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.right = 5;
         _loc1_.top = 4;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._BasicResizableWindowSkin_DynamicImageButton1_i(),this._BasicResizableWindowSkin_DynamicImageButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.buttonMode = true;
         _loc1_.styleName = "windowhelp";
         _loc1_.id = "helpButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.helpButton = _loc1_;
         BindingManager.executeBindings(this,"helpButton",this.helpButton);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_DynamicImageButton2_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.buttonMode = true;
         _loc1_.styleName = "windowclose";
         _loc1_.id = "closeButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.closeButton = _loc1_;
         BindingManager.executeBindings(this,"closeButton",this.closeButton);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mouseEnabled = false;
         _loc1_.id = "navigationbar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.navigationbar = _loc1_;
         BindingManager.executeBindings(this,"navigationbar",this.navigationbar);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "robeshadow_l";
         _loc1_.top = 30;
         _loc1_.left = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "robeshadow_r";
         _loc1_.top = 30;
         _loc1_.right = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.left = 5;
         _loc1_.top = 4;
         _loc1_.gap = 2;
         _loc1_.mxmlContent = [this._BasicResizableWindowSkin_DynamicImageButton3_i(),this._BasicResizableWindowSkin_DynamicImageButton4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_DynamicImageButton3_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.buttonMode = true;
         _loc1_.styleName = "windowrefresh";
         _loc1_.id = "refreshButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.refreshButton = _loc1_;
         BindingManager.executeBindings(this,"refreshButton",this.refreshButton);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_DynamicImageButton4_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.buttonMode = true;
         _loc1_.styleName = "windowInfo";
         _loc1_.id = "infoButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.infoButton = _loc1_;
         BindingManager.executeBindings(this,"infoButton",this.infoButton);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_Group6_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = -20;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.minWidth = 0;
         _loc1_.minHeight = 0;
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_Group7_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.minWidth = 0;
         _loc1_.minHeight = 0;
         _loc1_.mxmlContent = [this._BasicResizableWindowSkin_Group8_i()];
         _loc1_.id = "bottomGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomGroup = _loc1_;
         BindingManager.executeBindings(this,"bottomGroup",this.bottomGroup);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_Group8_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 1;
         _loc1_.bottom = 1;
         _loc1_.minWidth = 0;
         _loc1_.minHeight = 0;
         _loc1_.layout = this._BasicResizableWindowSkin_HorizontalLayout1_c();
         _loc1_.id = "controlBarGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.controlBarGroup = _loc1_;
         BindingManager.executeBindings(this,"controlBarGroup",this.controlBarGroup);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         _loc1_.paddingLeft = 10;
         _loc1_.paddingRight = 10;
         _loc1_.paddingTop = 7;
         _loc1_.paddingBottom = 7;
         _loc1_.gap = 10;
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_Group9_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.right = 0;
         _loc1_.left = 0;
         _loc1_.bottom = 0;
         _loc1_.top = 40;
         _loc1_.enabled = false;
         _loc1_.visible = false;
         _loc1_.mxmlContent = [this._BasicResizableWindowSkin_Rect4_c()];
         _loc1_.addEventListener("mouseUp",this.__disabledLayer_mouseUp);
         _loc1_.id = "disabledLayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.disabledLayer = _loc1_;
         BindingManager.executeBindings(this,"disabledLayer",this.disabledLayer);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_Rect4_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.alpha = 0.4;
         _loc1_.stroke = this._BasicResizableWindowSkin_SolidColorStroke2_c();
         _loc1_.fill = this._BasicResizableWindowSkin_SolidColor2_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_SolidColorStroke2_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 0;
         _loc1_.weight = 0;
         return _loc1_;
      }
      
      private final function _BasicResizableWindowSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 0;
         return _loc1_;
      }
      
      public final function __disabledLayer_mouseUp(param1:MouseEvent) : void
      {
         this.block(param1);
      }
      
      public final function ___BasicResizableWindowSkin_SparkSkin1_initialize(param1:FlexEvent) : void
      {
         this.init(param1);
      }
      
      mx_internal final function _BasicResizableWindowSkin_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         if(mx_internal::_BasicResizableWindowSkin_StylesInit_done)
         {
            return;
         }
         mx_internal::_BasicResizableWindowSkin_StylesInit_done = true;
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","windowclose");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".windowclose");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.disabledImage = "btn_close";
               this.downImage = "btn_close";
               this.skinClass = DynamicImageButtonSkin;
               this.overImage = "btn_close";
               this.dynaLibName = "componentassets";
               this.upImage = "btn_close";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","windowhelp");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".windowhelp");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.disabledImage = "btn_help";
               this.downImage = "btn_help";
               this.skinClass = DynamicImageButtonSkin;
               this.overImage = "btn_help";
               this.dynaLibName = "componentassets";
               this.upImage = "btn_help";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","windowInfo");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".windowInfo");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.disabledImage = "btn_window_inspect";
               this.downImage = "btn_window_inspect";
               this.skinClass = DynamicImageButtonSkin;
               this.overImage = "btn_window_inspect";
               this.dynaLibName = "componentassets";
               this.upImage = "btn_window_inspect";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","windowrefresh");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".windowrefresh");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.disabledImage = "btn_refresh";
               this.downImage = "btn_refresh";
               this.skinClass = DynamicImageButtonSkin;
               this.overImage = "btn_refresh";
               this.dynaLibName = "componentassets";
               this.upImage = "btn_refresh";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","fontwhite15");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".fontwhite15");
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
               this.fontSize = 15;
               this.fontWeight = "bold";
            };
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : Rect
      {
         return this._1332194002background;
      }
      
      public function set background(param1:Rect) : void
      {
         var _loc2_:Object = this._1332194002background;
         if(_loc2_ !== param1)
         {
            this._1332194002background = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundFill() : SolidColor
      {
         return this._1427077073backgroundFill;
      }
      
      public function set backgroundFill(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1427077073backgroundFill;
         if(_loc2_ !== param1)
         {
            this._1427077073backgroundFill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundFill",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get border() : Rect
      {
         return this._1383304148border;
      }
      
      public function set border(param1:Rect) : void
      {
         var _loc2_:Object = this._1383304148border;
         if(_loc2_ !== param1)
         {
            this._1383304148border = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"border",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get borderStroke() : SolidColorStroke
      {
         return this._1395787140borderStroke;
      }
      
      public function set borderStroke(param1:SolidColorStroke) : void
      {
         var _loc2_:Object = this._1395787140borderStroke;
         if(_loc2_ !== param1)
         {
            this._1395787140borderStroke = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"borderStroke",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomGroup() : Group
      {
         return this._631173356bottomGroup;
      }
      
      public function set bottomGroup(param1:Group) : void
      {
         var _loc2_:Object = this._631173356bottomGroup;
         if(_loc2_ !== param1)
         {
            this._631173356bottomGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get closeButton() : DynamicImageButton
      {
         return this._312699062closeButton;
      }
      
      public function set closeButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._312699062closeButton;
         if(_loc2_ !== param1)
         {
            this._312699062closeButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc2_ !== param1)
         {
            this._809612678contentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contents() : Group
      {
         return this._567321830contents;
      }
      
      public function set contents(param1:Group) : void
      {
         var _loc2_:Object = this._567321830contents;
         if(_loc2_ !== param1)
         {
            this._567321830contents = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contents",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get controlBarGroup() : Group
      {
         return this._139410089controlBarGroup;
      }
      
      public function set controlBarGroup(param1:Group) : void
      {
         var _loc2_:Object = this._139410089controlBarGroup;
         if(_loc2_ !== param1)
         {
            this._139410089controlBarGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"controlBarGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get disabledLayer() : Group
      {
         return this._391915467disabledLayer;
      }
      
      public function set disabledLayer(param1:Group) : void
      {
         var _loc2_:Object = this._391915467disabledLayer;
         if(_loc2_ !== param1)
         {
            this._391915467disabledLayer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"disabledLayer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get helpButton() : DynamicImageButton
      {
         return this._735423955helpButton;
      }
      
      public function set helpButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._735423955helpButton;
         if(_loc2_ !== param1)
         {
            this._735423955helpButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"helpButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoButton() : DynamicImageButton
      {
         return this._1302741632infoButton;
      }
      
      public function set infoButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._1302741632infoButton;
         if(_loc2_ !== param1)
         {
            this._1302741632infoButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moveArea() : Group
      {
         return this._104976386moveArea;
      }
      
      public function set moveArea(param1:Group) : void
      {
         var _loc2_:Object = this._104976386moveArea;
         if(_loc2_ !== param1)
         {
            this._104976386moveArea = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveArea",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get navigationbar() : Group
      {
         return this._271562369navigationbar;
      }
      
      public function set navigationbar(param1:Group) : void
      {
         var _loc2_:Object = this._271562369navigationbar;
         if(_loc2_ !== param1)
         {
            this._271562369navigationbar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"navigationbar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get refreshButton() : DynamicImageButton
      {
         return this._2033767917refreshButton;
      }
      
      public function set refreshButton(param1:DynamicImageButton) : void
      {
         var _loc2_:Object = this._2033767917refreshButton;
         if(_loc2_ !== param1)
         {
            this._2033767917refreshButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"refreshButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleBar() : Group
      {
         return this._1870028133titleBar;
      }
      
      public function set titleBar(param1:Group) : void
      {
         var _loc2_:Object = this._1870028133titleBar;
         if(_loc2_ !== param1)
         {
            this._1870028133titleBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleDisplay() : Label
      {
         return this._1893287094titleDisplay;
      }
      
      public function set titleDisplay(param1:Label) : void
      {
         var _loc2_:Object = this._1893287094titleDisplay;
         if(_loc2_ !== param1)
         {
            this._1893287094titleDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ResizeableExtendedWindow
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ResizeableExtendedWindow) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}
