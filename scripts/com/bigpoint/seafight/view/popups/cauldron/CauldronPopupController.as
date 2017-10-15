package com.bigpoint.seafight.view.popups.cauldron
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.model.inventory.vo.subscription.DefaultSubscription_VO;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.tools.class_1020;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.BriskImg;
   import com.bigpoint.seafight.view.common.components.CauldronWindow;
   import com.bigpoint.seafight.view.common.components.DynamicImageButton;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.cauldron.component.CauldronMapPiecesView;
   import com.bigpoint.seafight.view.popups.cauldron.component.CauldronPopup;
   import com.bigpoint.seafight.view.popups.cauldron.component.tooltips.CostTooltipItem;
   import com.bigpoint.seafight.view.popups.cauldron.vo.CauldronLootItemVo;
   import com.bigpoint.seafight.view.popups.cauldron.vo.CauldronRitualsVo;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.common.SmallGreenPayButton;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.constants.SocketEmphasisType;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.skins.StatisticListSkin;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.InstantMessageContainer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.GemOverviewListSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bit101.components.InputText;
   import com.bit101.components.ListItem;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.Socket;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import mx.resources.ResourceManager;
   import mx.utils.LinkedList;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.groupmap.GroupMapType;
   import net.bigpoint.seafight.com.module.guild.class_459;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_1310;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import net.bigpoint.seafight.com.module.useraction.UserActionFailedReason;
   import package_101.class_566;
   import package_106.class_372;
   import package_106.class_783;
   import package_111.class_696;
   import package_115.class_1335;
   import package_115.class_490;
   import package_121.class_841;
   import package_127.class_455;
   import package_127.class_486;
   import package_127.class_528;
   import package_14.class_102;
   import package_14.class_1313;
   import package_14.class_1377;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_147.class_683;
   import package_147.class_797;
   import package_148.class_820;
   import package_15.class_48;
   import package_16.class_28;
   import package_166.class_1332;
   import package_166.class_1334;
   import package_166.class_1336;
   import package_166.class_1337;
   import package_166.class_1345;
   import package_166.class_963;
   import package_166.class_964;
   import package_170.class_979;
   import package_171.*;
   import package_184.class_1135;
   import package_185.class_1136;
   import package_216.class_1575;
   import package_220.class_1601;
   import package_26.class_142;
   import package_3.class_499;
   import package_34.class_1362;
   import package_36.class_100;
   import package_40.class_416;
   import package_42.class_98;
   import package_43.class_106;
   import package_43.class_251;
   import package_46.class_1224;
   import package_46.class_1356;
   import package_47.class_129;
   import package_47.class_136;
   import package_47.class_657;
   import package_49.class_1320;
   import package_49.class_137;
   import package_49.class_140;
   import package_49.class_880;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_1239;
   import package_5.class_176;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_43;
   import package_51.class_148;
   import package_52.class_309;
   import package_56.class_170;
   import package_58.class_175;
   import package_6.class_14;
   import package_7.class_1039;
   import package_72.class_203;
   import package_79.class_258;
   import package_8.class_1240;
   import package_83.class_268;
   import package_9.class_350;
   import package_93.class_987;
   import package_97.class_986;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   public final class CauldronPopupController extends WindowController implements IWindowController
   {
       
      
      private var _component:CauldronPopup;
      
      private var _queryHub:class_48;
      
      private var _cauldronMapsController:CauldronPopupMapsController;
      
      private var _gameConstantsQuery:class_251;
      
      private var _cauldronLootWindowDisposableQuery:class_258;
      
      private var _userActionFailedDisposableQuery:class_268;
      
      private var _currenciesQuery:class_106;
      
      private var _ritualsVo:CauldronRitualsVo;
      
      private var _activeRitualOptionsIndex:int;
      
      private var _animationTime:int;
      
      public function CauldronPopupController(param1:String, param2:Object)
      {
         super(param1,param2);
         this._queryHub = class_48.name_3;
         this._component = param2 as CauldronPopup;
         this._gameConstantsQuery = this._queryHub.var_1192;
         this._currenciesQuery = this._queryHub.var_491;
         this._cauldronLootWindowDisposableQuery = this._queryHub.method_1423(class_1320.const_732);
         this._userActionFailedDisposableQuery = this._queryHub.method_1058(new <int>[UserActionFailedReason.GENERAL_CLIENT_DATA_OUT_OF_SYNC,UserActionFailedReason.GENERAL_INSUFFICIENT_FUNDS,UserActionFailedReason.GENERAL_INVALID_INPUTDATA,UserActionFailedReason.GENERAL_DISALLOWED_ON_CURRENT_MAP]);
         this._ritualsVo = new CauldronRitualsVo();
         this._ritualsVo.batchId = 0;
         this._activeRitualOptionsIndex = 0;
      }
      
      override protected function onWindowCreationComplete(param1:FlexEvent) : void
      {
         super.onWindowCreationComplete(param1);
         this.window.addEventListener(class_979.const_5,this.onHelpButtonClick);
         this.window.title = class_47.method_22.method_20("cauldron");
         this.setButtonProgressAnimation(true);
         this._cauldronMapsController = new CauldronPopupMapsController(this._component,this._queryHub);
         this._component.lootList.dataProvider = new ArrayList([new Object()]);
         this._component.mapView.addEventListener(CauldronMapPiecesView.BACK_BUTTON_CLICK,this.onMapViewBackButtonClick);
         this._component.cboMojos.addEventListener(IndexChangeEvent.CHANGE,this.onRitualOptionsComboBoxChange);
         this._component.btnClearList.addEventListener(MouseEvent.CLICK,this.onClearListButtonClick);
         this._component.btnStartRitual.button.addEventListener(MouseEvent.CLICK,this.onStartRitualButtonClick);
         this._component.btnStartRitual.button.addEventListener(ToolTipEvent.TOOL_TIP_CREATE,this.onHoverStartRitualButton);
         this._component.btnStartRitual.button.textId = "startritual";
         this._component.btnStartRitual.button.toolTip = "_";
         this._component.grpCurrency.toolTip = class_96.method_20(class_96.const_163,"currencytip");
         this._component.btnClearList.toolTip = class_96.method_20(class_96.const_163,"clearloottip");
         this._component.subHeader.headerText.text = class_96.method_20(class_96.const_163,"subheadertip");
         this._gameConstantsQuery.addEventListener(Event.CHANGE,this.onGameConstantsReady);
         this._currenciesQuery.addEventListener(Event.CHANGE,this.onRitualsValuesChange);
         this._cauldronLootWindowDisposableQuery.addEventListener(Event.CHANGE,this.onRitualsLootResponse);
         this._userActionFailedDisposableQuery.addEventListener(Event.CHANGE,this.onUserActionFailedEvent);
         this._component.lootList.addEventListener(FlexEvent.UPDATE_COMPLETE,this.onLootDataGroupUpdateComplete);
         this.initView();
      }
      
      private final function initView() : void
      {
         if(this._gameConstantsQuery.name_62)
         {
            this.onGameConstantsReady();
         }
      }
      
      private final function onRitualsValuesChange(param1:Event = null) : void
      {
         this.updateRitualsCost();
         this._component.txPearlsValue.text = class_13.method_53(this._currenciesQuery.name_8.real);
         this._component.txMojosValue.text = class_13.method_53(this._currenciesQuery.name_8.mojos);
      }
      
      private final function onGameConstantsReady(param1:Event = null) : void
      {
         this.setButtonProgressAnimation(false);
         this.populateComboBox();
         this.onRitualsValuesChange();
      }
      
      private final function setButtonProgressAnimation(param1:Boolean) : void
      {
         this._component.btnStartRitual.setProgressAnimation(param1);
      }
      
      private final function updateRitualsCost() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.isRitualInProgress())
         {
            return;
         }
         _loc1_ = this._gameConstantsQuery.name_62[this._activeRitualOptionsIndex];
         _loc2_ = this._gameConstantsQuery.name_77 * _loc1_;
         _loc3_ = this._currenciesQuery.name_8.mojos - _loc2_;
         var _loc4_:* = _loc3_ >= 0;
         if(_loc4_)
         {
            this._ritualsVo.pearls = 0;
            this._ritualsVo.mojos = _loc2_;
         }
         else
         {
            this._ritualsVo.pearls = -_loc3_;
            this._ritualsVo.mojos = this._currenciesQuery.name_8.mojos;
         }
         var _loc5_:int = this._ritualsVo.pearls * this._gameConstantsQuery.name_71;
         var _loc6_:Boolean = _loc4_ || _loc5_ <= this._currenciesQuery.name_8.real;
         this._component.txPearlCost.text = class_13.method_53(_loc5_);
         this._component.btnStartRitual.setEnabled(_loc6_);
         this._component.grpStartRitaulButton.toolTip = !!_loc6_?null:class_47.method_22.method_20("popupnotenoughcredits");
         this._component.grpRitualCost.enabled = true;
      }
      
      private final function isRitualInProgress() : Boolean
      {
         return this._component.btnStartRitual.isProgressAnimating();
      }
      
      private final function populateComboBox() : void
      {
         this._component.cboMojos.dataProvider = class_1020.method_701(this._gameConstantsQuery.name_62);
         this._component.cboMojos.selectedIndex = this._activeRitualOptionsIndex;
      }
      
      private final function onRitualOptionsComboBoxChange(param1:IndexChangeEvent) : void
      {
         this._activeRitualOptionsIndex = param1.newIndex;
         this.updateRitualsCost();
      }
      
      private final function onStartRitualButtonClick(param1:MouseEvent) : void
      {
         this._ritualsVo.batchId++;
         this._component.grpRitualCost.enabled = false;
         this.setButtonProgressAnimation(true);
         class_203.name_21(SoundEffectType.CAULDRON_START_RITUAL);
         class_1362.name_3.method_2741(this._ritualsVo);
      }
      
      private final function onHoverStartRitualButton(param1:ToolTipEvent) : void
      {
         var _loc2_:CostTooltipItem = new CostTooltipItem();
         _loc2_.setTooltipData(this._ritualsVo.mojos,this._ritualsVo.pearls * this._gameConstantsQuery.name_71);
         param1.toolTip = _loc2_;
      }
      
      private final function onRitualsLootResponse(param1:Event) : void
      {
         var _loc10_:class_137 = null;
         var _loc11_:CauldronLootItemVo = null;
         if(this._ritualsVo.batchId != this._cauldronLootWindowDisposableQuery.method_1360)
         {
            Main.LOG.warn("rituals batch id {0} does not match with loot response id {1}",this._ritualsVo.batchId,this._cauldronLootWindowDisposableQuery.method_1360);
         }
         var _loc2_:List = this._component.lootList;
         var _loc3_:ArrayList = _loc2_.dataProvider as ArrayList;
         var _loc4_:Vector.<class_137> = this._cauldronLootWindowDisposableQuery.method_1367;
         var _loc5_:Boolean = false;
         var _loc6_:int = _loc4_.length;
         this._animationTime = 0;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc10_ = _loc4_[_loc7_];
            if(_loc10_.name_5 == class_140.const_528 || _loc10_.name_5 == class_140.const_183)
            {
               _loc5_ = true;
            }
            _loc11_ = new CauldronLootItemVo();
            ConcreteGoodVO.createFromLootStub(_loc10_,_loc11_);
            _loc11_.entryTime = this._animationTime = 100 + _loc7_ * 100;
            _loc3_.addItem(_loc11_);
            _loc7_++;
         }
         if(_loc5_)
         {
            class_203.name_21(SoundEffectType.CAULDRON_MAP_PIECE);
         }
         _loc2_.dataProvider = _loc3_;
         this._component.btnClearList.enabled = true;
         var _loc8_:class_1225 = class_1240.name_3.method_265(class_1239.const_1249);
         var _loc9_:int = _loc8_.method_130();
         delay(_loc9_ > this._animationTime?int(_loc9_):int(this._animationTime),this.onRitualsLootAnimationComplete);
      }
      
      private final function onUserActionFailedEvent(param1:Event) : void
      {
         this.onRitualsLootAnimationComplete();
      }
      
      private final function onRitualsLootAnimationComplete() : void
      {
         this.setButtonProgressAnimation(false);
         this.updateRitualsCost();
      }
      
      private final function onClearListButtonClick(param1:MouseEvent) : void
      {
         this._component.lootList.dataProvider.removeAll();
         this._component.btnClearList.enabled = false;
         class_203.name_21(SoundEffectType.CAULDRON_CLEAR_LIST);
      }
      
      private final function onLootDataGroupUpdateComplete(param1:FlexEvent) : void
      {
         if(this._ritualsVo.batchId == 0)
         {
            this._component.lootList.dataProvider.removeAll();
         }
         this._component.scrollAnimation.duration = this._animationTime;
         this._component.scrollAnimation.play();
      }
      
      private final function onMapViewBackButtonClick(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         this.setNormalView();
      }
      
      private final function onHelpButtonClick(param1:class_979) : void
      {
         MultiPopUpManager.addSimpleOK_Popup(class_96.method_20(class_96.const_163,"helptip"));
      }
      
      private final function setNormalView() : void
      {
         this._cauldronMapsController.onSwitchToNormalView();
         this._component.currentState = this._component.stateNormalView.name;
      }
      
      public function get window() : CauldronWindow
      {
         return this._component.owner as CauldronWindow;
      }
      
      override public function shutdown() : void
      {
         super.shutdown();
         if(this._cauldronMapsController)
         {
            this._cauldronMapsController.destroy();
            this._cauldronMapsController = null;
         }
         this.window.removeEventListener(class_979.const_5,this.onHelpButtonClick);
         this._component.cboMojos.removeEventListener(IndexChangeEvent.CHANGE,this.onRitualOptionsComboBoxChange);
         this._component.btnStartRitual.button.removeEventListener(MouseEvent.CLICK,this.onStartRitualButtonClick);
         this._component.btnStartRitual.button.removeEventListener(ToolTipEvent.TOOL_TIP_CREATE,this.onHoverStartRitualButton);
         this._component.btnClearList.removeEventListener(MouseEvent.CLICK,this.onClearListButtonClick);
         this._component.lootList.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.onLootDataGroupUpdateComplete);
         this._component.mapView.removeEventListener(CauldronMapPiecesView.BACK_BUTTON_CLICK,this.onMapViewBackButtonClick);
         this._gameConstantsQuery.removeEventListener(Event.CHANGE,this.onGameConstantsReady);
         this._currenciesQuery.removeEventListener(Event.CHANGE,this.onRitualsValuesChange);
         this._cauldronLootWindowDisposableQuery.removeEventListener(Event.CHANGE,this.onRitualsLootResponse);
         this._userActionFailedDisposableQuery.removeEventListener(Event.CHANGE,this.onUserActionFailedEvent);
         this._cauldronLootWindowDisposableQuery.method_36();
         this._userActionFailedDisposableQuery.method_36();
      }
      
      public function set data(param1:ContentVo) : void
      {
      }
   }
}
