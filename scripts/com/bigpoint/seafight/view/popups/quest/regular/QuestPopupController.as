package com.bigpoint.seafight.view.popups.quest.regular
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.net.events.class_1305;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetStatsComponentVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetsInventoryVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowBoosterItem;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowSlot;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowSlotBoosterItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.CheckBoxGroup;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.GemPopupCraftingTab;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.controller.GemPopupCraftingTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildImage;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRanksTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankItemListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.npc.component.NpcQuestList;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModuleVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.QuestContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPopupVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.QuestDisplayVo;
   import com.bigpoint.seafight.view.popups.quest.regular.component.QuestPopup;
   import com.bigpoint.seafight.view.popups.quest.regular.component.QuestPopupActiveQuestsList;
   import com.bigpoint.seafight.view.popups.quest.regular.component.QuestPopupFilterItem;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.ConcreteGoodTooltip;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IVisualElement;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.GradientEntry;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.SetStyle;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_821;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_104.class_448;
   import package_109.class_626;
   import package_11.class_130;
   import package_110.class_506;
   import package_121.class_841;
   import package_125.class_442;
   import package_130.class_1143;
   import package_130.class_663;
   import package_130.class_711;
   import package_137.class_865;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_16.class_28;
   import package_174.class_1375;
   import package_194.class_1226;
   import package_20.class_33;
   import package_204.class_1306;
   import package_205.class_1353;
   import package_208.class_1618;
   import package_216.class_1575;
   import package_22.class_423;
   import package_22.class_655;
   import package_23.class_42;
   import package_26.class_1102;
   import package_26.class_218;
   import package_30.class_337;
   import package_34.class_107;
   import package_34.class_117;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_1224;
   import package_47.class_128;
   import package_47.class_135;
   import package_47.class_657;
   import package_47.class_833;
   import package_47.class_861;
   import package_5.class_123;
   import package_5.class_43;
   import package_51.class_1355;
   import package_52.class_167;
   import package_54.class_163;
   import package_58.class_175;
   import package_6.class_14;
   import package_61.class_724;
   import package_72.class_203;
   import package_88.class_1093;
   import package_89.class_1378;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichEditableText;
   import spark.components.RichText;
   import spark.components.TitleWindow;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.events.IndexChangeEvent;
   import spark.events.TextOperationEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   public final class QuestPopupController extends AbstractQuestPopupController implements IWindowController
   {
       
      
      private var _popupVo:NpcQuestPopupVo;
      
      private var _activeQuestsList:NpcQuestListVo;
      
      private var _activeQuestClicked:Boolean = false;
      
      public function QuestPopupController(param1:String, param2:Object)
      {
         this._popupVo = new NpcQuestPopupVo();
         this._activeQuestsList = new NpcQuestListVo(NpcQuestListVo.TYPE_QUEST);
         super(param1,param2);
      }
      
      override protected function onWindowCreationComplete(param1:FlexEvent) : void
      {
         super.onWindowCreationComplete(param1);
         component.addEventListener(QuestPopupActiveQuestsList.SELECT_EVENT,this.onActiveQuestSelectEvent);
         component.addEventListener(QuestPopupFilterItem.CHANGE,this.onQuestFilterChange);
         component.addEventListener(QuestPopup.EVENT_ELIGIBLE_QUETS_CHANGE,this.onEligibleQuestCheckboxChange);
         this.refresh();
      }
      
      override protected function createContentModule(param1:int) : IContentModule
      {
         var _loc2_:QuestContentModule = super.createContentModule(param1) as QuestContentModule;
         _loc2_.setRedeemNeverEnabled(true);
         return _loc2_;
      }
      
      override protected function onQuestListMessage(param1:Event) : void
      {
         _data = this.getSortedQuestData();
         this._activeQuestClicked = this._activeQuestsList.list.length > 0;
         this.setActiveQuestSelected(this._activeQuestClicked);
         onGenerateData();
      }
      
      override protected function onQuestListIndexChange(param1:IndexChangeEvent) : void
      {
         this.setActiveQuestSelected(false);
         super.onQuestListIndexChange(param1);
      }
      
      override protected function getListVo() : NpcQuestListVo
      {
         return this._popupVo.getDisplayList(_type);
      }
      
      private final function setActiveQuestSelected(param1:Boolean) : void
      {
         var _loc2_:QuestPopup = component as QuestPopup;
         this._activeQuestClicked = param1;
         _loc2_.activeQuestsList.setItemSelected(param1);
      }
      
      override protected function onRedeemQuestClick(param1:int) : void
      {
         this._activeQuestClicked = false;
         super.onRedeemQuestClick(param1);
      }
      
      override protected function onCancelQuestClick(param1:Event) : void
      {
         super.onCancelQuestClick(param1);
         this.setActiveQuestSelected(false);
      }
      
      override protected function getSortedQuestData() : NpcQuestPopupVo
      {
         var _loc4_:class_130 = null;
         var _loc5_:QuestDisplayVo = null;
         var _loc1_:NpcQuestPopupVo = _npc_questProxy.name_64;
         _loc1_.copyTo(this._popupVo);
         var _loc2_:NpcQuestListVo = _loc1_.getDisplayList(NpcQuestListVo.TYPE_QUEST);
         var _loc3_:NpcQuestListVo = this._popupVo.getDisplayList(NpcQuestListVo.TYPE_QUEST);
         _loc3_.list.length = 0;
         for each(_loc5_ in _loc2_.list)
         {
            _loc4_ = _loc5_.quest;
            if(this.isQuestVisible(_loc4_))
            {
               _loc3_.list.push(_loc5_);
            }
         }
         return this._popupVo;
      }
      
      private final function isQuestVisible(param1:class_130) : Boolean
      {
         var _loc2_:QuestPopup = component as QuestPopup;
         var _loc3_:Boolean = !!_loc2_.checkbox.selected?param1.name_17 != class_128.const_442:true;
         return _loc3_ && param1.name_17 != class_128.const_78 && param1.name_17 != class_128.const_186 && this.isFilterEnabled(param1.name_5);
      }
      
      private final function isFilterEnabled(param1:int) : Boolean
      {
         var _loc5_:QuestPopupFilterItem = null;
         var _loc2_:QuestPopup = component as QuestPopup;
         var _loc3_:int = _loc2_.filterGroups.numElements;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc2_.filterGroups.getElementAt(_loc4_) as QuestPopupFilterItem;
            if(_loc5_.questType == param1)
            {
               return _loc5_.selected;
            }
            _loc4_++;
         }
         return false;
      }
      
      override protected function generateData() : void
      {
         var _loc2_:QuestDisplayVo = null;
         var _loc3_:QuestPopup = null;
         var _loc6_:class_130 = null;
         var _loc7_:QuestDisplayVo = null;
         var _loc8_:int = 0;
         var _loc9_:QuestDisplayVo = null;
         super.generateData();
         var _loc1_:NpcQuestListVo = _npc_questProxy.name_64.getDisplayList(NpcQuestListVo.TYPE_QUEST);
         this._activeQuestsList.list.length = 0;
         for each(_loc2_ in _loc1_.list)
         {
            _loc6_ = _loc2_.quest;
            if(!(_loc6_.name_17 != class_128.const_78 && _loc6_.name_17 != class_128.const_186))
            {
               this._activeQuestsList.list.push(_loc2_);
            }
         }
         _loc3_ = component as QuestPopup;
         if(_loc3_.activeQuestsList)
         {
            _loc3_.activeQuestsList.data = this._activeQuestsList;
         }
         var _loc4_:NpcQuestListVo = _npc_questProxy.name_64.getDisplayList(_type);
         var _loc5_:NpcQuestListVo = this._popupVo.getDisplayList(_type);
         if(_loc5_.list.length > 0 && _loc5_.index > -1)
         {
            _loc7_ = _loc5_.list[_loc5_.index] as QuestDisplayVo;
            _loc8_ = 0;
            while(_loc8_ < _loc4_.list.length)
            {
               _loc9_ = _loc4_.list[_loc8_] as QuestDisplayVo;
               if(_loc9_.quest.name_7 != _loc7_.quest.name_7)
               {
                  _loc8_++;
                  continue;
               }
               _loc5_.list[_loc5_.index] = _loc9_;
               break;
            }
         }
      }
      
      override protected function updateSubheaderContent() : void
      {
         var _loc1_:PopupSubHeader = component.getSubHeader();
         var _loc2_:Label = _loc1_.headerText;
         if(_loc2_.text == null || _loc2_.text.length <= 0)
         {
            _loc1_.headerText.text = class_47.method_1144.method_1244(class_96.const_171,"menuheadertip");
         }
      }
      
      override protected function getSelectedIndex() : int
      {
         return !!this._activeQuestClicked?-1:int(super.getSelectedIndex());
      }
      
      override protected function refresh() : void
      {
         _npc_questProxy.name_64.clearDisplayLists();
         _questQuery.method_1447();
      }
      
      override protected function getContentModuleVo() : IContentModuleVo
      {
         if(this._activeQuestClicked && this._activeQuestsList.list.length > 0)
         {
            return this._activeQuestsList.list[0];
         }
         return super.getContentModuleVo();
      }
      
      override protected function onQuestQueryChange(param1:Event) : void
      {
         _npc_questProxy.method_763(param1);
         super.onQuestQueryChange(param1);
      }
      
      private final function deselectQuestList() : void
      {
         var _loc1_:NpcQuestList = component.getList(NpcQuestListVo.TYPE_QUEST);
         _loc1_.list.selectedIndex = -1;
      }
      
      private final function onActiveQuestSelectEvent(param1:Event) : void
      {
         this._activeQuestClicked = true;
         this.deselectQuestList();
         onGenerateData();
      }
      
      private final function onQuestFilterChange(param1:Event) : void
      {
         this.onQuestListMessage(null);
      }
      
      private final function onEligibleQuestCheckboxChange(param1:Event) : void
      {
         this.onQuestListMessage(null);
      }
      
      override public function setTitleData(param1:String) : void
      {
         windowSkin.titleString = class_47.method_22.method_20("questMenu").toLocaleUpperCase();
      }
      
      override public function shutdown() : void
      {
         super.shutdown();
         component.removeEventListener(QuestPopupActiveQuestsList.SELECT_EVENT,this.onActiveQuestSelectEvent);
         component.removeEventListener(QuestPopupFilterItem.CHANGE,this.onQuestFilterChange);
         component.removeEventListener(QuestPopup.EVENT_ELIGIBLE_QUETS_CHANGE,this.onEligibleQuestCheckboxChange);
      }
   }
}
