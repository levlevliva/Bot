package com.bigpoint.seafight.view.popups.monthlyloginbonus
{
   import com.bigpoint.seafight.class_24;
   import com.bigpoint.seafight.model.inventory.vo.harpoon.Harpoon_VO;
   import com.bigpoint.seafight.model.vo.class_210;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getClass;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.LevelTooltipItemRenderer;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.BorderType2;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.event.modules.eventstatistics.StatisticItemFactory;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.skins.StatisticListSkin;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.SailsStatsListItemVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_112;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.URLStream;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   import mx.states.SetProperty;
   import mx.states.SetStyle;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.as3toolbox.filecollection.xF;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_104.class_448;
   import package_104.class_641;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_61;
   import package_14.class_88;
   import package_14.class_94;
   import package_147.class_572;
   import package_15.class_273;
   import package_152.class_664;
   import package_152.class_801;
   import package_153.class_931;
   import package_170.class_979;
   import package_171.class_1268;
   import package_171.class_1269;
   import package_20.class_33;
   import package_205.class_1353;
   import package_26.class_204;
   import package_29.class_57;
   import package_3.class_26;
   import package_3.class_378;
   import package_41.class_84;
   import package_48.class_138;
   import package_49.class_880;
   import package_5.class_12;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_43;
   import package_52.class_309;
   import package_54.class_163;
   import package_54.class_319;
   import package_56.class_368;
   import package_6.class_14;
   import package_69.class_978;
   import package_8.class_16;
   import package_88.class_290;
   import package_9.class_120;
   import package_9.class_91;
   import package_90.class_316;
   import package_92.class_336;
   import package_92.class_944;
   import package_95.class_341;
   import package_98.class_777;
   import package_99.class_493;
   import package_99.class_911;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.components.gridClasses.GridColumn;
   import spark.core.SpriteVisualElement;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.primitives.Rect;
   
   public final class MonthlyLoginBonusPopup extends VGroup
   {
       
      
      private var _1440882013bonusList:List;
      
      private var _2082329408btnClaim:GreenAcceptButton;
      
      private var _1860436133collectEffect:SpriteVisualElement;
      
      private var _1014875189collectableEffect:SpriteVisualElement;
      
      private var _291640818configBorder:BorderType2;
      
      private var _1284322435milestoneBar:LoginMilestoneBarDisplay;
      
      private var _1159595566milestoneList:List;
      
      private var _1766339895milestone_title:SF_LocaLabel;
      
      private var _1054918617month_title:SF_LocaLabel;
      
      private var _714875667subHeader:PopupSubHeader;
      
      private var _1477851638txtEvent:Label;
      
      private var _821048544txtMilestone:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function MonthlyLoginBonusPopup()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._MonthlyLoginBonusPopup_PopupSubHeader1_i(),this._MonthlyLoginBonusPopup_VGroup2_c()];
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
      
      private final function _MonthlyLoginBonusPopup_PopupSubHeader1_i() : PopupSubHeader
      {
         var _loc1_:PopupSubHeader = new PopupSubHeader();
         _loc1_.includeInLayout = true;
         _loc1_.visible = true;
         _loc1_.height = 25;
         _loc1_.id = "subHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.subHeader = _loc1_;
         BindingManager.executeBindings(this,"subHeader",this.subHeader);
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingLeft = 4;
         _loc1_.paddingRight = 4;
         _loc1_.paddingBottom = 5;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._MonthlyLoginBonusPopup_HGroup1_c(),this._MonthlyLoginBonusPopup_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 24;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.paddingLeft = 163;
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.mxmlContent = [this._MonthlyLoginBonusPopup_BriskImageDynaLib1_c(),this._MonthlyLoginBonusPopup_SF_LocaLabel1_i(),this._MonthlyLoginBonusPopup_BriskImageDynaLib2_c(),this._MonthlyLoginBonusPopup_SF_LocaLabel2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private final function _MonthlyLoginBonusPopup_SF_LocaLabel1_i() : SF_LocaLabel
      {
         var _loc1_:SF_LocaLabel = new SF_LocaLabel();
         _loc1_.locaID = "loot";
         _loc1_.styleName = "fontwhite12";
         _loc1_.width = 410;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingTop",3);
         _loc1_.id = "month_title";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.month_title = _loc1_;
         BindingManager.executeBindings(this,"month_title",this.month_title);
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private final function _MonthlyLoginBonusPopup_SF_LocaLabel2_i() : SF_LocaLabel
      {
         var _loc1_:SF_LocaLabel = new SF_LocaLabel();
         _loc1_.styleName = "fontwhite12";
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingTop",3);
         _loc1_.id = "milestone_title";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.milestone_title = _loc1_;
         BindingManager.executeBindings(this,"milestone_title",this.milestone_title);
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingBottom = 5;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._MonthlyLoginBonusPopup_MonthlyLoginBonusMenuVanity1_c(),this._MonthlyLoginBonusPopup_Group1_c(),this._MonthlyLoginBonusPopup_Spacer1_c(),this._MonthlyLoginBonusPopup_VGroup3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_MonthlyLoginBonusMenuVanity1_c() : MonthlyLoginBonusMenuVanity
      {
         var _loc1_:MonthlyLoginBonusMenuVanity = new MonthlyLoginBonusMenuVanity();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 420;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._MonthlyLoginBonusPopup_Label1_i(),this._MonthlyLoginBonusPopup_List1_i(),this._MonthlyLoginBonusPopup_BorderType11_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.height = 60;
         _loc1_.styleName = "fontwhite15";
         _loc1_.percentWidth = 100;
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "txtEvent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.txtEvent = _loc1_;
         BindingManager.executeBindings(this,"txtEvent",this.txtEvent);
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.top = 14;
         _loc1_.left = 12;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.useVirtualLayout = true;
         _loc1_.mouseEnabled = false;
         _loc1_.bottom = 2;
         _loc1_.itemRenderer = this._MonthlyLoginBonusPopup_ClassFactory1_c();
         _loc1_.setStyle("verticalScrollPolicy","off");
         _loc1_.setStyle("horizontalScrollPolicy","off");
         _loc1_.setStyle("skinClass",MonthlyLoginBonusListSkin);
         _loc1_.id = "bonusList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bonusList = _loc1_;
         BindingManager.executeBindings(this,"bonusList",this.bonusList);
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MonthlyLoginBonusItem;
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_BorderType11_c() : BorderType1
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
      
      private final function _MonthlyLoginBonusPopup_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         _loc1_.width = 3;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.width = 240;
         _loc1_.gap = 3;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._MonthlyLoginBonusPopup_Group2_c(),this._MonthlyLoginBonusPopup_Group4_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.height = 293;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._MonthlyLoginBonusPopup_BriskImageDynaLib3_c(),this._MonthlyLoginBonusPopup_BorderType21_i(),this._MonthlyLoginBonusPopup_SpriteVisualElement1_i(),this._MonthlyLoginBonusPopup_VGroup4_c(),this._MonthlyLoginBonusPopup_SpriteVisualElement2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "monthly-login-bonus";
         _loc1_.dynaBmpSourceName = "artwork_monthlylogin_milestone";
         _loc1_.left = 2;
         _loc1_.top = 2;
         _loc1_.alpha = 30;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_BorderType21_i() : BorderType2
      {
         var _loc1_:BorderType2 = new BorderType2();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "configBorder";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.configBorder = _loc1_;
         BindingManager.executeBindings(this,"configBorder",this.configBorder);
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_SpriteVisualElement1_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.verticalCenter = 60;
         _loc1_.horizontalCenter = 0;
         _loc1_.initialized(this,"collectableEffect");
         this.collectableEffect = _loc1_;
         BindingManager.executeBindings(this,"collectableEffect",this.collectableEffect);
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_VGroup4_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._MonthlyLoginBonusPopup_Spacer2_c(),this._MonthlyLoginBonusPopup_Label2_i(),this._MonthlyLoginBonusPopup_HGroup3_c(),this._MonthlyLoginBonusPopup_Group3_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_Spacer2_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         _loc1_.height = 20;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.height = 60;
         _loc1_.styleName = "fontwhite15";
         _loc1_.percentWidth = 100;
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "txtMilestone";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.txtMilestone = _loc1_;
         BindingManager.executeBindings(this,"txtMilestone",this.txtMilestone);
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 32;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._MonthlyLoginBonusPopup_Spacer3_c(),this._MonthlyLoginBonusPopup_LoginMilestoneBarDisplay1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_Spacer3_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         _loc1_.width = 10;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_LoginMilestoneBarDisplay1_i() : LoginMilestoneBarDisplay
      {
         var _loc1_:LoginMilestoneBarDisplay = new LoginMilestoneBarDisplay();
         _loc1_.id = "milestoneBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.milestoneBar = _loc1_;
         BindingManager.executeBindings(this,"milestoneBar",this.milestoneBar);
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._MonthlyLoginBonusPopup_List2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_List2_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.top = 15;
         _loc1_.left = 32;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.useVirtualLayout = true;
         _loc1_.mouseEnabled = false;
         _loc1_.bottom = 2;
         _loc1_.itemRenderer = this._MonthlyLoginBonusPopup_ClassFactory2_c();
         _loc1_.setStyle("verticalScrollPolicy","off");
         _loc1_.setStyle("horizontalScrollPolicy","off");
         _loc1_.setStyle("skinClass",MonthlyLoginBonusMilestoneListSkin);
         _loc1_.id = "milestoneList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.milestoneList = _loc1_;
         BindingManager.executeBindings(this,"milestoneList",this.milestoneList);
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = MonthlyLoginBonusItem;
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_SpriteVisualElement2_i() : SpriteVisualElement
      {
         var _loc1_:SpriteVisualElement = new SpriteVisualElement();
         _loc1_.verticalCenter = 50;
         _loc1_.horizontalCenter = 0;
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.initialized(this,"collectEffect");
         this.collectEffect = _loc1_;
         BindingManager.executeBindings(this,"collectEffect",this.collectEffect);
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.mxmlContent = [this._MonthlyLoginBonusPopup_GreenAcceptButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MonthlyLoginBonusPopup_GreenAcceptButton1_i() : GreenAcceptButton
      {
         var _loc1_:GreenAcceptButton = new GreenAcceptButton();
         _loc1_.id = "btnClaim";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.btnClaim = _loc1_;
         BindingManager.executeBindings(this,"btnClaim",this.btnClaim);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bonusList() : List
      {
         return this._1440882013bonusList;
      }
      
      public function set bonusList(param1:List) : void
      {
         var _loc2_:Object = this._1440882013bonusList;
         if(_loc2_ !== param1)
         {
            this._1440882013bonusList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bonusList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnClaim() : GreenAcceptButton
      {
         return this._2082329408btnClaim;
      }
      
      public function set btnClaim(param1:GreenAcceptButton) : void
      {
         var _loc2_:Object = this._2082329408btnClaim;
         if(_loc2_ !== param1)
         {
            this._2082329408btnClaim = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnClaim",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get collectEffect() : SpriteVisualElement
      {
         return this._1860436133collectEffect;
      }
      
      public function set collectEffect(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._1860436133collectEffect;
         if(_loc2_ !== param1)
         {
            this._1860436133collectEffect = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"collectEffect",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get collectableEffect() : SpriteVisualElement
      {
         return this._1014875189collectableEffect;
      }
      
      public function set collectableEffect(param1:SpriteVisualElement) : void
      {
         var _loc2_:Object = this._1014875189collectableEffect;
         if(_loc2_ !== param1)
         {
            this._1014875189collectableEffect = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"collectableEffect",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get configBorder() : BorderType2
      {
         return this._291640818configBorder;
      }
      
      public function set configBorder(param1:BorderType2) : void
      {
         var _loc2_:Object = this._291640818configBorder;
         if(_loc2_ !== param1)
         {
            this._291640818configBorder = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"configBorder",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get milestoneBar() : LoginMilestoneBarDisplay
      {
         return this._1284322435milestoneBar;
      }
      
      public function set milestoneBar(param1:LoginMilestoneBarDisplay) : void
      {
         var _loc2_:Object = this._1284322435milestoneBar;
         if(_loc2_ !== param1)
         {
            this._1284322435milestoneBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"milestoneBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get milestoneList() : List
      {
         return this._1159595566milestoneList;
      }
      
      public function set milestoneList(param1:List) : void
      {
         var _loc2_:Object = this._1159595566milestoneList;
         if(_loc2_ !== param1)
         {
            this._1159595566milestoneList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"milestoneList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get milestone_title() : SF_LocaLabel
      {
         return this._1766339895milestone_title;
      }
      
      public function set milestone_title(param1:SF_LocaLabel) : void
      {
         var _loc2_:Object = this._1766339895milestone_title;
         if(_loc2_ !== param1)
         {
            this._1766339895milestone_title = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"milestone_title",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get month_title() : SF_LocaLabel
      {
         return this._1054918617month_title;
      }
      
      public function set month_title(param1:SF_LocaLabel) : void
      {
         var _loc2_:Object = this._1054918617month_title;
         if(_loc2_ !== param1)
         {
            this._1054918617month_title = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"month_title",_loc2_,param1));
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
      public function get txtEvent() : Label
      {
         return this._1477851638txtEvent;
      }
      
      public function set txtEvent(param1:Label) : void
      {
         var _loc2_:Object = this._1477851638txtEvent;
         if(_loc2_ !== param1)
         {
            this._1477851638txtEvent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtEvent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txtMilestone() : Label
      {
         return this._821048544txtMilestone;
      }
      
      public function set txtMilestone(param1:Label) : void
      {
         var _loc2_:Object = this._821048544txtMilestone;
         if(_loc2_ !== param1)
         {
            this._821048544txtMilestone = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtMilestone",_loc2_,param1));
            }
         }
      }
   }
}
