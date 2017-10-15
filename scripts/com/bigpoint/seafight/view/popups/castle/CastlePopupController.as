package com.bigpoint.seafight.view.popups.castle
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_46;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.LevelTooltipItemRenderer;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.castle.component.CastlePopup;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowBoosterItem;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowSlot;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.castle.controller.CastleDragDropController;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleSlotVo;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleVo;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleWindowData;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InventoryDragDropController;
   import com.bigpoint.seafight.view.popups.event.modules.EventModule;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.vo.ClashRankingListItemVO;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupPieceVo;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupVo;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.ConcreteGoodTooltip;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.MysteryChestTooltip;
   import com.bigpoint.seafight.view.popups.shipequipment.skins.StatisticListSkin;
   import com.bigpoint.seafight.view.popups.teamscore.component.TeamMembersScorePopupListItemMemberItem;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.GemItemToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenUpgradeCastleSlotWindow;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.UIComponent;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_496;
   import package_102.class_359;
   import package_104.class_989;
   import package_111.class_659;
   import package_111.class_726;
   import package_111.class_774;
   import package_124.class_434;
   import package_14.class_1126;
   import package_14.class_200;
   import package_14.class_220;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_15.class_48;
   import package_157.class_682;
   import package_17.class_54;
   import package_17.class_990;
   import package_170.class_979;
   import package_171.class_1276;
   import package_209.class_1363;
   import package_210.class_1364;
   import package_23.class_42;
   import package_26.class_1086;
   import package_26.class_52;
   import package_3.class_26;
   import package_30.class_1013;
   import package_30.class_62;
   import package_34.class_107;
   import package_34.class_1272;
   import package_34.class_1499;
   import package_34.class_1526;
   import package_41.class_84;
   import package_42.class_948;
   import package_43.class_254;
   import package_48.class_996;
   import package_49.class_140;
   import package_5.class_12;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_984;
   import package_52.class_309;
   import package_54.class_319;
   import package_9.class_120;
   import package_9.class_76;
   import package_99.class_853;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichEditableText;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.core.SpriteVisualElement;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Graphic;
   import spark.primitives.RectangularDropShadow;
   
   public final class CastlePopupController extends WindowController implements IWindowController
   {
       
      
      private var _component:CastlePopup;
      
      private var _query:class_254;
      
      private var _content:CastleWindowData;
      
      private var _castleItems:Vector.<CastleWindowCastleItem>;
      
      private var _currentlySelectedCastle:int = 2;
      
      private var showedHintOnce:Boolean;
      
      protected var saveProxy:class_1363;
      
      private var _dragDropController:CastleDragDropController;
      
      public function CastlePopupController(param1:String, param2:Object)
      {
         super(param1,param2);
         this._component = this.component as CastlePopup;
         this.saveProxy = new class_1363();
         this.showedHintOnce = false;
      }
      
      override public function shutdown() : void
      {
         var _loc1_:CastleWindowCastleItem = null;
         super.shutdown();
         this._component = null;
         this._query.removeEventListener(Event.CHANGE,this.updateContentData);
         this._query.method_934();
         this._query = null;
         this.window.removeEventListener(class_979.const_5,this.onHelpButtonClick);
         this.component.cboPresets.removeEventListener(IndexChangeEvent.CHANGE,this.onPresetChange);
         this.component.cboPresets.removeEventListener(InputComboBox.COMBOBOX_TEXTINPUT_CHANGE,this.onPresetRename);
         for each(_loc1_ in this._castleItems)
         {
            _loc1_.removeEventListener("click",this.onClickCastle);
            _loc1_.removeEventListener(CastleWindowCastleItem.CLEAR_BUTTON_CLICK_EVENT,this.onClearCastleSlots);
            _loc1_.upgradeSlotCallback = null;
         }
         this.component.cboPresets.shutDown();
         if(this._dragDropController)
         {
            this._dragDropController.removeEventListener(InventoryDragDropController.USER_COMMAND_COMPLETE,this.onDragDropExecutionComplete);
            this._dragDropController.removeEventListener(class_1364.const_182,this.onDragDropExecCommand);
            this._dragDropController.destroy();
         }
      }
      
      override protected function onWindowCreationComplete(param1:FlexEvent) : void
      {
         super.onWindowCreationComplete(param1);
         this.component.eventBanner.dynaBmpSourceName = "event_" + class_51.var_129;
         this.component.subHeader.headerText.text = class_96.method_20(class_96.const_18,"menuheadertip");
         this.component.castle_title.text = class_96.method_20(class_96.const_18,"castlelist_title");
         this.component.module_title.text = class_96.method_20(class_96.const_18,"modulelist_title");
         this.window.addEventListener(class_979.const_5,this.onHelpButtonClick);
         this.window.refreshButton.includeInLayout = false;
         this.window.refreshButton.visible = false;
         this.window.infoButton.visible = false;
         this.component.cboPresets.start(true);
         this.component.cboPresets.presetsComboBox.addEventListener(IndexChangeEvent.CHANGE,this.onPresetChange);
         this.component.cboPresets.presetsComboBox.addEventListener(InputComboBox.COMBOBOX_TEXTINPUT_CHANGE,this.onPresetRename);
         this.defineCastles();
         this._query = class_48.name_3.var_1728;
         this._query.addEventListener(Event.CHANGE,this.updateContentData);
         this.updateContentData();
      }
      
      private final function onPresetRename(param1:Event) : void
      {
         this._query.method_730();
      }
      
      private final function defineCastles() : void
      {
         var _loc1_:CastleWindowCastleItem = null;
         this._castleItems = new <CastleWindowCastleItem>[this._component.castle_01,this._component.castle_02,this._component.castle_03,this._component.castle_04,this._component.castle_05,this._component.castle_06];
         for each(_loc1_ in this._castleItems)
         {
            _loc1_.init();
         }
      }
      
      private final function updateContentData(param1:Event = null) : void
      {
         var _loc2_:CastleWindowData = this._query.method_358();
         if(!this._content && _loc2_)
         {
            this.activateCastles();
         }
         this._content = _loc2_;
         if(this._content)
         {
            if(this._content.numberOfUnlockedSlots <= 0 && !this.showedHintOnce)
            {
               this.onHelpButtonClick();
            }
            this.component.eventBanner.visible = this.component.eventBanner.includeInLayout = this._content.discount > 0;
            this.component.eventBanner.toolTip = class_87.method_261(class_96.method_20(class_96.const_18,"castleDays_tooltip").replace(class_22.const_6,class_13.method_53(this._content.discount)));
            this.selectPreset(this._content.selectedPresetId);
         }
      }
      
      private final function activateCastles() : void
      {
         var _loc1_:CastleWindowCastleItem = null;
         for each(_loc1_ in this._castleItems)
         {
            _loc1_.addEventListener("click",this.onClickCastle);
            _loc1_.addEventListener(CastleWindowCastleItem.CLEAR_BUTTON_CLICK_EVENT,this.onClearCastleSlots);
            _loc1_.upgradeSlotCallback = this.onUpgradeSlotClicked;
         }
      }
      
      private final function updateSlots() : void
      {
         var _loc1_:CastleWindowCastleItem = null;
         for each(_loc1_ in this._castleItems)
         {
            _loc1_.data = this._content.getCastleVo(_loc1_.castleId);
         }
      }
      
      private final function onPresetChange(param1:IndexChangeEvent) : void
      {
         this.selectPreset(this.component.cboPresets.selectedPresetId);
      }
      
      private final function selectPreset(param1:int) : void
      {
         this._content.updatePresets(param1);
         this.updateSlots();
         this.selectCastle(this._currentlySelectedCastle);
      }
      
      private final function onClickCastle(param1:Event) : void
      {
         if(CastleWindowCastleItem(param1.currentTarget).castleId != this._currentlySelectedCastle)
         {
            this.selectCastle(CastleWindowCastleItem(param1.currentTarget).castleId);
         }
      }
      
      private final function onClearCastleSlots(param1:Event) : void
      {
         if(CastleWindowCastleItem(param1.currentTarget).castleId == this._currentlySelectedCastle)
         {
            this._content.getCastleVo(this._currentlySelectedCastle).reset();
            this.saveProxy.method_1307(this._content.selectedPresetId,this.getCurrentCastleSlotConfiguration());
         }
      }
      
      private final function onUpgradeSlotClicked(param1:CastleWindowSlot) : void
      {
         StatelessCMD.invoke(CmdSL_OpenUpgradeCastleSlotWindow,param1.vo);
      }
      
      private final function selectCastle(param1:int) : void
      {
         var _loc2_:CastleWindowCastleItem = null;
         var _loc3_:Vector.<ICastleSlotItem> = null;
         if(this._dragDropController)
         {
            this._dragDropController.removeEventListener(InventoryDragDropController.USER_COMMAND_COMPLETE,this.onDragDropExecutionComplete);
            this._dragDropController.removeEventListener(class_1364.const_182,this.onDragDropExecCommand);
            this._dragDropController.destroy();
         }
         this._currentlySelectedCastle = param1;
         this.showBoosterItems(this._content.castleBoosters[param1]);
         for each(_loc2_ in this._castleItems)
         {
            if(_loc2_.castleId == param1)
            {
               _loc2_.selected = true;
               _loc3_ = _loc2_.getSlots();
            }
            else
            {
               _loc2_.selected = false;
            }
         }
         this.component.boosterList.verticalScrollPosition = 0;
         this._dragDropController = new CastleDragDropController(this._component.boosterList,_loc3_);
         this._dragDropController.addEventListener(InventoryDragDropController.USER_COMMAND_COMPLETE,this.onDragDropExecutionComplete);
         this._dragDropController.addEventListener(class_1364.const_182,this.onDragDropExecCommand);
      }
      
      private final function onDragDropExecutionComplete(param1:Event) : void
      {
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc5_:CastleBoosterVo = null;
         var _loc2_:Array = this._dragDropController.getDraggedInfo();
         for(_loc3_ in _loc2_)
         {
            _loc4_ = int(_loc3_);
            this._content.getCastleVo(this._currentlySelectedCastle).getSlotVo(_loc4_).clear();
            if(_loc2_[_loc4_] != 0)
            {
               _loc5_ = this._content.boosters[_loc2_[_loc4_]];
               this._content.getCastleVo(this._currentlySelectedCastle).getSlotVo(_loc4_).booster = _loc5_;
               this._content.getCastleVo(this._currentlySelectedCastle).getSlotVo(_loc4_).booster.isUsed = true;
               this._content.getCastleVo(this._currentlySelectedCastle).getSlotVo(_loc4_).booster.maxAllowedLevelForSlot = this._content.getCastleVo(this._currentlySelectedCastle).getSlotVo(_loc4_).level;
            }
         }
         this.saveProxy.method_1307(this._content.selectedPresetId,this.getCurrentCastleSlotConfiguration());
      }
      
      private final function onDragDropExecCommand(param1:class_1364) : void
      {
      }
      
      private final function showBoosterItems(param1:Dictionary) : void
      {
         var _loc4_:CastleBoosterVo = null;
         var _loc5_:CastleWindowBoosterItem = null;
         var _loc6_:CastleWindowBoosterItem = null;
         var _loc2_:int = 0;
         while(_loc2_ < this._component.boosterList.numElements)
         {
            _loc5_ = this._component.boosterList.getElementAt(_loc2_) as CastleWindowBoosterItem;
            _loc5_.visible = _loc5_.includeInLayout = false;
            _loc2_++;
         }
         var _loc3_:int = 0;
         for each(_loc4_ in param1)
         {
            if(_loc3_ < this._component.boosterList.numElements)
            {
               _loc6_ = this._component.boosterList.getElementAt(_loc3_) as CastleWindowBoosterItem;
               _loc6_.visible = _loc6_.includeInLayout = true;
            }
            else
            {
               this._component.boosterList.addElement(_loc6_ = new CastleWindowBoosterItem());
            }
            _loc6_.showSeparator(_loc3_ > 0);
            _loc6_.data = _loc4_;
            _loc3_++;
         }
      }
      
      private final function onHelpButtonClick(param1:class_979 = null) : void
      {
         this.showedHintOnce = true;
         MultiPopUpManager.addSimpleOK_Popup(class_96.method_20(class_96.const_18,this._content.numberOfUnlockedSlots <= 0?"level0tip":"helptip"));
      }
      
      public function get component() : CastlePopup
      {
         return super.viewComponent as CastlePopup;
      }
      
      public function get window() : ResizeableExtendedWindow
      {
         return this.component.owner as ResizeableExtendedWindow;
      }
      
      public function get windowSkin() : BasicResizableWindowSkin
      {
         return this.window.skin as BasicResizableWindowSkin;
      }
      
      private final function onLoadHeaderError(param1:IOErrorEvent) : void
      {
      }
      
      public function set data(param1:ContentVo) : void
      {
      }
      
      public final function setTitleData(param1:String) : void
      {
         this.windowSkin.titleString = param1;
      }
      
      public final function getCurrentCastleSlotConfiguration() : Vector.<class_726>
      {
         var _loc3_:CastleVo = null;
         var _loc4_:CastleSlotVo = null;
         var _loc5_:class_659 = null;
         var _loc1_:Vector.<class_726> = new Vector.<class_726>();
         var _loc2_:class_726 = new class_726();
         for each(_loc3_ in this._content.castles)
         {
            for each(_loc4_ in _loc3_.slots)
            {
               if(_loc4_.isUsed())
               {
                  _loc5_ = new class_659();
                  _loc5_.var_395 = _loc4_.booster.boosterId;
                  _loc5_.var_199 = _loc3_.castleId;
                  _loc5_.var_426 = _loc4_.position;
                  _loc2_.var_76.push(_loc5_);
               }
            }
         }
         _loc2_.var_32 = this._content.selectedPresetId;
         _loc1_.push(_loc2_);
         return _loc1_;
      }
   }
}
