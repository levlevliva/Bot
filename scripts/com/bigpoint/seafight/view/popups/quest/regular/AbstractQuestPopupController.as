package com.bigpoint.seafight.view.popups.quest.regular
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_46;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.DynamicImageButton;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleVo;
   import com.bigpoint.seafight.view.popups.common.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.common.table.TableSkinInnerClass2;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.event.modules.common.BulletText;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MetaCurrencyIndicatorList;
   import com.bigpoint.seafight.view.popups.event.skins.target;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowItem;
   import com.bigpoint.seafight.view.popups.groupwindow.OpenGroupWindowCommand;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.quest.npc.component.NpcQuestList;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModuleVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.QuestContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.events.ContentModuleIndexChangeEvent;
   import com.bigpoint.seafight.view.popups.quest.npc.events.NpcQuestContentModuleActionEvent;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPopupVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.QuestDisplayVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.DeckStatsComponent;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.ShipOverviewTab;
   import com.bigpoint.seafight.view.popups.shipequipment.tabs.ShipEquipmentPopupController;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentDecksVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPopupVo;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.InstantMessageContainer;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.TruncateTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemStatListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenQuestTrackerWindow;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.collections.IList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.IndexChangedEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1476;
   import net.bigpoint.seafight.com.module.guild.class_625;
   import net.bigpoint.seafight.com.module.guild.class_678;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_758;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_101.class_549;
   import package_104.class_448;
   import package_104.class_803;
   import package_104.class_989;
   import package_108.class_647;
   import package_11.class_130;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_774;
   import package_118.class_471;
   import package_121.class_841;
   import package_124.class_1311;
   import package_124.class_434;
   import package_125.class_442;
   import package_130.class_1143;
   import package_131.class_573;
   import package_136.class_509;
   import package_136.class_926;
   import package_14.class_102;
   import package_14.class_1313;
   import package_14.class_25;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_15.class_48;
   import package_16.class_28;
   import package_167.class_972;
   import package_170.class_979;
   import package_174.class_1374;
   import package_180.class_1074;
   import package_184.class_1135;
   import package_190.class_1168;
   import package_190.class_1181;
   import package_190.class_1469;
   import package_20.class_33;
   import package_210.class_1527;
   import package_211.class_1369;
   import package_22.class_423;
   import package_22.class_655;
   import package_23.class_42;
   import package_28.class_311;
   import package_29.class_565;
   import package_29.class_57;
   import package_3.class_499;
   import package_34.class_107;
   import package_34.class_1526;
   import package_36.class_100;
   import package_39.class_1366;
   import package_40.class_334;
   import package_41.class_93;
   import package_42.class_959;
   import package_45.class_110;
   import package_46.class_1224;
   import package_46.class_1312;
   import package_46.class_1493;
   import package_47.class_128;
   import package_47.class_129;
   import package_47.class_136;
   import package_48.class_996;
   import package_49.class_137;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_1239;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_43;
   import package_50.class_1296;
   import package_51.class_1355;
   import package_54.class_163;
   import package_58.class_175;
   import package_6.class_14;
   import package_61.class_724;
   import package_67.class_192;
   import package_69.class_1052;
   import package_69.class_978;
   import package_7.class_1039;
   import package_7.class_1538;
   import package_72.class_203;
   import package_75.class_277;
   import package_76.class_279;
   import package_8.class_1240;
   import package_8.class_16;
   import package_9.class_120;
   import package_92.class_944;
   import package_93.class_876;
   import package_93.class_987;
   import package_99.class_786;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.layouts.HorizontalLayout;
   import spark.layouts.TileLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class AbstractQuestPopupController extends WindowController implements IWindowController
   {
      
      public static const WINDOW_WIDTH:int = 828;
      
      public static const WINDOW_HEIGHT:int = 450;
      
      public static const CURRENCIES_BAR_HEIGHT:int = 30;
       
      
      protected var _data:NpcQuestPopupVo;
      
      protected var _npc_questProxy:class_192;
      
      protected var _headline:String;
      
      protected var _currencyList:MetaCurrencyIndicatorList;
      
      protected var _modules:Dictionary;
      
      protected var _type:int;
      
      protected var _questQuery:class_277;
      
      public function AbstractQuestPopupController(param1:String, param2:Object)
      {
         super(param1,param2);
         this._npc_questProxy = class_33.name_12.method_375;
         this._data = this.getSortedQuestData();
         this._modules = new Dictionary();
         this._questQuery = class_48.name_3.var_1258;
      }
      
      override protected function onWindowCreationComplete(param1:FlexEvent) : void
      {
         super.onWindowCreationComplete(param1);
         this.setTitleData(this._headline);
         var _loc2_:SFAccordion = this.component.getAccordionContainer();
         _loc2_.addEventListener(IndexChangedEvent.CHANGE,this.onAccordionChange);
         _loc2_.addEventListener(ContentModuleIndexChangeEvent.MODULE_INDEX_CHANGE,this.onQuestListIndexChange);
         this.component.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.component.addEventListener(NpcQuestContentModuleActionEvent.QUEST_ACTION_BUTTON_CLICK,this.onQuestActionButtonClick);
         this.component.addEventListener(NpcQuestContentModuleActionEvent.CANCEL_QUEST_CLICK,this.onCancelQuestClick);
         this.component.addEventListener(NpcQuestContentModuleActionEvent.QUEST_BUY_BUTTON_CLICK,this.onQuestBuyButtonClick);
         this.window.addEventListener(class_979.const_5,this.onHelpPressed);
         this.window.addEventListener(class_979.const_24,this.onRefreshPressed);
         this.window.addEventListener(class_979.const_676,this.onQuestInfoButtonClick);
         this._npc_questProxy.addEventListener(class_192.const_776,this.onUpdateInit);
         this._npc_questProxy.addEventListener(class_192.const_892,this.onUpdate);
         this._npc_questProxy.addEventListener(class_192.const_797,this.onQuestListMessage);
         this._questQuery.addEventListener(Event.CHANGE,this.onQuestQueryChange);
         this.onUpdateInit();
      }
      
      protected function getSortedQuestData() : NpcQuestPopupVo
      {
         return this._npc_questProxy.name_64;
      }
      
      protected function getHelpText() : String
      {
         return class_96.method_20(class_96.const_171,"questshelptip");
      }
      
      private final function onHelpPressed(param1:class_979) : void
      {
         var _loc2_:String = this.getHelpText();
         MultiPopUpManager.addSimpleOK_Popup(_loc2_);
      }
      
      private final function onQuestInfoButtonClick(param1:Event) : void
      {
         var _loc2_:TitleWindow = class_33.name_12.method_41.method_45(class_110.const_682);
         if(_loc2_)
         {
            _loc2_.dispatchEvent(new CloseEvent(CloseEvent.CLOSE));
            return;
         }
         new CmdSL_OpenQuestTrackerWindow().execute();
      }
      
      private final function onRefreshPressed(param1:class_979) : void
      {
         this.refresh();
      }
      
      protected function refresh() : void
      {
         throw new class_565();
      }
      
      private final function onAccordionChange(param1:IndexChangedEvent) : void
      {
         var _loc2_:NpcQuestList = this.component.getListAt(param1.newIndex);
         var _loc3_:NpcQuestListVo = _loc2_.data;
         this.setActiveModule(_loc3_.type);
      }
      
      protected function onQuestQueryChange(param1:Event) : void
      {
         this.component.enableView(true);
      }
      
      protected function onQuestListIndexChange(param1:IndexChangeEvent) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:NpcQuestList = param1.target as NpcQuestList;
         var _loc3_:NpcQuestListVo = _loc2_.data;
         _loc3_.index = _loc2_.selectedIndex;
         this.setActiveModule(_loc3_.type);
      }
      
      private final function onEnterFrame(param1:Event) : void
      {
         var _loc2_:IContentModule = this.getActiveModule();
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.onEnterFrame(param1);
      }
      
      private final function onQuestActionButtonClick(param1:NpcQuestContentModuleActionEvent) : void
      {
         this.component.enableView(false);
         param1.stopImmediatePropagation();
         var _loc2_:NpcQuestListVo = this.getListVo();
         var _loc3_:QuestDisplayVo = _loc2_.list[_loc2_.index] as QuestDisplayVo;
         var _loc4_:class_130 = _loc3_.quest;
         if(_loc3_.actionButtonDisabled)
         {
            return;
         }
         var _loc5_:String = _loc3_.actionButtonText;
         switch(_loc5_)
         {
            case this._data.questWindowCommonLoca.actionButtonAccept:
               this.onAcceptQuestClick(_loc4_.name_7);
               break;
            case this._data.questWindowCommonLoca.actionButtonRedeem:
               this.onRedeemQuestClick(_loc4_.name_7);
         }
      }
      
      private final function onQuestBuyButtonClick(param1:NpcQuestContentModuleActionEvent) : void
      {
         var vo:QuestDisplayVo = null;
         var query:class_277 = null;
         var onQuestBuyConfirmButtonClick:Function = null;
         var event:NpcQuestContentModuleActionEvent = param1;
         onQuestBuyConfirmButtonClick = function():void
         {
            var _loc1_:QuestContentModule = event.target as QuestContentModule;
            _loc1_.buyButton.enabled = false;
            _loc1_.questActionButton.enabled = false;
            query.method_1776(vo.quest.name_7);
         };
         vo = event.data as QuestDisplayVo;
         var priceText:String = vo.quest.method_1049();
         var txt:String = class_96.method_20(class_96.const_171,"buypopup").replace(class_22.const_6,priceText);
         query = this._questQuery;
         var title:String = class_96.method_20(class_96.const_171,"buyquest");
         MultiPopUpManager.addYesNoPopup(txt,onQuestBuyConfirmButtonClick,"buyquest",null,null,title);
      }
      
      protected function onAcceptQuestClick(param1:int) : void
      {
         this._questQuery.method_1779(param1);
      }
      
      protected function onRedeemQuestClick(param1:int) : void
      {
         this._questQuery.method_2035(param1);
      }
      
      protected function onCancelQuestClick(param1:Event) : void
      {
         this.component.enableView(false);
         var _loc2_:QuestDisplayVo = this.getContentModuleVo() as QuestDisplayVo;
         var _loc3_:class_130 = _loc2_.quest;
         class_48.name_3.var_1258.method_2286(_loc3_.name_7);
         this.onGenerateData();
      }
      
      private final function onUpdateInit(param1:Event = null) : void
      {
         var _loc3_:NpcQuestListVo = null;
         this.setTitleData(this._data.headline);
         var _loc2_:int = NpcQuestListVo.TYPE_QUEST;
         for each(_loc3_ in this._data.displayLists)
         {
            if(_loc3_.list.length <= 0)
            {
               continue;
            }
            _loc2_ = _loc3_.type;
            break;
         }
         this.setActiveModule(_loc2_);
      }
      
      private final function onUpdate(param1:Event) : void
      {
         this.onGenerateData();
      }
      
      protected function onQuestListMessage(param1:Event) : void
      {
         this._data = this.getSortedQuestData();
         this.onGenerateData();
      }
      
      protected final function onGenerateData(param1:Event = null) : void
      {
         var _loc2_:IContentModule = this.getActiveModule();
         this.generateData();
         var _loc3_:IContentModuleVo = this.getContentModuleVo();
         this.component.data = this._data;
         _loc2_.data = _loc3_;
         var _loc4_:QuestDisplayVo = _loc3_ as QuestDisplayVo;
         if(_loc4_ && _loc4_.quest.var_144 == null)
         {
            this._questQuery.method_2629(_loc4_.quest.name_7);
         }
      }
      
      protected function getContentModuleVo() : IContentModuleVo
      {
         var _loc1_:NpcQuestListVo = this.getListVo();
         var _loc2_:Vector.<IContentModuleVo> = _loc1_.list;
         var _loc3_:int = _loc2_.length;
         return _loc1_.index > -1 && _loc3_ > 0 && _loc1_.index < _loc3_?_loc1_.list[_loc1_.index]:null;
      }
      
      protected function getListVo() : NpcQuestListVo
      {
         return this._data.getDisplayList(this._type);
      }
      
      protected function generateData() : void
      {
         var _loc1_:NpcQuestListVo = this.getListVo();
         var _loc2_:IContentModule = this.getActiveModule();
         this.updateSubheaderContent();
         var _loc3_:Group = this.component.getContentGroup();
         _loc3_.removeAllElements();
         _loc3_.addElement(_loc2_);
         _loc1_.index = this.getSelectedIndex();
      }
      
      protected function updateSubheaderContent() : void
      {
         this.checkEventCurrencies();
      }
      
      private final function checkEventCurrencies() : void
      {
         var _loc1_:class_1052 = this._npc_questProxy.name_83;
         var _loc2_:ArrayList = !!_loc1_?_loc1_.method_362():null;
         var _loc3_:Boolean = _loc2_ != null && _loc2_.length > 0;
         var _loc4_:PopupSubHeader = this.component.getSubHeader();
         _loc4_.includeInLayout = _loc4_.visible = _loc3_;
         if(_loc3_)
         {
            if(!this._currencyList)
            {
               this._currencyList = new MetaCurrencyIndicatorList();
            }
            this._currencyList.dataProvider = _loc2_;
            _loc4_.content.addElement(this._currencyList);
            this.window.height = WINDOW_HEIGHT;
         }
         else if(this._currencyList && this._currencyList.parent)
         {
            _loc4_.content.removeElement(this._currencyList);
            this.window.height = WINDOW_HEIGHT - CURRENCIES_BAR_HEIGHT;
         }
         else
         {
            this.window.height = WINDOW_HEIGHT - CURRENCIES_BAR_HEIGHT;
         }
      }
      
      protected function getSelectedIndex() : int
      {
         var _loc6_:int = 0;
         var _loc7_:class_130 = null;
         var _loc8_:int = 0;
         var _loc1_:NpcQuestList = this.component.getList(this._type);
         if(_loc1_ == null)
         {
            return 0;
         }
         var _loc2_:NpcQuestListVo = this.getListVo();
         var _loc3_:List = _loc1_.list;
         var _loc4_:int = _loc3_.selectedIndex;
         var _loc5_:int = _loc2_.list.length;
         if(_loc4_ < 0 && this._type == NpcQuestListVo.TYPE_QUEST)
         {
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               _loc7_ = (_loc2_.list[_loc6_] as QuestDisplayVo).quest;
               _loc8_ = _loc7_.name_17;
               if(!(_loc8_ == class_128.const_1205 || _loc8_ == class_128.const_78 || _loc8_ == class_128.const_186))
               {
                  _loc6_++;
                  continue;
               }
               _loc4_ = _loc6_;
               break;
            }
         }
         if(_loc4_ < 0)
         {
            _loc4_ = 0;
         }
         return _loc4_;
      }
      
      private final function setActiveModule(param1:int) : void
      {
         this._type = param1;
         var _loc2_:IContentModuleVo = this.getContentModuleVo();
         var _loc3_:QuestDisplayVo = _loc2_ as QuestDisplayVo;
         if(_loc3_)
         {
            _loc3_.quest.var_144 = null;
         }
         this.onGenerateData();
      }
      
      protected final function getActiveModule() : IContentModule
      {
         var _loc1_:IContentModule = this._modules[this._type] as IContentModule;
         if(_loc1_)
         {
            return _loc1_;
         }
         _loc1_ = this.createContentModule(this._type);
         this._modules[this._type] = _loc1_;
         return _loc1_;
      }
      
      protected function createContentModule(param1:int) : IContentModule
      {
         if(param1 != NpcQuestListVo.TYPE_QUEST)
         {
            throw new class_57(param1,this);
         }
         return new QuestContentModule();
      }
      
      public function get component() : IQuestPopup
      {
         return super.viewComponent as IQuestPopup;
      }
      
      public function get window() : TitleWindow
      {
         return this.component.owner as TitleWindow;
      }
      
      public function get windowSkin() : BasicResizableWindowSkin
      {
         return this.window.skin as BasicResizableWindowSkin;
      }
      
      override public function shutdown() : void
      {
         super.shutdown();
         this._npc_questProxy.name_64.clearDisplayLists();
         this._npc_questProxy.removeEventListener(class_192.const_776,this.onUpdateInit);
         this._npc_questProxy.removeEventListener(class_192.const_892,this.onUpdate);
         this._npc_questProxy.removeEventListener(class_192.const_797,this.onQuestListMessage);
         this._npc_questProxy = null;
         this._questQuery.removeEventListener(Event.CHANGE,this.onQuestQueryChange);
         var _loc1_:SFAccordion = this.component.getAccordionContainer();
         _loc1_.removeEventListener(IndexChangedEvent.CHANGE,this.onAccordionChange);
         _loc1_.removeEventListener(ContentModuleIndexChangeEvent.MODULE_INDEX_CHANGE,this.onQuestListIndexChange);
         this.component.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.component.removeEventListener(NpcQuestContentModuleActionEvent.QUEST_ACTION_BUTTON_CLICK,this.onQuestActionButtonClick);
         this.component.removeEventListener(NpcQuestContentModuleActionEvent.CANCEL_QUEST_CLICK,this.onCancelQuestClick);
         this.component.removeEventListener(NpcQuestContentModuleActionEvent.QUEST_BUY_BUTTON_CLICK,this.onQuestBuyButtonClick);
         this.window.removeEventListener(class_979.const_5,this.onHelpPressed);
         this.window.removeEventListener(class_979.const_24,this.onRefreshPressed);
         this.window.removeEventListener(class_979.const_676,this.onQuestInfoButtonClick);
      }
      
      public function set data(param1:ContentVo) : void
      {
         this._headline = param1.headline;
      }
      
      public function setTitleData(param1:String) : void
      {
         this.windowSkin.titleString = param1;
      }
   }
}
