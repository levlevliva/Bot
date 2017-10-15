package com.bigpoint.seafight.view.popups.castle.component
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_46;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleWindowData;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyPopup;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.GroupMapIcon;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.LootGroup;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuVanityComponent;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildCurrencyVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildImage;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentVo;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiButtonVO;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsStatsComponent;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScoreVo;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
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
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.presets.PresetComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverviewContentMask;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenSpyWindow;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.TweenCore;
   import com.greensock.events.LoaderEvent;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BevelFilter;
   import flash.geom.Point;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.LinearGradientStroke;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.gems.class_637;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import org.osflash.signals.Signal;
   import package_100.class_356;
   import package_101.class_566;
   import package_107.class_693;
   import package_111.class_391;
   import package_111.class_425;
   import package_111.class_446;
   import package_111.class_466;
   import package_111.class_696;
   import package_115.class_1335;
   import package_115.class_490;
   import package_117.class_407;
   import package_117.class_477;
   import package_121.class_841;
   import package_122.class_656;
   import package_124.class_673;
   import package_139.class_532;
   import package_14.class_1002;
   import package_14.class_1003;
   import package_14.class_220;
   import package_14.class_25;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_140.class_540;
   import package_141.class_804;
   import package_15.class_48;
   import package_156.class_1508;
   import package_156.class_674;
   import package_16.class_28;
   import package_163.class_884;
   import package_166.class_1332;
   import package_166.class_1334;
   import package_166.class_1336;
   import package_166.class_1337;
   import package_166.class_963;
   import package_166.class_964;
   import package_17.class_224;
   import package_171.class_1275;
   import package_171.class_1316;
   import package_184.class_1135;
   import package_185.class_1136;
   import package_20.class_33;
   import package_21.class_197;
   import package_211.class_1369;
   import package_22.class_423;
   import package_22.class_645;
   import package_22.class_655;
   import package_22.class_671;
   import package_26.class_218;
   import package_29.class_166;
   import package_30.class_62;
   import package_34.class_107;
   import package_34.class_1499;
   import package_36.class_100;
   import package_41.class_103;
   import package_41.class_84;
   import package_41.class_93;
   import package_44.class_1041;
   import package_46.class_1224;
   import package_49.class_137;
   import package_49.class_140;
   import package_5.class_133;
   import package_5.class_43;
   import package_5.class_939;
   import package_50.class_219;
   import package_51.class_148;
   import package_52.class_168;
   import package_54.class_1089;
   import package_6.class_14;
   import package_7.class_104;
   import package_7.class_15;
   import package_72.class_203;
   import package_89.class_1378;
   import package_92.class_962;
   import package_99.class_639;
   import package_99.class_786;
   import spark.components.BorderContainer;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.TileGroup;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.effects.Rotate3D;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class CastlePopup extends VGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _CastlePopup_VScrollBar1:VScrollBar;
      
      private var _1974554546boosterList:CastleBoosterList;
      
      private var _114138550castleList:TileGroup;
      
      private var _1112076968castle_01:CastleWindowCastleItem;
      
      private var _1112076969castle_02:CastleWindowCastleItem;
      
      private var _1112076970castle_03:CastleWindowCastleItem;
      
      private var _1112076971castle_04:CastleWindowCastleItem;
      
      private var _1112076972castle_05:CastleWindowCastleItem;
      
      private var _1112076973castle_06:CastleWindowCastleItem;
      
      private var _1428185007castle_title:Label;
      
      private var _1787051164cboPresets:PresetComboBox;
      
      private var _397213082eventBanner:BriskImageDynaLib;
      
      private var _1615375045module_title:Label;
      
      private var _714875667subHeader:PopupSubHeader;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CastlePopup()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._CastlePopup_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_bigpoint_seafight_view_popups_castle_component_CastlePopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CastlePopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._CastlePopup_PopupSubHeader1_i(),this._CastlePopup_HGroup1_c(),this._CastlePopup_HGroup2_c()];
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         CastlePopup._watcherSetupUtil = param1;
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
      
      private final function _CastlePopup_PopupSubHeader1_i() : PopupSubHeader
      {
         var _loc1_:PopupSubHeader = new PopupSubHeader();
         _loc1_.includeInLayout = true;
         _loc1_.visible = true;
         _loc1_.height = 22;
         _loc1_.id = "subHeader";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.subHeader = _loc1_;
         BindingManager.executeBindings(this,"subHeader",this.subHeader);
         return _loc1_;
      }
      
      private final function _CastlePopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.height = 20;
         _loc1_.percentWidth = 100;
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._CastlePopup_PresetComboBox1_i(),this._CastlePopup_BriskImageDynaLib1_c(),this._CastlePopup_Label1_i(),this._CastlePopup_BriskImageDynaLib2_c(),this._CastlePopup_Label2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CastlePopup_PresetComboBox1_i() : PresetComboBox
      {
         var _loc1_:PresetComboBox = new PresetComboBox();
         _loc1_.width = 167;
         _loc1_.height = 25;
         _loc1_.id = "cboPresets";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cboPresets = _loc1_;
         BindingManager.executeBindings(this,"cboPresets",this.cboPresets);
         return _loc1_;
      }
      
      private final function _CastlePopup_BriskImageDynaLib1_c() : BriskImageDynaLib
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
      
      private final function _CastlePopup_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.styleName = "fontwhite12";
         _loc1_.percentHeight = 100;
         _loc1_.width = 375;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","bottom");
         _loc1_.id = "castle_title";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.castle_title = _loc1_;
         BindingManager.executeBindings(this,"castle_title",this.castle_title);
         return _loc1_;
      }
      
      private final function _CastlePopup_BriskImageDynaLib2_c() : BriskImageDynaLib
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
      
      private final function _CastlePopup_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.styleName = "fontwhite12";
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","bottom");
         _loc1_.id = "module_title";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.module_title = _loc1_;
         BindingManager.executeBindings(this,"module_title",this.module_title);
         return _loc1_;
      }
      
      private final function _CastlePopup_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.height = 331;
         _loc1_.mxmlContent = [this._CastlePopup_Spacer1_c(),this._CastlePopup_Group1_c(),this._CastlePopup_TileGroup1_i(),this._CastlePopup_Group2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CastlePopup_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CastlePopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 161;
         _loc1_.height = 330;
         _loc1_.mxmlContent = [this._CastlePopup_BriskImageDynaLib3_c(),this._CastlePopup_BorderType11_c(),this._CastlePopup_BriskImageDynaLib4_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CastlePopup_BriskImageDynaLib3_c() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "castle";
         _loc1_.dynaBmpSourceName = "Artwork_Castle";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CastlePopup_BorderType11_c() : BorderType1
      {
         var _loc1_:BorderType1 = new BorderType1();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 101;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CastlePopup_BriskImageDynaLib4_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "castle";
         _loc1_.left = -7;
         _loc1_.top = -3;
         _loc1_.id = "eventBanner";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.eventBanner = _loc1_;
         BindingManager.executeBindings(this,"eventBanner",this.eventBanner);
         return _loc1_;
      }
      
      private final function _CastlePopup_TileGroup1_i() : TileGroup
      {
         var _loc1_:TileGroup = new TileGroup();
         _loc1_.percentHeight = 100;
         _loc1_.requestedColumnCount = 2;
         _loc1_.horizontalGap = 4;
         _loc1_.verticalGap = 4;
         _loc1_.mxmlContent = [this._CastlePopup_CastleWindowCastleItem1_i(),this._CastlePopup_CastleWindowCastleItem2_i(),this._CastlePopup_CastleWindowCastleItem3_i(),this._CastlePopup_CastleWindowCastleItem4_i(),this._CastlePopup_CastleWindowCastleItem5_i(),this._CastlePopup_CastleWindowCastleItem6_i()];
         _loc1_.id = "castleList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.castleList = _loc1_;
         BindingManager.executeBindings(this,"castleList",this.castleList);
         return _loc1_;
      }
      
      private final function _CastlePopup_CastleWindowCastleItem1_i() : CastleWindowCastleItem
      {
         var _loc1_:CastleWindowCastleItem = new CastleWindowCastleItem();
         _loc1_.id = "castle_01";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.castle_01 = _loc1_;
         BindingManager.executeBindings(this,"castle_01",this.castle_01);
         return _loc1_;
      }
      
      private final function _CastlePopup_CastleWindowCastleItem2_i() : CastleWindowCastleItem
      {
         var _loc1_:CastleWindowCastleItem = new CastleWindowCastleItem();
         _loc1_.id = "castle_02";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.castle_02 = _loc1_;
         BindingManager.executeBindings(this,"castle_02",this.castle_02);
         return _loc1_;
      }
      
      private final function _CastlePopup_CastleWindowCastleItem3_i() : CastleWindowCastleItem
      {
         var _loc1_:CastleWindowCastleItem = new CastleWindowCastleItem();
         _loc1_.id = "castle_03";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.castle_03 = _loc1_;
         BindingManager.executeBindings(this,"castle_03",this.castle_03);
         return _loc1_;
      }
      
      private final function _CastlePopup_CastleWindowCastleItem4_i() : CastleWindowCastleItem
      {
         var _loc1_:CastleWindowCastleItem = new CastleWindowCastleItem();
         _loc1_.id = "castle_04";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.castle_04 = _loc1_;
         BindingManager.executeBindings(this,"castle_04",this.castle_04);
         return _loc1_;
      }
      
      private final function _CastlePopup_CastleWindowCastleItem5_i() : CastleWindowCastleItem
      {
         var _loc1_:CastleWindowCastleItem = new CastleWindowCastleItem();
         _loc1_.id = "castle_05";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.castle_05 = _loc1_;
         BindingManager.executeBindings(this,"castle_05",this.castle_05);
         return _loc1_;
      }
      
      private final function _CastlePopup_CastleWindowCastleItem6_i() : CastleWindowCastleItem
      {
         var _loc1_:CastleWindowCastleItem = new CastleWindowCastleItem();
         _loc1_.id = "castle_06";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.castle_06 = _loc1_;
         BindingManager.executeBindings(this,"castle_06",this.castle_06);
         return _loc1_;
      }
      
      private final function _CastlePopup_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 260;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._CastlePopup_BorderType12_c(),this._CastlePopup_CastleBoosterList1_i(),this._CastlePopup_VScrollBar1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CastlePopup_BorderType12_c() : BorderType1
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
      
      private final function _CastlePopup_CastleBoosterList1_i() : CastleBoosterList
      {
         var _loc1_:CastleBoosterList = new CastleBoosterList();
         _loc1_.name = "boosterList";
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "boosterList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.boosterList = _loc1_;
         BindingManager.executeBindings(this,"boosterList",this.boosterList);
         return _loc1_;
      }
      
      private final function _CastlePopup_VScrollBar1_i() : VScrollBar
      {
         var _loc1_:VScrollBar = new VScrollBar();
         _loc1_.percentHeight = 100;
         _loc1_.right = 2;
         _loc1_.setStyle("fixedThumbSize",true);
         _loc1_.setStyle("skinClass",VScrollDecoSkin);
         _loc1_.addEventListener("hide",this.___CastlePopup_VScrollBar1_hide);
         _loc1_.id = "_CastlePopup_VScrollBar1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CastlePopup_VScrollBar1 = _loc1_;
         BindingManager.executeBindings(this,"_CastlePopup_VScrollBar1",this._CastlePopup_VScrollBar1);
         return _loc1_;
      }
      
      public final function ___CastlePopup_VScrollBar1_hide(param1:FlexEvent) : void
      {
      }
      
      private final function _CastlePopup_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():int
         {
            return CastleWindowData.TOPCASTLE;
         },null,"castle_01.castleId");
         result[1] = new Binding(this,function():int
         {
            return CastleWindowData.FORECASTLE;
         },null,"castle_02.castleId");
         result[2] = new Binding(this,function():int
         {
            return CastleWindowData.VOODOO_CASTLE;
         },null,"castle_03.castleId");
         result[3] = new Binding(this,function():int
         {
            return CastleWindowData.GUN_DECK;
         },null,"castle_04.castleId");
         result[4] = new Binding(this,function():int
         {
            return CastleWindowData.AFTCASTLE;
         },null,"castle_05.castleId");
         result[5] = new Binding(this,function():int
         {
            return CastleWindowData.CREW_DECK;
         },null,"castle_06.castleId");
         result[6] = new Binding(this,null,null,"_CastlePopup_VScrollBar1.viewport","boosterList");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get boosterList() : CastleBoosterList
      {
         return this._1974554546boosterList;
      }
      
      public function set boosterList(param1:CastleBoosterList) : void
      {
         var _loc2_:Object = this._1974554546boosterList;
         if(_loc2_ !== param1)
         {
            this._1974554546boosterList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosterList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get castleList() : TileGroup
      {
         return this._114138550castleList;
      }
      
      public function set castleList(param1:TileGroup) : void
      {
         var _loc2_:Object = this._114138550castleList;
         if(_loc2_ !== param1)
         {
            this._114138550castleList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"castleList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get castle_01() : CastleWindowCastleItem
      {
         return this._1112076968castle_01;
      }
      
      public function set castle_01(param1:CastleWindowCastleItem) : void
      {
         var _loc2_:Object = this._1112076968castle_01;
         if(_loc2_ !== param1)
         {
            this._1112076968castle_01 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"castle_01",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get castle_02() : CastleWindowCastleItem
      {
         return this._1112076969castle_02;
      }
      
      public function set castle_02(param1:CastleWindowCastleItem) : void
      {
         var _loc2_:Object = this._1112076969castle_02;
         if(_loc2_ !== param1)
         {
            this._1112076969castle_02 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"castle_02",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get castle_03() : CastleWindowCastleItem
      {
         return this._1112076970castle_03;
      }
      
      public function set castle_03(param1:CastleWindowCastleItem) : void
      {
         var _loc2_:Object = this._1112076970castle_03;
         if(_loc2_ !== param1)
         {
            this._1112076970castle_03 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"castle_03",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get castle_04() : CastleWindowCastleItem
      {
         return this._1112076971castle_04;
      }
      
      public function set castle_04(param1:CastleWindowCastleItem) : void
      {
         var _loc2_:Object = this._1112076971castle_04;
         if(_loc2_ !== param1)
         {
            this._1112076971castle_04 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"castle_04",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get castle_05() : CastleWindowCastleItem
      {
         return this._1112076972castle_05;
      }
      
      public function set castle_05(param1:CastleWindowCastleItem) : void
      {
         var _loc2_:Object = this._1112076972castle_05;
         if(_loc2_ !== param1)
         {
            this._1112076972castle_05 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"castle_05",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get castle_06() : CastleWindowCastleItem
      {
         return this._1112076973castle_06;
      }
      
      public function set castle_06(param1:CastleWindowCastleItem) : void
      {
         var _loc2_:Object = this._1112076973castle_06;
         if(_loc2_ !== param1)
         {
            this._1112076973castle_06 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"castle_06",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get castle_title() : Label
      {
         return this._1428185007castle_title;
      }
      
      public function set castle_title(param1:Label) : void
      {
         var _loc2_:Object = this._1428185007castle_title;
         if(_loc2_ !== param1)
         {
            this._1428185007castle_title = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"castle_title",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cboPresets() : PresetComboBox
      {
         return this._1787051164cboPresets;
      }
      
      public function set cboPresets(param1:PresetComboBox) : void
      {
         var _loc2_:Object = this._1787051164cboPresets;
         if(_loc2_ !== param1)
         {
            this._1787051164cboPresets = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cboPresets",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eventBanner() : BriskImageDynaLib
      {
         return this._397213082eventBanner;
      }
      
      public function set eventBanner(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._397213082eventBanner;
         if(_loc2_ !== param1)
         {
            this._397213082eventBanner = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eventBanner",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get module_title() : Label
      {
         return this._1615375045module_title;
      }
      
      public function set module_title(param1:Label) : void
      {
         var _loc2_:Object = this._1615375045module_title;
         if(_loc2_ !== param1)
         {
            this._1615375045module_title = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"module_title",_loc2_,param1));
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
   }
}
