package com.bigpoint.seafight.view.popups.quest.regular.component
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.inventory.vo.cannon.Cannon_VO;
   import com.bigpoint.seafight.model.inventory.vo.cannon.DefaultCannon_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.class_127;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.hslider.HSliderSkinInnerClass0;
   import com.bigpoint.seafight.view.common.skins.hslider.target;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.common.skins.windowbuttonbar.WindowButtonBarSkinInnerClass2;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.CheckBoxGroup;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuHeader;
   import com.bigpoint.seafight.view.popups.event.component.MinigameContentLayoutComponent;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.vo.CraftingMaterialItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.vo.GroupMapPlayerListItemRendererVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildIslandListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.GuildRankIcon;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildRankItemListItem;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.PlayerProfileViewVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.component.NpcQuestList;
   import com.bigpoint.seafight.view.popups.quest.npc.component.QuestItemBG;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPopupVo;
   import com.bigpoint.seafight.view.popups.quest.regular.IQuestPopup;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.DeckStatsComponent;
   import com.bigpoint.seafight.view.popups.spymenu.vo.SpyUserStatsItemRendererVo;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.LockTitleWindowToggleButtonSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.greensock.TweenMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import com.oaxoa.fx.Lightning;
   import com.oaxoa.fx.LightningFadeType;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.GradientType;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.collections.ArrayList;
   import mx.containers.Form;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.event.class_616;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.gems.class_759;
   import net.bigpoint.seafight.com.module.gems.class_864;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.guild.class_904;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import net.bigpoint.seafight.com.module.minigame.class_517;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import net.bigpoint.seafight.com.module.ship.class_496;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_101.class_1549;
   import package_109.class_385;
   import package_109.class_626;
   import package_11.class_130;
   import package_111.class_585;
   import package_111.class_726;
   import package_111.class_741;
   import package_111.class_774;
   import package_111.class_839;
   import package_117.class_477;
   import package_133.class_500;
   import package_133.class_595;
   import package_134.class_504;
   import package_14.class_1002;
   import package_14.class_1535;
   import package_14.class_200;
   import package_14.class_220;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_16.class_28;
   import package_166.class_1330;
   import package_17.class_323;
   import package_170.class_979;
   import package_171.class_981;
   import package_204.class_1531;
   import package_205.class_1353;
   import package_21.class_197;
   import package_212.class_1537;
   import package_216.class_1575;
   import package_219.class_1595;
   import package_23.class_42;
   import package_26.class_101;
   import package_26.class_1088;
   import package_26.class_218;
   import package_34.class_107;
   import package_34.class_115;
   import package_34.class_1526;
   import package_34.class_73;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_98;
   import package_47.class_129;
   import package_47.class_135;
   import package_47.class_136;
   import package_47.class_935;
   import package_48.class_996;
   import package_49.class_137;
   import package_49.class_420;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_984;
   import package_51.class_1355;
   import package_58.class_175;
   import package_6.class_14;
   import package_72.class_203;
   import package_88.class_1093;
   import package_88.class_290;
   import package_95.class_341;
   import package_98.class_777;
   import package_99.class_374;
   import package_99.class_786;
   import package_99.class_823;
   import package_99.class_911;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichEditableText;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.events.IndexChangeEvent;
   import spark.events.TextOperationEvent;
   import spark.filters.DropShadowFilter;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class QuestPopup extends VGroup implements IQuestPopup, IBindingClient
   {
      
      public static const EVENT_ELIGIBLE_QUETS_CHANGE:String = "EventEligibleQuestsChange";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _QuestPopup_QuestPopupFilterItem1:QuestPopupFilterItem;
      
      public var _QuestPopup_QuestPopupFilterItem2:QuestPopupFilterItem;
      
      public var _QuestPopup_QuestPopupFilterItem3:QuestPopupFilterItem;
      
      public var _QuestPopup_QuestPopupFilterItem4:QuestPopupFilterItem;
      
      public var _QuestPopup_QuestPopupFilterItem5:QuestPopupFilterItem;
      
      private var _1830107832accordion:SFAccordion;
      
      private var _1219142581activeQuestsList:QuestPopupActiveQuestsList;
      
      private var _1536891843checkbox:CheckBoxGroup;
      
      private var _951530617content:Group;
      
      private var _1788024684filterGroups:HGroup;
      
      private var _714875667subHeader:PopupSubHeader;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var dataVo:NpcQuestPopupVo;
      
      private var dirty:Boolean;
      
      private var lists:Dictionary;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function QuestPopup()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.lists = new Dictionary();
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._QuestPopup_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_bigpoint_seafight_view_popups_quest_regular_component_QuestPopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return QuestPopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._QuestPopup_PopupSubHeader1_i(),this._QuestPopup_HGroup1_c()];
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         QuestPopup._watcherSetupUtil = param1;
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
      
      public function set data(param1:NpcQuestPopupVo) : void
      {
         var _loc2_:NpcQuestListVo = null;
         this.dataVo = param1;
         if(this.dataVo.dirtyList)
         {
            class_127.method_54(this.lists);
            for each(_loc2_ in this.dataVo.displayLists)
            {
               this.lists[_loc2_.type] = new NpcQuestList();
            }
         }
         this.dirty = true;
         invalidateProperties();
      }
      
      public function getList(param1:int) : NpcQuestList
      {
         return this.lists[param1] as NpcQuestList;
      }
      
      public function getListAt(param1:int) : NpcQuestList
      {
         var _loc2_:SFAccordion = this.accordion;
         if(_loc2_ == null || _loc2_.numChildren <= 0)
         {
            return null;
         }
         var _loc3_:Form = this.accordion.getChildAt(param1) as Form;
         return _loc3_.getElementAt(0) as NpcQuestList;
      }
      
      public function getSubHeader() : PopupSubHeader
      {
         return this.subHeader;
      }
      
      public function getContentGroup() : Group
      {
         return this.content;
      }
      
      public function getAccordionContainer() : SFAccordion
      {
         return this.accordion;
      }
      
      public function enableView(param1:Boolean) : void
      {
         this.mouseEnabled = param1;
         this.mouseChildren = param1;
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(!this.dirty)
         {
            return;
         }
         if(this.dataVo.dirtyList)
         {
            this.commitListProperties();
            this.dataVo.dirtyList = false;
         }
         if(this.checkbox.text)
         {
            this.checkbox.text.left = -4;
            this.checkbox.text.top = 5;
            this.checkbox.text.styleName = "fontgray11";
         }
         if(this.accordion.numElements > 0 && this.accordion.numChildren > 0)
         {
            this.accordion.getHeaderAt(0).visible = false;
         }
         this.dirty = false;
      }
      
      private final function commitListProperties() : void
      {
         var _loc1_:NpcQuestListVo = null;
         var _loc2_:NpcQuestList = null;
         var _loc3_:Form = null;
         this.accordion.removeAllElements();
         for each(_loc1_ in this.dataVo.displayLists)
         {
            if(_loc1_.list.length > 0)
            {
               _loc2_ = this.getList(_loc1_.type);
               _loc3_ = MinigameContentLayoutComponent.createForm(_loc1_.title);
               _loc3_.addElement(_loc2_);
               _loc2_.data = _loc1_;
               this.accordion.addChild(_loc3_);
            }
         }
      }
      
      private final function _QuestPopup_PopupSubHeader1_i() : PopupSubHeader
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
      
      private final function _QuestPopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingLeft = 4;
         _loc1_.paddingRight = 4;
         _loc1_.paddingBottom = 5;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._QuestPopup_QuestPopupMenuVanity1_c(),this._QuestPopup_VGroup2_c(),this._QuestPopup_Group3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _QuestPopup_QuestPopupMenuVanity1_c() : QuestPopupMenuVanity
      {
         var _loc1_:QuestPopupMenuVanity = new QuestPopupMenuVanity();
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _QuestPopup_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 1;
         _loc1_.width = 253;
         _loc1_.percentHeight = 100;
         _loc1_.paddingLeft = 1;
         _loc1_.paddingRight = 1;
         _loc1_.mxmlContent = [this._QuestPopup_QuestPopupActiveQuestsList1_i(),this._QuestPopup_Group1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _QuestPopup_QuestPopupActiveQuestsList1_i() : QuestPopupActiveQuestsList
      {
         var _loc1_:QuestPopupActiveQuestsList = new QuestPopupActiveQuestsList();
         _loc1_.width = 250;
         _loc1_.height = 97;
         _loc1_.id = "activeQuestsList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.activeQuestsList = _loc1_;
         BindingManager.executeBindings(this,"activeQuestsList",this.activeQuestsList);
         return _loc1_;
      }
      
      private final function _QuestPopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._QuestPopup_VGroup3_c(),this._QuestPopup_BorderType11_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _QuestPopup_VGroup3_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 0;
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._QuestPopup_Group2_c(),this._QuestPopup_SFAccordion1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _QuestPopup_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 40;
         _loc1_.mxmlContent = [this._QuestPopup_QuestItemBG1_c(),this._QuestPopup_CheckBoxGroup1_i(),this._QuestPopup_HGroup2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _QuestPopup_QuestItemBG1_c() : QuestItemBG
      {
         var _loc1_:QuestItemBG = new QuestItemBG();
         _loc1_.top = 3;
         _loc1_.left = 3;
         _loc1_.right = 3;
         _loc1_.height = 65;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _QuestPopup_CheckBoxGroup1_i() : CheckBoxGroup
      {
         var _loc1_:CheckBoxGroup = new CheckBoxGroup();
         _loc1_.left = 14;
         _loc1_.top = 46;
         _loc1_.textId = "eligiblequestsonly";
         _loc1_.selected = false;
         _loc1_.addEventListener("change",this.__checkbox_change);
         _loc1_.id = "checkbox";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.checkbox = _loc1_;
         BindingManager.executeBindings(this,"checkbox",this.checkbox);
         return _loc1_;
      }
      
      public final function __checkbox_change(param1:Event) : void
      {
         dispatchEvent(new Event(EVENT_ELIGIBLE_QUETS_CHANGE,true));
      }
      
      private final function _QuestPopup_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.gap = 8;
         _loc1_.percentWidth = 100;
         _loc1_.top = 11;
         _loc1_.height = 40;
         _loc1_.left = 14;
         _loc1_.mxmlContent = [this._QuestPopup_QuestPopupFilterItem1_i(),this._QuestPopup_QuestPopupFilterItem2_i(),this._QuestPopup_QuestPopupFilterItem3_i(),this._QuestPopup_QuestPopupFilterItem4_i(),this._QuestPopup_QuestPopupFilterItem5_i()];
         _loc1_.id = "filterGroups";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.filterGroups = _loc1_;
         BindingManager.executeBindings(this,"filterGroups",this.filterGroups);
         return _loc1_;
      }
      
      private final function _QuestPopup_QuestPopupFilterItem1_i() : QuestPopupFilterItem
      {
         var _loc1_:QuestPopupFilterItem = new QuestPopupFilterItem();
         _loc1_.id = "_QuestPopup_QuestPopupFilterItem1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._QuestPopup_QuestPopupFilterItem1 = _loc1_;
         BindingManager.executeBindings(this,"_QuestPopup_QuestPopupFilterItem1",this._QuestPopup_QuestPopupFilterItem1);
         return _loc1_;
      }
      
      private final function _QuestPopup_QuestPopupFilterItem2_i() : QuestPopupFilterItem
      {
         var _loc1_:QuestPopupFilterItem = new QuestPopupFilterItem();
         _loc1_.id = "_QuestPopup_QuestPopupFilterItem2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._QuestPopup_QuestPopupFilterItem2 = _loc1_;
         BindingManager.executeBindings(this,"_QuestPopup_QuestPopupFilterItem2",this._QuestPopup_QuestPopupFilterItem2);
         return _loc1_;
      }
      
      private final function _QuestPopup_QuestPopupFilterItem3_i() : QuestPopupFilterItem
      {
         var _loc1_:QuestPopupFilterItem = new QuestPopupFilterItem();
         _loc1_.id = "_QuestPopup_QuestPopupFilterItem3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._QuestPopup_QuestPopupFilterItem3 = _loc1_;
         BindingManager.executeBindings(this,"_QuestPopup_QuestPopupFilterItem3",this._QuestPopup_QuestPopupFilterItem3);
         return _loc1_;
      }
      
      private final function _QuestPopup_QuestPopupFilterItem4_i() : QuestPopupFilterItem
      {
         var _loc1_:QuestPopupFilterItem = new QuestPopupFilterItem();
         _loc1_.id = "_QuestPopup_QuestPopupFilterItem4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._QuestPopup_QuestPopupFilterItem4 = _loc1_;
         BindingManager.executeBindings(this,"_QuestPopup_QuestPopupFilterItem4",this._QuestPopup_QuestPopupFilterItem4);
         return _loc1_;
      }
      
      private final function _QuestPopup_QuestPopupFilterItem5_i() : QuestPopupFilterItem
      {
         var _loc1_:QuestPopupFilterItem = new QuestPopupFilterItem();
         _loc1_.id = "_QuestPopup_QuestPopupFilterItem5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._QuestPopup_QuestPopupFilterItem5 = _loc1_;
         BindingManager.executeBindings(this,"_QuestPopup_QuestPopupFilterItem5",this._QuestPopup_QuestPopupFilterItem5);
         return _loc1_;
      }
      
      private final function _QuestPopup_SFAccordion1_i() : SFAccordion
      {
         var _loc1_:SFAccordion = new SFAccordion();
         _loc1_.mouseEnabled = false;
         _loc1_.resizeToContent = true;
         _loc1_.setStyle("paddingLeft",3);
         _loc1_.setStyle("paddingRight",3);
         _loc1_.setStyle("paddingTop",3);
         _loc1_.setStyle("paddingBottom",3);
         _loc1_.id = "accordion";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.accordion = _loc1_;
         BindingManager.executeBindings(this,"accordion",this.accordion);
         return _loc1_;
      }
      
      private final function _QuestPopup_BorderType11_c() : BorderType1
      {
         var _loc1_:BorderType1 = new BorderType1();
         _loc1_.percentHeight = 100;
         _loc1_.percentWidth = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _QuestPopup_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "content";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.content = _loc1_;
         BindingManager.executeBindings(this,"content",this.content);
         return _loc1_;
      }
      
      private final function _QuestPopup_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():int
         {
            return class_135.const_1776;
         },null,"_QuestPopup_QuestPopupFilterItem1.questType");
         result[1] = new Binding(this,function():int
         {
            return class_135.const_1898;
         },null,"_QuestPopup_QuestPopupFilterItem2.questType");
         result[2] = new Binding(this,function():int
         {
            return class_135.const_1352;
         },null,"_QuestPopup_QuestPopupFilterItem3.questType");
         result[3] = new Binding(this,function():int
         {
            return class_135.const_292;
         },null,"_QuestPopup_QuestPopupFilterItem4.questType");
         result[4] = new Binding(this,function():int
         {
            return class_135.const_218;
         },null,"_QuestPopup_QuestPopupFilterItem5.questType");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get accordion() : SFAccordion
      {
         return this._1830107832accordion;
      }
      
      public function set accordion(param1:SFAccordion) : void
      {
         var _loc2_:Object = this._1830107832accordion;
         if(_loc2_ !== param1)
         {
            this._1830107832accordion = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"accordion",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get activeQuestsList() : QuestPopupActiveQuestsList
      {
         return this._1219142581activeQuestsList;
      }
      
      public function set activeQuestsList(param1:QuestPopupActiveQuestsList) : void
      {
         var _loc2_:Object = this._1219142581activeQuestsList;
         if(_loc2_ !== param1)
         {
            this._1219142581activeQuestsList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"activeQuestsList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkbox() : CheckBoxGroup
      {
         return this._1536891843checkbox;
      }
      
      public function set checkbox(param1:CheckBoxGroup) : void
      {
         var _loc2_:Object = this._1536891843checkbox;
         if(_loc2_ !== param1)
         {
            this._1536891843checkbox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkbox",_loc2_,param1));
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
      public function get filterGroups() : HGroup
      {
         return this._1788024684filterGroups;
      }
      
      public function set filterGroups(param1:HGroup) : void
      {
         var _loc2_:Object = this._1788024684filterGroups;
         if(_loc2_ !== param1)
         {
            this._1788024684filterGroups = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"filterGroups",_loc2_,param1));
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
