package com.bigpoint.seafight.view.userInterface.widgets.menus.skins
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropRemoveCommand;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.DynamicImageButton;
   import com.bigpoint.seafight.view.common.components.MinimizeLockWindow;
   import com.bigpoint.seafight.view.common.components.ResizableTitleWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.common.components.shipcoverflow.components.ShipCoverFlowItem;
   import com.bigpoint.seafight.view.common.skins.DynamicImageButtonSkin;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleWindowData;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.common.ThinWindowBorder;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderCheckBoxRenderer;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyPopup;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.GroupMapIcon;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindow;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowController;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuVanityComponent;
   import com.bigpoint.seafight.view.popups.guildmenu.island.common.SimpleHitpointsBarDisplay;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.RankIconsComboBox;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildProfileView;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildImage;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankItemListItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.common.AmsValuePair;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.StatisticItemVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemConfigFooterVo;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import flash.display.AVM1Movie;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IStateClient2;
   import mx.core.IVisualElement;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.guild.class_670;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_10.class_18;
   import package_10.class_38;
   import package_102.class_359;
   import package_104.class_448;
   import package_104.class_803;
   import package_104.class_989;
   import package_115.class_1335;
   import package_115.class_490;
   import package_124.class_434;
   import package_139.class_532;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_94;
   import package_140.class_985;
   import package_143.class_542;
   import package_152.class_801;
   import package_16.class_28;
   import package_166.class_1332;
   import package_166.class_1334;
   import package_166.class_1336;
   import package_166.class_1337;
   import package_166.class_963;
   import package_166.class_964;
   import package_17.class_326;
   import package_17.class_54;
   import package_178.class_1060;
   import package_185.class_1136;
   import package_20.class_33;
   import package_23.class_42;
   import package_29.class_57;
   import package_36.class_100;
   import package_39.class_80;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_959;
   import package_44.class_108;
   import package_46.class_1224;
   import package_46.class_975;
   import package_5.class_12;
   import package_5.class_22;
   import package_5.class_43;
   import package_51.class_148;
   import package_51.class_974;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_1039;
   import package_72.class_1442;
   import package_72.class_203;
   import package_8.class_1240;
   import package_8.class_1315;
   import package_89.class_1378;
   import package_91.class_1246;
   import package_95.class_341;
   import package_97.class_409;
   import package_98.class_777;
   import package_99.class_810;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.Scroller;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   import spark.filters.DropShadowFilter;
   import spark.layouts.HorizontalLayout;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   import spark.skins.SparkSkin;
   
   public final class SimpleThinResizableWindowSkin extends SparkSkin implements IStateClient2
   {
       
      
      private var _1332194002background:Rect;
      
      private var _1427077073backgroundFill:SolidColor;
      
      private var _312699062closeButton:DynamicImageButton;
      
      private var _951530617content:Group;
      
      private var _809612678contentGroup:Group;
      
      private var _735423955helpButton:DynamicImageButton;
      
      private var _104976386moveArea:Group;
      
      private var _1728995332resizeHandle:Group;
      
      private var _1870028133titleBar:Group;
      
      private var _226904496titleButtonsLeft:HGroup;
      
      private var _1550234221titleButtonsRight:HGroup;
      
      private var _1893287094titleDisplay:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _SimpleThinResizableWindowSkin_StylesInit_done:Boolean = false;
      
      private var _213507019hostComponent:ResizableTitleWindow;
      
      public function SimpleThinResizableWindowSkin()
      {
         super();
         mx_internal::_document = this;
         this.name = "SimpleResizableWindowSkin";
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.blendMode = "normal";
         this.mouseEnabled = false;
         this.mxmlContent = [this._SimpleThinResizableWindowSkin_Group1_c(),this._SimpleThinResizableWindowSkin_ThinWindowBorder1_c(),this._SimpleThinResizableWindowSkin_Group6_i()];
         this.currentState = "normal";
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
            "overrides":[]
         }),new State({
            "name":"inactiveWithControlBar",
            "stateGroups":["inactiveGroup","withControls"],
            "overrides":[]
         }),new State({
            "name":"disabledWithControlBar",
            "stateGroups":["withControls"],
            "overrides":[new SetProperty().initializeFromObject({
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
         mx_internal::_SimpleThinResizableWindowSkin_StylesInit();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private final function _SimpleThinResizableWindowSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._SimpleThinResizableWindowSkin_Rect1_i(),this._SimpleThinResizableWindowSkin_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 1;
         _loc1_.top = 1;
         _loc1_.right = 1;
         _loc1_.bottom = 1;
         _loc1_.fill = this._SimpleThinResizableWindowSkin_SolidColor1_i();
         _loc1_.initialized(this,"background");
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 0;
         _loc1_.alpha = 0.85;
         this.backgroundFill = _loc1_;
         BindingManager.executeBindings(this,"backgroundFill",this.backgroundFill);
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 2;
         _loc1_.right = 2;
         _loc1_.top = 4;
         _loc1_.bottom = 4;
         _loc1_.layout = this._SimpleThinResizableWindowSkin_VerticalLayout1_c();
         _loc1_.mxmlContent = [this._SimpleThinResizableWindowSkin_Group3_i(),this._SimpleThinResizableWindowSkin_Group5_i()];
         _loc1_.id = "content";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.content = _loc1_;
         BindingManager.executeBindings(this,"content",this.content);
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "justify";
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 27;
         _loc1_.mxmlContent = [this._SimpleThinResizableWindowSkin_SimpleThinWindowSkinHeader1_c(),this._SimpleThinResizableWindowSkin_Label1_i(),this._SimpleThinResizableWindowSkin_Group4_i(),this._SimpleThinResizableWindowSkin_HGroup1_i(),this._SimpleThinResizableWindowSkin_HGroup2_i(),this._SimpleThinResizableWindowSkin_Rect2_c()];
         _loc1_.id = "titleBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleBar = _loc1_;
         BindingManager.executeBindings(this,"titleBar",this.titleBar);
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_SimpleThinWindowSkinHeader1_c() : SimpleThinWindowSkinHeader
      {
         var _loc1_:SimpleThinWindowSkinHeader = new SimpleThinWindowSkinHeader();
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.styleName = "fontwhite12b";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.percentWidth = 100;
         _loc1_.maxDisplayedLines = 1;
         _loc1_.showTruncationTip = true;
         _loc1_.filters = [this._SimpleThinResizableWindowSkin_DropShadowFilter1_c()];
         _loc1_.setStyle("fontSize",12);
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("paddingRight",10);
         _loc1_.setStyle("paddingLeft",10);
         _loc1_.id = "titleDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleDisplay = _loc1_;
         BindingManager.executeBindings(this,"titleDisplay",this.titleDisplay);
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_DropShadowFilter1_c() : spark.filters.DropShadowFilter
      {
         var _loc1_:spark.filters.DropShadowFilter = new spark.filters.DropShadowFilter();
         _loc1_.distance = 2;
         _loc1_.angle = 90;
         _loc1_.color = 0;
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "moveArea";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moveArea = _loc1_;
         BindingManager.executeBindings(this,"moveArea",this.moveArea);
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.left = 2;
         _loc1_.top = 1;
         _loc1_.gap = -3;
         _loc1_.mxmlContent = [this._SimpleThinResizableWindowSkin_DynamicImageButton1_i()];
         _loc1_.id = "titleButtonsLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleButtonsLeft = _loc1_;
         BindingManager.executeBindings(this,"titleButtonsLeft",this.titleButtonsLeft);
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_DynamicImageButton1_i() : DynamicImageButton
      {
         var _loc1_:DynamicImageButton = new DynamicImageButton();
         _loc1_.buttonMode = true;
         _loc1_.styleName = "windowhelp";
         _loc1_.includeInLayout = false;
         _loc1_.visible = false;
         _loc1_.id = "helpButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.helpButton = _loc1_;
         BindingManager.executeBindings(this,"helpButton",this.helpButton);
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.right = 2;
         _loc1_.top = 1;
         _loc1_.gap = -3;
         _loc1_.mxmlContent = [this._SimpleThinResizableWindowSkin_DynamicImageButton2_i()];
         _loc1_.id = "titleButtonsRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleButtonsRight = _loc1_;
         BindingManager.executeBindings(this,"titleButtonsRight",this.titleButtonsRight);
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_DynamicImageButton2_i() : DynamicImageButton
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
      
      private final function _SimpleThinResizableWindowSkin_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.percentWidth = 100;
         _loc1_.height = 10;
         _loc1_.top = 22;
         _loc1_.fill = this._SimpleThinResizableWindowSkin_BriskBitmapFill1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_BriskBitmapFill1_c() : BriskBitmapFill
      {
         var _loc1_:BriskBitmapFill = new BriskBitmapFill();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "rope_seamless";
         _loc1_.fillMode = "repeat";
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
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
      
      private final function _SimpleThinResizableWindowSkin_ThinWindowBorder1_c() : ThinWindowBorder
      {
         var _loc1_:ThinWindowBorder = new ThinWindowBorder();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_Group6_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.right = 3;
         _loc1_.bottom = 3;
         _loc1_.mxmlContent = [this._SimpleThinResizableWindowSkin_BriskImageDynaLib1_c()];
         _loc1_.id = "resizeHandle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.resizeHandle = _loc1_;
         BindingManager.executeBindings(this,"resizeHandle",this.resizeHandle);
         return _loc1_;
      }
      
      private final function _SimpleThinResizableWindowSkin_BriskImageDynaLib1_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "resize_triangle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      mx_internal final function _SimpleThinResizableWindowSkin_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         if(mx_internal::_SimpleThinResizableWindowSkin_StylesInit_done)
         {
            return;
         }
         mx_internal::_SimpleThinResizableWindowSkin_StylesInit_done = true;
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
      public function get content() : Group
      {
         return this._951530617content;
      }
      
      public function set content(param1:Group) : void
      {
         var _loc2_:Object = this._951530617content;
         if(_loc2_ !== param1)
         {
            this._951530617content = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
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
      public function get resizeHandle() : Group
      {
         return this._1728995332resizeHandle;
      }
      
      public function set resizeHandle(param1:Group) : void
      {
         var _loc2_:Object = this._1728995332resizeHandle;
         if(_loc2_ !== param1)
         {
            this._1728995332resizeHandle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resizeHandle",_loc2_,param1));
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
      public function get titleButtonsLeft() : HGroup
      {
         return this._226904496titleButtonsLeft;
      }
      
      public function set titleButtonsLeft(param1:HGroup) : void
      {
         var _loc2_:Object = this._226904496titleButtonsLeft;
         if(_loc2_ !== param1)
         {
            this._226904496titleButtonsLeft = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleButtonsLeft",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleButtonsRight() : HGroup
      {
         return this._1550234221titleButtonsRight;
      }
      
      public function set titleButtonsRight(param1:HGroup) : void
      {
         var _loc2_:Object = this._1550234221titleButtonsRight;
         if(_loc2_ !== param1)
         {
            this._1550234221titleButtonsRight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleButtonsRight",_loc2_,param1));
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
      public function get hostComponent() : ResizableTitleWindow
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ResizableTitleWindow) : void
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
