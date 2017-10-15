package com.bigpoint.seafight.view.popups.cauldron.component
{
   import com.adobe.utils.StringUtil;
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_127;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentButtonClickEvent;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.cauldron.component.itemrenderer.CauldronLootItem;
   import com.bigpoint.seafight.view.popups.cauldron.component.itemrenderer.CauldronMapListItem;
   import com.bigpoint.seafight.view.popups.cauldron.component.skins.CauldronLootListSkin;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.StartProgressButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.event.modules.common.BulletText;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.GuildRankRightCheckBox;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildRankItemListItem;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.PlayerProfileViewVo;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusItem;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.skins.StatisticListSkin;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_1451;
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
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkinBold;
   import com.bit101.components.ScrollPane;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.media.Sound;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.gems.class_593;
   import net.bigpoint.seafight.com.module.gems.class_772;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import net.bigpoint.seafight.com.module.guild.class_607;
   import net.bigpoint.seafight.com.module.guild.class_625;
   import net.bigpoint.seafight.com.module.guild.class_678;
   import net.bigpoint.seafight.com.module.guild.class_758;
   import net.bigpoint.seafight.com.module.guild.class_817;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_10.class_202;
   import package_104.class_641;
   import package_105.class_369;
   import package_111.class_696;
   import package_121.class_841;
   import package_14.class_1002;
   import package_14.class_1313;
   import package_14.class_220;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_16.class_28;
   import package_163.class_884;
   import package_17.class_224;
   import package_170.class_979;
   import package_174.class_1374;
   import package_184.class_1135;
   import package_205.class_1353;
   import package_211.class_1369;
   import package_220.class_1601;
   import package_23.class_42;
   import package_26.class_101;
   import package_26.class_218;
   import package_41.class_103;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_98;
   import package_46.class_1455;
   import package_47.class_881;
   import package_48.class_996;
   import package_49.class_137;
   import package_5.class_123;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_984;
   import package_50.class_219;
   import package_51.class_148;
   import package_52.class_1083;
   import package_52.class_309;
   import package_54.class_1006;
   import package_54.class_160;
   import package_55.class_1228;
   import package_56.class_368;
   import package_57.class_171;
   import package_6.class_14;
   import package_76.class_279;
   import package_88.class_290;
   import package_90.class_316;
   import package_97.class_409;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.effects.Animate;
   import spark.effects.Rotate3D;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   import spark.effects.easing.Power;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class CauldronPopup extends VGroup implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _CauldronPopup_SimpleMotionPath1:SimpleMotionPath;
      
      private var _1931545201btnClearList:RedDeclineButton;
      
      private var _897920983btnStartRitual:StartProgressButton;
      
      private var _772937948cboMojos:ComboBox;
      
      private var _1261490154grpCurrency:VGroup;
      
      private var _2108504491grpRitualCost:VGroup;
      
      private var _2088999254grpStartRitaulButton:Group;
      
      private var _2034018458lootList:List;
      
      private var _836781601mapView:CauldronMapPiecesView;
      
      private var _196347861mapsList:List;
      
      private var _22944400powerEasing:Power;
      
      private var _599151817scrollAnimation:Animate;
      
      private var _1010041936stateMapView:State;
      
      private var _2087288733stateNormalView:State;
      
      private var _714875667subHeader:PopupSubHeader;
      
      private var _944957559txMojosValue:Label;
      
      private var _522085135txPearlCost:Label;
      
      private var _563212128txPearlsValue:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CauldronPopup()
      {
         var bindings:Array = null;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._CauldronPopup_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_bigpoint_seafight_view_popups_cauldron_component_CauldronPopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CauldronPopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.gap = 0;
         this.mxmlContent = [this._CauldronPopup_PopupSubHeader1_i(),this._CauldronPopup_VGroup2_c()];
         this.currentState = "normalview";
         this._CauldronPopup_Power1_i();
         this._CauldronPopup_Animate1_i();
         states = [new State({
            "name":"normalview",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"mapsList",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"mapsList",
               "name":"visible",
               "value":true
            })]
         }),new State({
            "name":"mapview",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"mapView",
               "name":"includeInLayout",
               "value":true
            }),new SetProperty().initializeFromObject({
               "target":"mapView",
               "name":"visible",
               "value":true
            })]
         })];
         this.stateNormalView = states[0];
         this.stateMapView = states[1];
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         CauldronPopup._watcherSetupUtil = param1;
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
      
      private final function _CauldronPopup_Power1_i() : Power
      {
         var _loc1_:Power = new Power();
         _loc1_.exponent = 4;
         this.powerEasing = _loc1_;
         BindingManager.executeBindings(this,"powerEasing",this.powerEasing);
         return _loc1_;
      }
      
      private final function _CauldronPopup_Animate1_i() : Animate
      {
         var _loc1_:Animate = new Animate();
         _loc1_.duration = 1000;
         _loc1_.motionPaths = new <MotionPath>[this._CauldronPopup_SimpleMotionPath1_i()];
         this.scrollAnimation = _loc1_;
         BindingManager.executeBindings(this,"scrollAnimation",this.scrollAnimation);
         return _loc1_;
      }
      
      private final function _CauldronPopup_SimpleMotionPath1_i() : SimpleMotionPath
      {
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         _loc1_.property = "verticalScrollPosition";
         this._CauldronPopup_SimpleMotionPath1 = _loc1_;
         BindingManager.executeBindings(this,"_CauldronPopup_SimpleMotionPath1",this._CauldronPopup_SimpleMotionPath1);
         return _loc1_;
      }
      
      private final function _CauldronPopup_PopupSubHeader1_i() : PopupSubHeader
      {
         var _loc1_:PopupSubHeader = new PopupSubHeader();
         _loc1_.id = "subHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.subHeader = _loc1_;
         BindingManager.executeBindings(this,"subHeader",this.subHeader);
         return _loc1_;
      }
      
      private final function _CauldronPopup_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingLeft = 4;
         _loc1_.paddingRight = 4;
         _loc1_.paddingBottom = 5;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._CauldronPopup_HGroup1_c(),this._CauldronPopup_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 24;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.paddingLeft = 160;
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.mxmlContent = [this._CauldronPopup_BriskImageDynaLib1_c(),this._CauldronPopup_SF_LocaLabel1_c(),this._CauldronPopup_BriskImageDynaLib2_c(),this._CauldronPopup_SF_LocaLabel2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "golden_header_divider";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_SF_LocaLabel1_c() : SF_LocaLabel
      {
         var _loc1_:SF_LocaLabel = new SF_LocaLabel();
         _loc1_.locaID = "loot";
         _loc1_.styleName = "fontwhite12";
         _loc1_.width = 318;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingTop",3);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_BriskImageDynaLib2_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "golden_header_divider";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_SF_LocaLabel2_c() : SF_LocaLabel
      {
         var _loc1_:SF_LocaLabel = new SF_LocaLabel();
         _loc1_.locaID = "bonusmaps";
         _loc1_.styleName = "fontwhite12";
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingTop",3);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CauldronPopup_CauldronMenuVanity1_c(),this._CauldronPopup_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_CauldronMenuVanity1_c() : CauldronMenuVanity
      {
         var _loc1_:CauldronMenuVanity = new CauldronMenuVanity();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 3;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CauldronPopup_HGroup3_c(),this._CauldronPopup_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CauldronPopup_Group1_c(),this._CauldronPopup_Spacer1_c(),this._CauldronPopup_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 325;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CauldronPopup_BriskImageDynaLib3_c(),this._CauldronPopup_List1_i(),this._CauldronPopup_BorderType11_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "cauldron";
         _loc1_.dynaBmpSourceName = "loot_background";
         _loc1_.left = 2;
         _loc1_.top = 2;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.useVirtualLayout = true;
         _loc1_.mouseEnabled = false;
         _loc1_.top = 2;
         _loc1_.bottom = 2;
         _loc1_.itemRenderer = this._CauldronPopup_ClassFactory1_c();
         _loc1_.setStyle("verticalScrollPolicy","on");
         _loc1_.setStyle("horizontalScrollPolicy","off");
         _loc1_.setStyle("skinClass",CauldronLootListSkin);
         _loc1_.id = "lootList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lootList = _loc1_;
         BindingManager.executeBindings(this,"lootList",this.lootList);
         return _loc1_;
      }
      
      private final function _CauldronPopup_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CauldronLootItem;
         return _loc1_;
      }
      
      private final function _CauldronPopup_BorderType11_c() : BorderType1
      {
         var _loc1_:BorderType1 = new BorderType1();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         _loc1_.width = 3;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._CauldronPopup_List2_i(),this._CauldronPopup_CauldronMapPiecesView1_i(),this._CauldronPopup_BorderType12_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_List2_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.useVirtualLayout = false;
         _loc1_.mouseEnabled = false;
         _loc1_.top = 2;
         _loc1_.bottom = 2;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.itemRenderer = this._CauldronPopup_ClassFactory2_c();
         _loc1_.setStyle("verticalScrollPolicy","on");
         _loc1_.setStyle("horizontalScrollPolicy","off");
         _loc1_.setStyle("skinClass",CommonListSkin);
         _loc1_.id = "mapsList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mapsList = _loc1_;
         BindingManager.executeBindings(this,"mapsList",this.mapsList);
         return _loc1_;
      }
      
      private final function _CauldronPopup_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CauldronMapListItem;
         return _loc1_;
      }
      
      private final function _CauldronPopup_CauldronMapPiecesView1_i() : CauldronMapPiecesView
      {
         var _loc1_:CauldronMapPiecesView = new CauldronMapPiecesView();
         _loc1_.top = 2;
         _loc1_.bottom = 2;
         _loc1_.right = 2;
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "mapView";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mapView = _loc1_;
         BindingManager.executeBindings(this,"mapView",this.mapView);
         return _loc1_;
      }
      
      private final function _CauldronPopup_BorderType12_c() : BorderType1
      {
         var _loc1_:BorderType1 = new BorderType1();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 72;
         _loc1_.mxmlContent = [this._CauldronPopup_HGroup4_c(),this._CauldronPopup_BorderType13_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_HGroup4_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 4;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingLeft = 15;
         _loc1_.mxmlContent = [this._CauldronPopup_VGroup4_i(),this._CauldronPopup_VGroup5_i(),this._CauldronPopup_VGroup6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_VGroup4_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 3;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._CauldronPopup_HGroup5_c(),this._CauldronPopup_HGroup6_c()];
         _loc1_.id = "grpCurrency";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.grpCurrency = _loc1_;
         BindingManager.executeBindings(this,"grpCurrency",this.grpCurrency);
         return _loc1_;
      }
      
      private final function _CauldronPopup_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 3;
         _loc1_.percentWidth = 100;
         _loc1_.height = 24;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._CauldronPopup_Group4_c(),this._CauldronPopup_Label1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 20;
         _loc1_.mxmlContent = [this._CauldronPopup_BriskImageDynaLib4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_BriskImageDynaLib4_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "iconmojo";
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.styleName = "fontwhite11";
         _loc1_.percentWidth = 100;
         _loc1_.showTruncationTip = true;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "txMojosValue";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.txMojosValue = _loc1_;
         BindingManager.executeBindings(this,"txMojosValue",this.txMojosValue);
         return _loc1_;
      }
      
      private final function _CauldronPopup_HGroup6_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 3;
         _loc1_.percentWidth = 100;
         _loc1_.height = 24;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._CauldronPopup_Group5_c(),this._CauldronPopup_Label2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_Group5_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 20;
         _loc1_.mxmlContent = [this._CauldronPopup_BriskImageDynaLib5_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_BriskImageDynaLib5_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "iconpearls";
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.styleName = "fontwhite11";
         _loc1_.percentWidth = 100;
         _loc1_.showTruncationTip = true;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "txPearlsValue";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.txPearlsValue = _loc1_;
         BindingManager.executeBindings(this,"txPearlsValue",this.txPearlsValue);
         return _loc1_;
      }
      
      private final function _CauldronPopup_VGroup5_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 3;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._CauldronPopup_ComboBox1_i(),this._CauldronPopup_HGroup7_c()];
         _loc1_.id = "grpRitualCost";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.grpRitualCost = _loc1_;
         BindingManager.executeBindings(this,"grpRitualCost",this.grpRitualCost);
         return _loc1_;
      }
      
      private final function _CauldronPopup_ComboBox1_i() : ComboBox
      {
         var _loc1_:ComboBox = new ComboBox();
         _loc1_.percentWidth = 100;
         _loc1_.height = 24;
         _loc1_.labelField = "dspname";
         _loc1_.setStyle("skinClass",ComboBoxSkinBold);
         _loc1_.id = "cboMojos";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cboMojos = _loc1_;
         BindingManager.executeBindings(this,"cboMojos",this.cboMojos);
         return _loc1_;
      }
      
      private final function _CauldronPopup_HGroup7_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.height = 24;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._CauldronPopup_SF_LocaLabel3_c(),this._CauldronPopup_Spacer2_c(),this._CauldronPopup_Group6_c(),this._CauldronPopup_Label3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_SF_LocaLabel3_c() : SF_LocaLabel
      {
         var _loc1_:SF_LocaLabel = new SF_LocaLabel();
         _loc1_.locaID = "cost";
         _loc1_.suffix = ":";
         _loc1_.styleName = "fontwhite11";
         _loc1_.percentWidth = 100;
         _loc1_.showTruncationTip = true;
         _loc1_.maxDisplayedLines = 1;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_Spacer2_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_Group6_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 20;
         _loc1_.mxmlContent = [this._CauldronPopup_BriskImageDynaLib6_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_BriskImageDynaLib6_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "iconpearls";
         _loc1_.horizontalCenter = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_Label3_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.styleName = "fontwhite11";
         _loc1_.showTruncationTip = true;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.id = "txPearlCost";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.txPearlCost = _loc1_;
         BindingManager.executeBindings(this,"txPearlCost",this.txPearlCost);
         return _loc1_;
      }
      
      private final function _CauldronPopup_VGroup6_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.width = 327;
         _loc1_.percentHeight = 100;
         _loc1_.paddingTop = 2;
         _loc1_.paddingRight = 2;
         _loc1_.mxmlContent = [this._CauldronPopup_Group7_i(),this._CauldronPopup_RedDeclineButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_Group7_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._CauldronPopup_StartProgressButton1_i()];
         _loc1_.id = "grpStartRitaulButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.grpStartRitaulButton = _loc1_;
         BindingManager.executeBindings(this,"grpStartRitaulButton",this.grpStartRitaulButton);
         return _loc1_;
      }
      
      private final function _CauldronPopup_StartProgressButton1_i() : StartProgressButton
      {
         var _loc1_:StartProgressButton = new StartProgressButton();
         _loc1_.id = "btnStartRitual";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.btnStartRitual = _loc1_;
         BindingManager.executeBindings(this,"btnStartRitual",this.btnStartRitual);
         return _loc1_;
      }
      
      private final function _CauldronPopup_RedDeclineButton1_i() : RedDeclineButton
      {
         var _loc1_:RedDeclineButton = new RedDeclineButton();
         _loc1_.textId = "clearlist";
         _loc1_.enabled = false;
         _loc1_.id = "btnClearList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.btnClearList = _loc1_;
         BindingManager.executeBindings(this,"btnClearList",this.btnClearList);
         return _loc1_;
      }
      
      private final function _CauldronPopup_BorderType13_c() : BorderType1
      {
         var _loc1_:BorderType1 = new BorderType1();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CauldronPopup_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Array
         {
            var _loc1_:* = [lootList.dataGroup];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"scrollAnimation.targets");
         result[1] = new Binding(this,null,null,"scrollAnimation.easer","powerEasing");
         result[2] = new Binding(this,function():Object
         {
            return lootList.dataGroup.contentHeight;
         },null,"_CauldronPopup_SimpleMotionPath1.valueTo");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnClearList() : RedDeclineButton
      {
         return this._1931545201btnClearList;
      }
      
      public function set btnClearList(param1:RedDeclineButton) : void
      {
         var _loc2_:Object = this._1931545201btnClearList;
         if(_loc2_ !== param1)
         {
            this._1931545201btnClearList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnClearList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnStartRitual() : StartProgressButton
      {
         return this._897920983btnStartRitual;
      }
      
      public function set btnStartRitual(param1:StartProgressButton) : void
      {
         var _loc2_:Object = this._897920983btnStartRitual;
         if(_loc2_ !== param1)
         {
            this._897920983btnStartRitual = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnStartRitual",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cboMojos() : ComboBox
      {
         return this._772937948cboMojos;
      }
      
      public function set cboMojos(param1:ComboBox) : void
      {
         var _loc2_:Object = this._772937948cboMojos;
         if(_loc2_ !== param1)
         {
            this._772937948cboMojos = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cboMojos",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get grpCurrency() : VGroup
      {
         return this._1261490154grpCurrency;
      }
      
      public function set grpCurrency(param1:VGroup) : void
      {
         var _loc2_:Object = this._1261490154grpCurrency;
         if(_loc2_ !== param1)
         {
            this._1261490154grpCurrency = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"grpCurrency",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get grpRitualCost() : VGroup
      {
         return this._2108504491grpRitualCost;
      }
      
      public function set grpRitualCost(param1:VGroup) : void
      {
         var _loc2_:Object = this._2108504491grpRitualCost;
         if(_loc2_ !== param1)
         {
            this._2108504491grpRitualCost = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"grpRitualCost",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get grpStartRitaulButton() : Group
      {
         return this._2088999254grpStartRitaulButton;
      }
      
      public function set grpStartRitaulButton(param1:Group) : void
      {
         var _loc2_:Object = this._2088999254grpStartRitaulButton;
         if(_loc2_ !== param1)
         {
            this._2088999254grpStartRitaulButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"grpStartRitaulButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lootList() : List
      {
         return this._2034018458lootList;
      }
      
      public function set lootList(param1:List) : void
      {
         var _loc2_:Object = this._2034018458lootList;
         if(_loc2_ !== param1)
         {
            this._2034018458lootList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lootList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mapView() : CauldronMapPiecesView
      {
         return this._836781601mapView;
      }
      
      public function set mapView(param1:CauldronMapPiecesView) : void
      {
         var _loc2_:Object = this._836781601mapView;
         if(_loc2_ !== param1)
         {
            this._836781601mapView = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mapView",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mapsList() : List
      {
         return this._196347861mapsList;
      }
      
      public function set mapsList(param1:List) : void
      {
         var _loc2_:Object = this._196347861mapsList;
         if(_loc2_ !== param1)
         {
            this._196347861mapsList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mapsList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get powerEasing() : Power
      {
         return this._22944400powerEasing;
      }
      
      public function set powerEasing(param1:Power) : void
      {
         var _loc2_:Object = this._22944400powerEasing;
         if(_loc2_ !== param1)
         {
            this._22944400powerEasing = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"powerEasing",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scrollAnimation() : Animate
      {
         return this._599151817scrollAnimation;
      }
      
      public function set scrollAnimation(param1:Animate) : void
      {
         var _loc2_:Object = this._599151817scrollAnimation;
         if(_loc2_ !== param1)
         {
            this._599151817scrollAnimation = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scrollAnimation",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stateMapView() : State
      {
         return this._1010041936stateMapView;
      }
      
      public function set stateMapView(param1:State) : void
      {
         var _loc2_:Object = this._1010041936stateMapView;
         if(_loc2_ !== param1)
         {
            this._1010041936stateMapView = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stateMapView",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stateNormalView() : State
      {
         return this._2087288733stateNormalView;
      }
      
      public function set stateNormalView(param1:State) : void
      {
         var _loc2_:Object = this._2087288733stateNormalView;
         if(_loc2_ !== param1)
         {
            this._2087288733stateNormalView = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stateNormalView",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get subHeader() : PopupSubHeader
      {
         return this._714875667subHeader;
      }
      
      public function set subHeader(param1:PopupSubHeader) : void
      {
         var _loc2_:Object = this._714875667subHeader;
         if(_loc2_ !== param1)
         {
            this._714875667subHeader = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subHeader",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txMojosValue() : Label
      {
         return this._944957559txMojosValue;
      }
      
      public function set txMojosValue(param1:Label) : void
      {
         var _loc2_:Object = this._944957559txMojosValue;
         if(_loc2_ !== param1)
         {
            this._944957559txMojosValue = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txMojosValue",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txPearlCost() : Label
      {
         return this._522085135txPearlCost;
      }
      
      public function set txPearlCost(param1:Label) : void
      {
         var _loc2_:Object = this._522085135txPearlCost;
         if(_loc2_ !== param1)
         {
            this._522085135txPearlCost = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txPearlCost",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txPearlsValue() : Label
      {
         return this._563212128txPearlsValue;
      }
      
      public function set txPearlsValue(param1:Label) : void
      {
         var _loc2_:Object = this._563212128txPearlsValue;
         if(_loc2_ !== param1)
         {
            this._563212128txPearlsValue = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txPearlsValue",_loc2_,param1));
            }
         }
      }
   }
}
