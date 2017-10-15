package com.bigpoint.seafight.view.popups.spymenu
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_1031;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getClass;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.MinimizeLockWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingAssistantVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.SmallGreenPayButton;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tooltips.LeagueButtonTooltip;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueButtonTooltipVo;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.PlayerProfileViewVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModuleVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.SimpleStatisticItem;
   import com.bigpoint.seafight.view.popups.shipequipment.skins.StatisticListSkin;
   import com.bigpoint.seafight.view.popups.spymenu.component.SpyPopup;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyCheckboxItemRenderer;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyColumnCheckBoxRenderer;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyGuildTagItemRenderer;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyUserIdItemRenderer;
   import com.bigpoint.seafight.view.popups.spymenu.vo.SpyInfoPopupVo;
   import com.bigpoint.seafight.view.popups.spymenu.vo.SpyUserDataVo;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBoxButton;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxButtonSmallSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenNPCWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenNpcConversationWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenSpyInfoWindow;
   import com.bit101.components.ColorChooser;
   import com.bit101.components.ScrollPane;
   import com.bit101.components.Style;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.PropTween;
   import com.greensock.easing.Linear;
   import com.greensock.loading.SWFLoader;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.media.SoundChannel;
   import flash.system.ApplicationDomain;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.collections.IList;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.class_396;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_104.class_448;
   import package_104.class_641;
   import package_108.class_647;
   import package_111.class_859;
   import package_14.class_1002;
   import package_14.class_1003;
   import package_14.class_102;
   import package_14.class_118;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_147.class_885;
   import package_15.class_48;
   import package_16.class_28;
   import package_163.class_843;
   import package_163.class_873;
   import package_17.class_323;
   import package_170.class_979;
   import package_171.class_1057;
   import package_179.class_1282;
   import package_18.class_916;
   import package_181.class_1450;
   import package_183.class_1453;
   import package_185.class_1136;
   import package_20.class_33;
   import package_202.class_1301;
   import package_23.class_42;
   import package_26.class_1061;
   import package_26.class_204;
   import package_27.class_53;
   import package_29.class_166;
   import package_30.class_62;
   import package_34.class_107;
   import package_36.class_100;
   import package_39.class_1367;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_43.class_239;
   import package_43.class_242;
   import package_43.class_251;
   import package_43.class_271;
   import package_46.class_1356;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_139;
   import package_5.class_22;
   import package_5.class_43;
   import package_50.class_141;
   import package_50.class_219;
   import package_51.class_148;
   import package_52.class_168;
   import package_52.class_309;
   import package_54.class_1006;
   import package_54.class_159;
   import package_6.class_14;
   import package_65.class_1046;
   import package_67.class_192;
   import package_7.class_1039;
   import package_72.class_1071;
   import package_72.class_203;
   import package_73.class_228;
   import package_76.class_279;
   import package_88.class_290;
   import package_89.class_299;
   import package_90.class_316;
   import package_91.class_1246;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichEditableText;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   import spark.primitives.Ellipse;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class SpyPopupController extends WindowController implements IWindowController
   {
      
      private static var _showSearchSwitchPrompt:Boolean = true;
      
      private static var _spyLimit:int;
       
      
      private var _component:SpyPopup;
      
      private var _queryHub:class_48;
      
      private var _stateIsUser:Boolean = true;
      
      private var _searchQuery:class_242;
      
      private var _guildMembersQuery:class_239;
      
      private var _locateQuery:class_271;
      
      private var _currentGuildId:class_89;
      
      private var _spyTableEvent:SpyTableEvent;
      
      private var _buyButtonController:BuyButtonController;
      
      private var _buyExecutionController:BuyExecutionController;
      
      private var _settingsController:WindowSettingsController;
      
      private var _numChecked:int;
      
      public function SpyPopupController(param1:String, param2:SpyPopup)
      {
         var _loc3_:class_251 = null;
         super(param1,param2);
         this._component = param2;
         this._numChecked = 0;
         this._queryHub = class_48.name_3;
         if(_spyLimit == 0)
         {
            _loc3_ = class_48.name_3.var_1192;
            if(_loc3_.name_63 == 0)
            {
               _loc3_.addEventListener(Event.CHANGE,this.onLimitLoaded);
            }
            else
            {
               _spyLimit = _loc3_.name_63;
            }
         }
      }
      
      private final function onLimitLoaded(param1:Event) : void
      {
         var _loc2_:class_251 = param1.currentTarget as class_251;
         _spyLimit = _loc2_.name_63;
         _loc2_.removeEventListener(Event.CHANGE,this.onLimitLoaded);
      }
      
      override protected function onWindowCreationComplete(param1:FlexEvent) : void
      {
         super.onWindowCreationComplete(param1);
         this.updateView();
         this.window.minimizeButton.visible = false;
         this._settingsController = new WindowSettingsController(this.window,class_43.const_1157,class_43.const_1361,class_43.const_1346,class_43.const_1373);
         this._settingsController.init();
         this.changeLayout();
         this.window.addEventListener(class_979.const_5,this.onHelpButtonPress);
         this.onMapFeaturesChangeEvent();
         this._queryHub.var_1137.name_8;
         this._queryHub.var_1001.addEventListener(Event.CHANGE,this.onMapFeaturesChangeEvent);
         this._component.txSearchInput.addEventListener(SearchTextInput.EVENT_SEARCH,this.onSearch);
         this._component.rgSearchOptions.addEventListener(Event.CHANGE,this.onRadioButton);
         this._component.btnClearTable.addEventListener(MouseEvent.CLICK,this.onClear);
         this._component.spyTable.addEventListener(SpyTableEvent.TOGGLE_SELECTION,this.onCheckbox);
         this._component.searchTable.addEventListener(SpyTableEvent.INSPECT,this.onInspectUser);
         this._component.searchTable.addEventListener(SpyTableEvent.LOCATE,this.onLocate);
         this._component.btnLocate.addEventListener(MouseEvent.CLICK,this.onBuy);
         this._component.spyTable.addEventListener(SpyColumnCheckBoxRenderer.CHECK_ALL_EVENT,this.onGlobalCheckbox);
         this._buyButtonController = new BuyButtonController(this._component.btnLocate);
         this._buyExecutionController = new BuyExecutionController(this._queryHub);
      }
      
      private final function onMapFeaturesChangeEvent(param1:Event = null) : void
      {
         var _loc2_:Boolean = this._queryHub.var_1001.method_940();
         this.window.alpha = !!_loc2_?Number(1):Number(0);
         this.window.mouseChildren = this.window.mouseEnabled = _loc2_;
      }
      
      private final function updateView() : void
      {
         var _loc1_:class_87 = class_47.method_22;
         this.window.title = _loc1_.method_20("spy");
         this.window.minWidth = 220;
         this.window.minHeight = 316;
         this.window.width = 427;
         this.window.height = this.window.minHeight;
         this._component.btnLocate.text = _loc1_.method_20("locateprice");
         this._component.btnLocate.currencyName = class_47.method_37.method_32(class_88.const_19,"2");
         this._component.columnName.headerText = _loc1_.method_20("name");
         this._component.columnName.dataField = SpyUserDataVo.COLUMN_SORTING_NAME_FIELD_NAME;
         this._component.columnId.headerText = _loc1_.method_20("id");
         this._component.columnId.dataField = SpyUserDataVo.COLUMN_SORTING_ID_FIELD_NAME;
         this._component.columnTag.headerText = _loc1_.method_20("tag");
         this._component.columnTag.dataField = SpyUserDataVo.COLUMN_SORTING_TAG_FIELD_NAME;
         this._component.columnActions.headerText = _loc1_.method_20("action");
         this._component.spyColumnName.headerText = _loc1_.method_20("name");
         this._component.spyColumnName.dataField = SpyUserDataVo.COLUMN_SORTING_NAME_FIELD_NAME;
         this._component.spyColumnId.headerText = _loc1_.method_20("id");
         this._component.spyColumnId.dataField = SpyUserDataVo.COLUMN_SORTING_ID_FIELD_NAME;
         this._component.spyColumnTag.headerText = _loc1_.method_20("tag");
         this._component.spyColumnTag.dataField = SpyUserDataVo.COLUMN_SORTING_TAG_FIELD_NAME;
         this._component.spyColumnLocation.headerText = _loc1_.method_20("location");
         this._component.spyColumnLocation.dataField = SpyUserDataVo.COLUMN_SORTING_LOCATION_FIELD_NAME;
      }
      
      public final function onHelpButtonPress(param1:class_979) : void
      {
         MultiPopUpManager.addSimpleOK_Popup(class_96.method_20(class_96.const_461,"helptip"));
      }
      
      public function get window() : MinimizeLockWindow
      {
         return this._component.owner as MinimizeLockWindow;
      }
      
      override public function shutdown() : void
      {
         super.shutdown();
         this.stopAllQueries();
         this.window.removeEventListener(class_979.const_5,this.onHelpButtonPress);
         this._queryHub.var_1001.removeEventListener(Event.CHANGE,this.onMapFeaturesChangeEvent);
         this._component.txSearchInput.removeEventListener(SearchTextInput.EVENT_SEARCH,this.onSearch);
         this._component.rgSearchOptions.removeEventListener(Event.CHANGE,this.onRadioButton);
         this._component.btnClearTable.removeEventListener(MouseEvent.CLICK,this.onClear);
         this._component.spyTable.removeEventListener(SpyTableEvent.TOGGLE_SELECTION,this.onCheckbox);
         this._component.searchTable.removeEventListener(SpyTableEvent.INSPECT,this.onInspectUser);
         this._component.searchTable.removeEventListener(SpyTableEvent.LOCATE,this.onLocate);
         this._component.btnLocate.removeEventListener(MouseEvent.CLICK,this.onBuy);
         this._component.spyTable.removeEventListener(SpyColumnCheckBoxRenderer.CHECK_ALL_EVENT,this.onGlobalCheckbox);
         this._buyButtonController.destroy();
         this._buyExecutionController.destroy();
         this._settingsController.destroy();
      }
      
      public function set data(param1:ContentVo) : void
      {
         this._queryHub = class_48.name_3;
      }
      
      private final function onInspectUser(param1:SpyTableEvent) : void
      {
         this._spyTableEvent = param1;
         var _loc2_:Number = this._queryHub.var_1137.name_8.inspectUserPearls;
         this._buyExecutionController.pearlsCost = _loc2_;
         var _loc3_:String = class_13.method_53(_loc2_) + " " + class_47.method_37.method_32(class_88.const_19,"2");
         if(class_49.method_42(class_43.const_432))
         {
            this.onBuyUserData();
         }
         else
         {
            MultiPopUpManager.addYesNoPopup(class_96.method_20(class_96.const_461,"promptpay").replace(class_22.const_6,_loc3_),this.onBuyUserData);
         }
      }
      
      private final function onBuyUserData() : void
      {
         if(!this._buyExecutionController.testPayable())
         {
            return;
         }
         var _loc1_:class_84 = this._spyTableEvent.vo.userId;
         var _loc2_:SpyInfoPopupVo = new SpyInfoPopupVo();
         _loc2_.id = _loc1_;
         _loc2_.name = this._spyTableEvent.vo.name;
         StatelessCMD.invoke(CmdSL_OpenSpyInfoWindow,_loc2_);
      }
      
      private final function onLocate(param1:SpyTableEvent) : void
      {
         if(this._stateIsUser)
         {
            this.onLocateUser(param1);
         }
         else
         {
            this.onLocateGuild(param1.vo.guildId,param1.vo.tag);
         }
         this._component.btnClearTable.enabled = true;
      }
      
      private final function onLocateUser(param1:SpyTableEvent) : void
      {
         if(this._component.spyTable.dataProvider == null)
         {
            this._component.spyTable.dataProvider = new ArrayCollection();
         }
         var _loc2_:IList = this._component.spyTable.dataProvider;
         var _loc3_:SpyUserDataVo = param1.vo;
         if(_loc2_.getItemIndex(_loc3_) == -1)
         {
            if(this._numChecked < _spyLimit)
            {
               this._numChecked++;
            }
            else
            {
               _loc3_.checked = false;
            }
            this._component.spyTable.dataProvider.addItem(_loc3_);
         }
         this.updatePrice();
      }
      
      private final function onLocateGuild(param1:class_89, param2:String) : void
      {
         this.stopAllQueries();
         this._currentGuildId = param1;
         this._guildMembersQuery = this._queryHub.method_1906(param1,param2);
         this._guildMembersQuery.addEventListener(Event.CHANGE,this.onMembersMessage);
         this._guildMembersQuery.method_68();
      }
      
      private final function onClear(param1:Event) : void
      {
         this._currentGuildId = null;
         this._numChecked = 0;
         this._component.spyTable.dataProvider.removeAll();
         this._component.btnClearTable.enabled = false;
         this.setPrice(0);
      }
      
      private final function onBuy(param1:MouseEvent) : void
      {
         var _loc2_:Vector.<class_84> = null;
         var _loc3_:IList = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:SpyUserDataVo = null;
         this.stopAllQueries();
         if(this._stateIsUser)
         {
            _loc2_ = new Vector.<class_84>();
            _loc3_ = this._component.spyTable.dataProvider;
            _loc4_ = _loc3_.length;
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               _loc6_ = _loc3_.getItemAt(_loc5_) as SpyUserDataVo;
               if(_loc6_.checked)
               {
                  _loc2_.push(_loc6_.userId);
               }
               _loc5_++;
            }
            this._locateQuery = this._queryHub.method_1499(null,_loc2_);
         }
         else
         {
            this._locateQuery = this._queryHub.method_1499(this._currentGuildId,null);
         }
         this._locateQuery.addEventListener(Event.CHANGE,this.onLocateMessageReceived);
         this._locateQuery.method_68();
      }
      
      private final function onSearch(param1:Event) : void
      {
         this.stopAllQueries();
         var _loc2_:String = this._component.txSearchInput.text;
         this._searchQuery = this._queryHub.method_2570(_loc2_,this._stateIsUser);
         this._searchQuery.addEventListener(Event.CHANGE,this.onSearchMessage);
         this._searchQuery.method_68();
      }
      
      private final function onCheckbox(param1:SpyTableEvent) : void
      {
         if(param1.isChecked && this._numChecked >= _spyLimit)
         {
            (param1.target as SpyCheckboxItemRenderer).checkbox.selected = false;
         }
         else
         {
            param1.vo.checked = param1.isChecked;
            this._numChecked = this._numChecked + (!!param1.isChecked?1:-1);
            this.updatePrice();
         }
      }
      
      private final function onRadioButton(param1:Event) : void
      {
         if(_showSearchSwitchPrompt)
         {
            MultiPopUpManager.addYesNoPopup(class_47.method_22.method_20("spysearchswitch"),this.onSwitchSearchView,"tutorial_skip_popup_confirm",this.onSwitchSearchViewCancel);
            _showSearchSwitchPrompt = false;
         }
         else
         {
            this.onSwitchSearchView();
         }
      }
      
      private final function onSwitchSearchViewCancel() : void
      {
         this._component.rgSearchOptions.selectedIndex = 0;
      }
      
      private final function onSwitchSearchView() : void
      {
         var _loc1_:* = this._component.rgSearchOptions.selectedIndex == 0;
         this._currentGuildId = null;
         this._stateIsUser = _loc1_;
         this.stopAllQueries();
         this._component.txSearchInput.clear();
         this.changeLayout();
         this.setPrice(0);
         this._component.searchTable.dataProvider = null;
         this._component.spyTable.dataProvider = null;
      }
      
      private final function onGlobalCheckbox(param1:class_1367) : void
      {
         var _loc2_:int = 0;
         var _loc3_:SpyUserDataVo = null;
         var _loc4_:IList = this._component.spyTable.dataProvider;
         if(!_loc4_)
         {
            return;
         }
         var _loc5_:int = _loc4_.length;
         this._numChecked = 0;
         if(param1.name_19)
         {
            _loc2_ = 0;
            while(_loc2_ < _loc5_)
            {
               _loc3_ = _loc4_.getItemAt(_loc2_) as SpyUserDataVo;
               _loc3_.checked = this._numChecked < _spyLimit;
               this._numChecked = Math.min(this._numChecked + 1,_spyLimit);
               _loc2_++;
            }
         }
         else
         {
            _loc2_ = 0;
            while(_loc2_ < _loc5_)
            {
               _loc3_ = _loc4_.getItemAt(_loc2_) as SpyUserDataVo;
               _loc3_.checked = false;
               _loc2_++;
            }
         }
         (_loc4_ as ArrayCollection).refresh();
         this.updatePrice();
      }
      
      private final function onSearchMessage(param1:Event) : void
      {
         this._component.searchTable.dataProvider = this._searchQuery.name_8;
         this.stopAllQueries();
      }
      
      private final function changeLayout() : void
      {
         this._component.spyArrayList.removeAll();
         this._component.searchArrayList.removeAll();
         this._numChecked = 0;
         if(this._stateIsUser)
         {
            this._component.txSearchInput.searchInputTooltip = class_47.method_22.method_20("enterplayer");
            this._component.searchArrayList.addItem(this._component.columnName);
            this._component.searchArrayList.addItem(this._component.columnId);
            this._component.searchArrayList.addItem(this._component.columnTag);
            this._component.searchArrayList.addItem(this._component.columnActions);
            this._component.spyArrayList.addItem(this._component.spyColumnCheck);
            this._component.spyArrayList.addItem(this._component.spyColumnName);
            this._component.spyArrayList.addItem(this._component.spyColumnId);
            this._component.spyArrayList.addItem(this._component.spyColumnTag);
            this._component.spyArrayList.addItem(this._component.spyColumnLocation);
         }
         else
         {
            this._component.txSearchInput.searchInputTooltip = class_47.method_22.method_20("enterguild");
            this._component.searchArrayList.addItem(this._component.columnName);
            this._component.searchArrayList.addItem(this._component.columnTag);
            this._component.searchArrayList.addItem(this._component.columnActions);
            this._component.spyArrayList.addItem(this._component.spyColumnName);
            this._component.spyArrayList.addItem(this._component.spyColumnId);
            this._component.spyArrayList.addItem(this._component.spyColumnTag);
            this._component.spyArrayList.addItem(this._component.spyColumnLocation);
         }
         this._component.updateColumnWidths();
      }
      
      private final function onMembersMessage(param1:Event) : void
      {
         this._component.spyTable.dataProvider = this._guildMembersQuery.name_8;
         this.updatePrice();
         this.stopAllQueries();
      }
      
      private final function onLocateMessageReceived(param1:Event) : void
      {
         var _loc9_:SpyUserDataVo = null;
         var _loc10_:int = 0;
         var _loc11_:class_885 = null;
         var _loc2_:IList = this._component.spyTable.dataProvider;
         var _loc3_:Vector.<class_885> = this._locateQuery.name_8;
         var _loc4_:ArrayCollection = this._component.spyTable.dataProvider as ArrayCollection;
         var _loc5_:Array = _loc4_.source;
         var _loc6_:int = _loc2_.length;
         var _loc7_:int = _loc3_.length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = _loc2_.getItemAt(_loc8_) as SpyUserDataVo;
            if(_loc9_.checked)
            {
               _loc9_.setOffline();
            }
            _loc10_ = 0;
            while(_loc10_ < _loc7_)
            {
               _loc11_ = _loc3_[_loc10_];
               if(class_177.method_52(_loc9_.userId,_loc11_.name_7))
               {
                  _loc9_.setLocation(class_139.method_27(_loc11_.name_11),class_118.method_2346(_loc11_.var_166.var_9,_loc11_.var_166.var_8));
                  break;
               }
               _loc10_++;
            }
            _loc8_++;
         }
         _loc4_.source = _loc5_;
         this.stopAllQueries();
      }
      
      private final function updatePrice() : void
      {
         var _loc1_:int = 0;
         if(this._stateIsUser)
         {
            _loc1_ = this._queryHub.var_1137.name_8.locateUserPearls * this.getNumCheckedUsers();
         }
         else
         {
            _loc1_ = this._queryHub.var_1137.name_8.locateGuildPearls;
         }
         this.setPrice(_loc1_);
      }
      
      private final function setPrice(param1:int) : void
      {
         var _loc2_:SmallGreenPayButton = this._component.btnLocate;
         _loc2_.currencyPrice = param1;
      }
      
      private final function getNumCheckedUsers() : int
      {
         var _loc5_:SpyUserDataVo = null;
         var _loc1_:int = 0;
         var _loc2_:IList = this._component.spyTable.dataProvider;
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc2_.getItemAt(_loc4_) as SpyUserDataVo;
            if(_loc5_.checked)
            {
               _loc1_++;
            }
            _loc4_++;
         }
         return _loc1_;
      }
      
      private final function stopAllQueries() : void
      {
         if(this._searchQuery)
         {
            this._searchQuery.removeEventListener(Event.CHANGE,this.onSearchMessage);
            this._searchQuery.method_36();
            this._searchQuery = null;
         }
         if(this._guildMembersQuery)
         {
            this._guildMembersQuery.removeEventListener(Event.CHANGE,this.onMembersMessage);
            this._guildMembersQuery.method_36();
            this._guildMembersQuery = null;
         }
         if(this._locateQuery)
         {
            this._locateQuery.removeEventListener(Event.CHANGE,this.onLocateMessageReceived);
            this._locateQuery.method_36();
            this._locateQuery = null;
         }
      }
   }
}
