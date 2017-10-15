package com.bigpoint.seafight.view.popups.spymenu.component
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1305;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.MateysWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.common.BoardingMenuVanity;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.RadioButton;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.SmallGreenPayButton;
   import com.bigpoint.seafight.view.popups.common.SmallRedDeclineButton;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.common.table.Table;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyPopup;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.LootGroup;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.GemPopupCraftingTab;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.controller.GemPopupCraftingTabController;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.component.RolesList;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.vo.GroupMapPlayerListItemRendererVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuCurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.LogCategoryCheckBox;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildPendingMemberListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.target;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.GuildRelationsComboBoxListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankItemListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankMemberListItemVo;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.MateysWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.mateysmenu.controllers.MateysWindowNaviController;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.MateysWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModuleVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipEquipmentNavigator;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyActionsItemRenderer;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyCheckboxItemRenderer;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyColumnCheckBoxRenderer;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyGuildTagItemRenderer;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyLocationItemRenderer;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyNameItemRenderer;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyUserIdItemRenderer;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.class_19;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bit101.components.Style;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BevelFilter;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.collections.ArrayCollection;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.IUIComponent;
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
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_373;
   import net.bigpoint.seafight.com.module.guild.class_513;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_101.class_1549;
   import package_104.class_448;
   import package_104.class_628;
   import package_104.class_641;
   import package_104.class_803;
   import package_104.class_989;
   import package_11.class_130;
   import package_11.class_20;
   import package_110.class_506;
   import package_111.class_696;
   import package_111.class_726;
   import package_111.class_741;
   import package_111.class_745;
   import package_111.class_774;
   import package_121.class_841;
   import package_14.class_1002;
   import package_14.class_102;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_96;
   import package_15.class_48;
   import package_151.class_905;
   import package_152.class_611;
   import package_152.class_852;
   import package_159.class_756;
   import package_16.class_28;
   import package_163.class_884;
   import package_165.class_953;
   import package_166.class_1502;
   import package_17.class_54;
   import package_170.class_979;
   import package_183.class_1453;
   import package_194.class_1226;
   import package_20.class_33;
   import package_20.class_982;
   import package_204.class_1306;
   import package_204.class_1531;
   import package_212.class_1537;
   import package_216.class_1575;
   import package_22.class_423;
   import package_22.class_655;
   import package_23.class_42;
   import package_26.class_1088;
   import package_26.class_1102;
   import package_26.class_142;
   import package_26.class_960;
   import package_27.class_53;
   import package_34.class_107;
   import package_34.class_117;
   import package_34.class_1499;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_1224;
   import package_46.class_1455;
   import package_46.class_1501;
   import package_47.class_935;
   import package_49.class_137;
   import package_49.class_140;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_43;
   import package_51.class_1355;
   import package_51.class_974;
   import package_52.class_168;
   import package_53.class_1100;
   import package_54.class_159;
   import package_54.class_162;
   import package_54.class_163;
   import package_54.class_319;
   import package_6.class_14;
   import package_65.class_1046;
   import package_7.class_1039;
   import package_72.class_1080;
   import package_72.class_203;
   import package_88.class_1014;
   import package_88.class_1093;
   import package_88.class_290;
   import package_88.class_967;
   import package_89.class_1138;
   import package_89.class_1378;
   import package_89.class_299;
   import package_90.class_316;
   import package_92.class_1278;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RadioButtonGroup;
   import spark.components.TitleWindow;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.components.gridClasses.GridColumn;
   import spark.effects.Rotate3D;
   import spark.events.IndexChangeEvent;
   import spark.layouts.TileLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   import spark.primitives.Line;
   import spark.primitives.RectangularDropShadow;
   import spark.utils.TextFlowUtil;
   
   use namespace mx_internal;
   
   public final class SpyPopup extends VGroup implements IBindingClient
   {
      
      private static const COLUMN_ID_WIDTH:Number = 0.18;
      
      private static const COLUMN_TAG_WIDTH:Number = 0.14;
      
      private static const COLUMN_LAST_WIDTH:Number = 0.35;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _SpyPopup_RadioButton1:RadioButton;
      
      public var _SpyPopup_RadioButton2:RadioButton;
      
      private var _258774269btnClearTable:SmallRedDeclineButton;
      
      private var _388187342btnLocate:SmallGreenPayButton;
      
      private var _358891321columnActions:GridColumn;
      
      private var _623419631columnId:GridColumn;
      
      private var _2105661695columnName:GridColumn;
      
      private var _2146128796columnTag:GridColumn;
      
      private var _395258785rgSearchOptions:RadioButtonGroup;
      
      private var _999905743searchArrayList:ArrayCollection;
      
      private var _549966074searchTable:Table;
      
      private var _840030267spyArrayList:ArrayCollection;
      
      private var _1560017930spyColumnCheck:GridColumn;
      
      private var _1243085587spyColumnId:GridColumn;
      
      private var _1711206919spyColumnLocation:GridColumn;
      
      private var _604191267spyColumnName:GridColumn;
      
      private var _119063048spyColumnTag:GridColumn;
      
      private var _1574386830spyTable:Table;
      
      private var _256808482txSearchInput:SearchTextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SpyPopup()
      {
         var com.bigpoint.seafight.view.popups.spymenu.component.target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._SpyPopup_bindingsSetup();
         var watchers:Array = [];
         com.bigpoint.seafight.view.popups.spymenu.component.target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_bigpoint_seafight_view_popups_spymenu_component_SpyPopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SpyPopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.gap = 0;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.paddingTop = 5;
         this.paddingBottom = 3;
         this.paddingRight = 4;
         this.paddingLeft = 4;
         this.mxmlContent = [this._SpyPopup_Group1_c(),this._SpyPopup_Spacer1_c(),this._SpyPopup_Group3_c(),this._SpyPopup_Spacer2_c(),this._SpyPopup_Group4_c(),this._SpyPopup_HGroup3_c()];
         this._SpyPopup_GridColumn4_i();
         this._SpyPopup_GridColumn2_i();
         this._SpyPopup_GridColumn1_i();
         this._SpyPopup_GridColumn3_i();
         this._SpyPopup_RadioButtonGroup1_i();
         this._SpyPopup_GridColumn5_i();
         this._SpyPopup_GridColumn7_i();
         this._SpyPopup_GridColumn9_i();
         this._SpyPopup_GridColumn6_i();
         this._SpyPopup_GridColumn8_i();
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         SpyPopup._watcherSetupUtil = param1;
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
      
      public final function updateColumnWidths() : void
      {
         var _loc1_:Event = new Event("widthChanged",true);
         this.searchTable.dispatchEvent(_loc1_);
         this.spyTable.dispatchEvent(_loc1_);
      }
      
      [Bindable("widthChanged")]
      private final function getColumnNameWidth() : int
      {
         var _loc1_:Number = !!this.searchArrayList.contains(this.columnId)?Number(COLUMN_ID_WIDTH):Number(0);
         return int((1 - (_loc1_ + COLUMN_TAG_WIDTH + COLUMN_LAST_WIDTH)) * this.searchTable.width);
      }
      
      [Bindable("widthChanged")]
      private final function getSpyColumnNameWidth() : int
      {
         var _loc1_:Number = !!this.spyArrayList.contains(this.spyColumnCheck)?Number(this.spyColumnCheck.width / this.spyTable.width):Number(0);
         return int((1 - (_loc1_ + COLUMN_ID_WIDTH + COLUMN_TAG_WIDTH + COLUMN_LAST_WIDTH)) * this.spyTable.width);
      }
      
      private final function _SpyPopup_GridColumn4_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.minWidth = 5;
         _loc1_.sortable = false;
         _loc1_.resizable = false;
         _loc1_.itemRenderer = this._SpyPopup_ClassFactory4_c();
         this.columnActions = _loc1_;
         BindingManager.executeBindings(this,"columnActions",this.columnActions);
         return _loc1_;
      }
      
      private final function _SpyPopup_ClassFactory4_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SpyActionsItemRenderer;
         return _loc1_;
      }
      
      private final function _SpyPopup_GridColumn2_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.minWidth = 5;
         _loc1_.sortable = true;
         _loc1_.resizable = false;
         _loc1_.itemRenderer = this._SpyPopup_ClassFactory2_c();
         this.columnId = _loc1_;
         BindingManager.executeBindings(this,"columnId",this.columnId);
         return _loc1_;
      }
      
      private final function _SpyPopup_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SpyUserIdItemRenderer;
         return _loc1_;
      }
      
      private final function _SpyPopup_GridColumn1_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.minWidth = 5;
         _loc1_.sortable = true;
         _loc1_.resizable = false;
         _loc1_.itemRenderer = this._SpyPopup_ClassFactory1_c();
         this.columnName = _loc1_;
         BindingManager.executeBindings(this,"columnName",this.columnName);
         return _loc1_;
      }
      
      private final function _SpyPopup_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SpyNameItemRenderer;
         return _loc1_;
      }
      
      private final function _SpyPopup_GridColumn3_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.minWidth = 5;
         _loc1_.sortable = true;
         _loc1_.resizable = false;
         _loc1_.itemRenderer = this._SpyPopup_ClassFactory3_c();
         this.columnTag = _loc1_;
         BindingManager.executeBindings(this,"columnTag",this.columnTag);
         return _loc1_;
      }
      
      private final function _SpyPopup_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SpyGuildTagItemRenderer;
         return _loc1_;
      }
      
      private final function _SpyPopup_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         _loc1_.initialized(this,"rgSearchOptions");
         this.rgSearchOptions = _loc1_;
         BindingManager.executeBindings(this,"rgSearchOptions",this.rgSearchOptions);
         return _loc1_;
      }
      
      private final function _SpyPopup_GridColumn5_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.width = 21;
         _loc1_.sortable = false;
         _loc1_.resizable = false;
         _loc1_.itemRenderer = this._SpyPopup_ClassFactory5_c();
         _loc1_.headerRenderer = this._SpyPopup_ClassFactory6_c();
         this.spyColumnCheck = _loc1_;
         BindingManager.executeBindings(this,"spyColumnCheck",this.spyColumnCheck);
         return _loc1_;
      }
      
      private final function _SpyPopup_ClassFactory5_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SpyCheckboxItemRenderer;
         return _loc1_;
      }
      
      private final function _SpyPopup_ClassFactory6_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SpyColumnCheckBoxRenderer;
         return _loc1_;
      }
      
      private final function _SpyPopup_GridColumn7_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.minWidth = 5;
         _loc1_.sortable = true;
         _loc1_.resizable = false;
         _loc1_.itemRenderer = this._SpyPopup_ClassFactory8_c();
         this.spyColumnId = _loc1_;
         BindingManager.executeBindings(this,"spyColumnId",this.spyColumnId);
         return _loc1_;
      }
      
      private final function _SpyPopup_ClassFactory8_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SpyUserIdItemRenderer;
         return _loc1_;
      }
      
      private final function _SpyPopup_GridColumn9_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.minWidth = 5;
         _loc1_.sortable = true;
         _loc1_.resizable = false;
         _loc1_.itemRenderer = this._SpyPopup_ClassFactory10_c();
         this.spyColumnLocation = _loc1_;
         BindingManager.executeBindings(this,"spyColumnLocation",this.spyColumnLocation);
         return _loc1_;
      }
      
      private final function _SpyPopup_ClassFactory10_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SpyLocationItemRenderer;
         return _loc1_;
      }
      
      private final function _SpyPopup_GridColumn6_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.minWidth = 5;
         _loc1_.sortable = true;
         _loc1_.resizable = false;
         _loc1_.itemRenderer = this._SpyPopup_ClassFactory7_c();
         this.spyColumnName = _loc1_;
         BindingManager.executeBindings(this,"spyColumnName",this.spyColumnName);
         return _loc1_;
      }
      
      private final function _SpyPopup_ClassFactory7_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SpyNameItemRenderer;
         return _loc1_;
      }
      
      private final function _SpyPopup_GridColumn8_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.minWidth = 5;
         _loc1_.sortable = true;
         _loc1_.resizable = false;
         _loc1_.itemRenderer = this._SpyPopup_ClassFactory9_c();
         this.spyColumnTag = _loc1_;
         BindingManager.executeBindings(this,"spyColumnTag",this.spyColumnTag);
         return _loc1_;
      }
      
      private final function _SpyPopup_ClassFactory9_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SpyGuildTagItemRenderer;
         return _loc1_;
      }
      
      private final function _SpyPopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.minHeight = 38;
         _loc1_.height = 38;
         _loc1_.mxmlContent = [this._SpyPopup_Group2_c(),this._SpyPopup_BorderType11_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SpyPopup_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.left = 7;
         _loc1_.right = 4;
         _loc1_.top = 4;
         _loc1_.layout = this._SpyPopup_TileLayout1_c();
         _loc1_.mxmlContent = [this._SpyPopup_HGroup1_c(),this._SpyPopup_HGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SpyPopup_TileLayout1_c() : TileLayout
      {
         var _loc1_:TileLayout = new TileLayout();
         return _loc1_;
      }
      
      private final function _SpyPopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.height = 30;
         _loc1_.mxmlContent = [this._SpyPopup_SearchTextInput1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SpyPopup_SearchTextInput1_i() : SearchTextInput
      {
         var _loc1_:SearchTextInput = new SearchTextInput();
         _loc1_.minWidth = 50;
         _loc1_.width = 165;
         _loc1_.searchTextId = "search";
         _loc1_.id = "txSearchInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.txSearchInput = _loc1_;
         BindingManager.executeBindings(this,"txSearchInput",this.txSearchInput);
         return _loc1_;
      }
      
      private final function _SpyPopup_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SpyPopup_SF_LocaLabel1_c(),this._SpyPopup_RadioButton1_i(),this._SpyPopup_RadioButton2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SpyPopup_SF_LocaLabel1_c() : SF_LocaLabel
      {
         var _loc1_:SF_LocaLabel = new SF_LocaLabel();
         _loc1_.locaID = "search";
         _loc1_.suffix = ":";
         _loc1_.styleName = "fontgrey12";
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("paddingTop",2);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SpyPopup_RadioButton1_i() : RadioButton
      {
         var _loc1_:RadioButton = new RadioButton();
         _loc1_.textId = "player";
         _loc1_.selected = true;
         _loc1_.percentWidth = 100;
         _loc1_.id = "_SpyPopup_RadioButton1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SpyPopup_RadioButton1 = _loc1_;
         BindingManager.executeBindings(this,"_SpyPopup_RadioButton1",this._SpyPopup_RadioButton1);
         return _loc1_;
      }
      
      private final function _SpyPopup_RadioButton2_i() : RadioButton
      {
         var _loc1_:RadioButton = new RadioButton();
         _loc1_.textId = "guild";
         _loc1_.percentWidth = 100;
         _loc1_.id = "_SpyPopup_RadioButton2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SpyPopup_RadioButton2 = _loc1_;
         BindingManager.executeBindings(this,"_SpyPopup_RadioButton2",this._SpyPopup_RadioButton2);
         return _loc1_;
      }
      
      private final function _SpyPopup_BorderType11_c() : BorderType1
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
      
      private final function _SpyPopup_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         _loc1_.height = 3;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SpyPopup_Group3_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 103;
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._SpyPopup_Table1_i(),this._SpyPopup_BorderType12_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SpyPopup_Table1_i() : Table
      {
         var _loc1_:Table = new Table();
         _loc1_.right = 1;
         _loc1_.columns = this._SpyPopup_ArrayCollection1_i();
         _loc1_.id = "searchTable";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.searchTable = _loc1_;
         BindingManager.executeBindings(this,"searchTable",this.searchTable);
         return _loc1_;
      }
      
      private final function _SpyPopup_ArrayCollection1_i() : ArrayCollection
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         _loc1_.initialized(this,"searchArrayList");
         this.searchArrayList = _loc1_;
         BindingManager.executeBindings(this,"searchArrayList",this.searchArrayList);
         return _loc1_;
      }
      
      private final function _SpyPopup_BorderType12_c() : BorderType1
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
      
      private final function _SpyPopup_Spacer2_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         _loc1_.height = 3;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SpyPopup_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.minHeight = 103;
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._SpyPopup_Table2_i(),this._SpyPopup_BorderType13_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SpyPopup_Table2_i() : Table
      {
         var _loc1_:Table = new Table();
         _loc1_.right = 1;
         _loc1_.columns = this._SpyPopup_ArrayCollection2_i();
         _loc1_.id = "spyTable";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.spyTable = _loc1_;
         BindingManager.executeBindings(this,"spyTable",this.spyTable);
         return _loc1_;
      }
      
      private final function _SpyPopup_ArrayCollection2_i() : ArrayCollection
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         _loc1_.initialized(this,"spyArrayList");
         this.spyArrayList = _loc1_;
         BindingManager.executeBindings(this,"spyArrayList",this.spyArrayList);
         return _loc1_;
      }
      
      private final function _SpyPopup_BorderType13_c() : BorderType1
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
      
      private final function _SpyPopup_HGroup3_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = -1;
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = -1;
         _loc1_.mxmlContent = [this._SpyPopup_SmallRedDeclineButton1_i(),this._SpyPopup_SmallGreenPayButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SpyPopup_SmallRedDeclineButton1_i() : SmallRedDeclineButton
      {
         var _loc1_:SmallRedDeclineButton = new SmallRedDeclineButton();
         _loc1_.textId = "clearchecklist";
         _loc1_.enabled = false;
         _loc1_.id = "btnClearTable";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.btnClearTable = _loc1_;
         BindingManager.executeBindings(this,"btnClearTable",this.btnClearTable);
         return _loc1_;
      }
      
      private final function _SpyPopup_SmallGreenPayButton1_i() : SmallGreenPayButton
      {
         var _loc1_:SmallGreenPayButton = new SmallGreenPayButton();
         _loc1_.percentWidth = 100;
         _loc1_.id = "btnLocate";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.btnLocate = _loc1_;
         BindingManager.executeBindings(this,"btnLocate",this.btnLocate);
         return _loc1_;
      }
      
      private final function _SpyPopup_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Number
         {
            return getColumnNameWidth();
         },null,"columnName.width");
         result[1] = new Binding(this,function():Number
         {
            return int(searchTable.width * COLUMN_ID_WIDTH);
         },null,"columnId.width");
         result[2] = new Binding(this,function():Number
         {
            return int(searchTable.width * COLUMN_TAG_WIDTH);
         },null,"columnTag.width");
         result[3] = new Binding(this,function():Number
         {
            return int(spyTable.width * COLUMN_LAST_WIDTH);
         },null,"columnActions.width");
         result[4] = new Binding(this,function():Number
         {
            return getSpyColumnNameWidth();
         },null,"spyColumnName.width");
         result[5] = new Binding(this,function():Number
         {
            return int(spyTable.width * COLUMN_ID_WIDTH);
         },null,"spyColumnId.width");
         result[6] = new Binding(this,function():Number
         {
            return int(spyTable.width * COLUMN_TAG_WIDTH);
         },null,"spyColumnTag.width");
         result[7] = new Binding(this,function():Number
         {
            return int(spyTable.width * COLUMN_LAST_WIDTH);
         },null,"spyColumnLocation.width");
         result[8] = new Binding(this,null,null,"_SpyPopup_RadioButton1.group","rgSearchOptions");
         result[9] = new Binding(this,null,null,"_SpyPopup_RadioButton2.group","rgSearchOptions");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnClearTable() : SmallRedDeclineButton
      {
         return this._258774269btnClearTable;
      }
      
      public function set btnClearTable(param1:SmallRedDeclineButton) : void
      {
         var _loc2_:Object = this._258774269btnClearTable;
         if(_loc2_ !== param1)
         {
            this._258774269btnClearTable = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnClearTable",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnLocate() : SmallGreenPayButton
      {
         return this._388187342btnLocate;
      }
      
      public function set btnLocate(param1:SmallGreenPayButton) : void
      {
         var _loc2_:Object = this._388187342btnLocate;
         if(_loc2_ !== param1)
         {
            this._388187342btnLocate = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnLocate",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get columnActions() : GridColumn
      {
         return this._358891321columnActions;
      }
      
      public function set columnActions(param1:GridColumn) : void
      {
         var _loc2_:Object = this._358891321columnActions;
         if(_loc2_ !== param1)
         {
            this._358891321columnActions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"columnActions",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get columnId() : GridColumn
      {
         return this._623419631columnId;
      }
      
      public function set columnId(param1:GridColumn) : void
      {
         var _loc2_:Object = this._623419631columnId;
         if(_loc2_ !== param1)
         {
            this._623419631columnId = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"columnId",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get columnName() : GridColumn
      {
         return this._2105661695columnName;
      }
      
      public function set columnName(param1:GridColumn) : void
      {
         var _loc2_:Object = this._2105661695columnName;
         if(_loc2_ !== param1)
         {
            this._2105661695columnName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"columnName",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get columnTag() : GridColumn
      {
         return this._2146128796columnTag;
      }
      
      public function set columnTag(param1:GridColumn) : void
      {
         var _loc2_:Object = this._2146128796columnTag;
         if(_loc2_ !== param1)
         {
            this._2146128796columnTag = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"columnTag",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rgSearchOptions() : RadioButtonGroup
      {
         return this._395258785rgSearchOptions;
      }
      
      public function set rgSearchOptions(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._395258785rgSearchOptions;
         if(_loc2_ !== param1)
         {
            this._395258785rgSearchOptions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rgSearchOptions",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchArrayList() : ArrayCollection
      {
         return this._999905743searchArrayList;
      }
      
      public function set searchArrayList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._999905743searchArrayList;
         if(_loc2_ !== param1)
         {
            this._999905743searchArrayList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchArrayList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchTable() : Table
      {
         return this._549966074searchTable;
      }
      
      public function set searchTable(param1:Table) : void
      {
         var _loc2_:Object = this._549966074searchTable;
         if(_loc2_ !== param1)
         {
            this._549966074searchTable = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchTable",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spyArrayList() : ArrayCollection
      {
         return this._840030267spyArrayList;
      }
      
      public function set spyArrayList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._840030267spyArrayList;
         if(_loc2_ !== param1)
         {
            this._840030267spyArrayList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spyArrayList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spyColumnCheck() : GridColumn
      {
         return this._1560017930spyColumnCheck;
      }
      
      public function set spyColumnCheck(param1:GridColumn) : void
      {
         var _loc2_:Object = this._1560017930spyColumnCheck;
         if(_loc2_ !== param1)
         {
            this._1560017930spyColumnCheck = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spyColumnCheck",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spyColumnId() : GridColumn
      {
         return this._1243085587spyColumnId;
      }
      
      public function set spyColumnId(param1:GridColumn) : void
      {
         var _loc2_:Object = this._1243085587spyColumnId;
         if(_loc2_ !== param1)
         {
            this._1243085587spyColumnId = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spyColumnId",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spyColumnLocation() : GridColumn
      {
         return this._1711206919spyColumnLocation;
      }
      
      public function set spyColumnLocation(param1:GridColumn) : void
      {
         var _loc2_:Object = this._1711206919spyColumnLocation;
         if(_loc2_ !== param1)
         {
            this._1711206919spyColumnLocation = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spyColumnLocation",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spyColumnName() : GridColumn
      {
         return this._604191267spyColumnName;
      }
      
      public function set spyColumnName(param1:GridColumn) : void
      {
         var _loc2_:Object = this._604191267spyColumnName;
         if(_loc2_ !== param1)
         {
            this._604191267spyColumnName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spyColumnName",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spyColumnTag() : GridColumn
      {
         return this._119063048spyColumnTag;
      }
      
      public function set spyColumnTag(param1:GridColumn) : void
      {
         var _loc2_:Object = this._119063048spyColumnTag;
         if(_loc2_ !== param1)
         {
            this._119063048spyColumnTag = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spyColumnTag",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spyTable() : Table
      {
         return this._1574386830spyTable;
      }
      
      public function set spyTable(param1:Table) : void
      {
         var _loc2_:Object = this._1574386830spyTable;
         if(_loc2_ !== param1)
         {
            this._1574386830spyTable = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spyTable",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txSearchInput() : SearchTextInput
      {
         return this._256808482txSearchInput;
      }
      
      public function set txSearchInput(param1:SearchTextInput) : void
      {
         var _loc2_:Object = this._256808482txSearchInput;
         if(_loc2_ !== param1)
         {
            this._256808482txSearchInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txSearchInput",_loc2_,param1));
            }
         }
      }
   }
}
