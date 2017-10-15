package com.bigpoint.seafight.view.popups.reputation
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.MinimizeLockWindow;
   import com.bigpoint.seafight.view.common.components.PlayerGuildWindow;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.IGemsInventory;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.GuildIslandWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildOverviewLogListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.UIComponent;
   import mx.events.FlexEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.utils.ObjectUtil;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_513;
   import net.bigpoint.seafight.com.module.guild.class_817;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_100.class_1471;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_148.class_606;
   import package_15.class_48;
   import package_158.class_703;
   import package_20.class_33;
   import package_214.class_1604;
   import package_34.class_107;
   import package_42.class_99;
   import package_45.class_110;
   import package_48.class_1478;
   import package_5.class_12;
   import package_5.class_123;
   import package_51.class_974;
   import package_53.class_1100;
   import package_78.class_255;
   import package_92.class_944;
   import package_92.class_962;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.TitleWindow;
   import spark.components.ToggleButton;
   import spark.components.gridClasses.GridColumn;
   
   public final class ReputationPopupController extends WindowController implements IWindowController
   {
       
      
      private var _component:ReputationPopup;
      
      private var _query:class_255;
      
      public function ReputationPopupController(param1:String, param2:Object)
      {
         super(param1,param2);
         this._component = this.component as ReputationPopup;
      }
      
      override protected function onWindowCreationComplete(param1:FlexEvent) : void
      {
         super.onWindowCreationComplete(param1);
         this.window.minimizeButton.includeInLayout = false;
         this.window.minimizeButton.visible = false;
         this.windowSkin.helpButton.visible = false;
         this.windowSkin.resizeHandle.visible = false;
         this.window.title = class_96.method_20(class_96.const_265,"title",true);
         this._component.faction.headerText = class_47.method_37.method_32(class_88.const_308,"FACTION");
         this._component.faction.dataField = ReputationData.COLUMN_SORTING_FACTION;
         this._component.reputationArrayList.addItem(this._component.faction);
         this._component.reputation.headerText = class_96.method_20(class_96.const_265,"points",true);
         this._component.reputation.dataField = ReputationData.COLUMN_SORTING_REPUTATION;
         this._component.reputation.sortCompareFunction = this._compareReputation;
         this._component.reputationArrayList.addItem(this._component.reputation);
         this._component.opposer.headerText = class_96.method_20(class_96.const_265,"opposer",true);
         this._component.opposer.dataField = ReputationData.COLUMN_SORTING_OPPOSER;
         this._component.reputationArrayList.addItem(this._component.opposer);
         this._component.favorite.headerText = class_96.method_20(class_96.const_265,"favorite",true);
         this._component.favorite.dataField = ReputationData.COLUMN_SORTING_FAVORITE;
         this._component.favorite.sortCompareFunction = this._compareFavorites;
         this._component.reputationArrayList.addItem(this._component.favorite);
         this._component.reputationTable.addEventListener(ReputationFavoriteEvent.CLICK,this.onClickFavorite);
         this._query = class_48.name_3.method_2310;
         this._query.addEventListener(Event.CHANGE,this.updateView);
         this.updateView();
      }
      
      private final function _compareReputation(param1:Object, param2:Object, param3:GridColumn) : int
      {
         var _loc4_:int = ReputationData(param1).stub.points;
         var _loc5_:int = ReputationData(param2).stub.points;
         return ObjectUtil.numericCompare(_loc4_,_loc5_);
      }
      
      private final function _compareFavorites(param1:Object, param2:Object, param3:GridColumn) : int
      {
         var _loc4_:ReputationData = ReputationData(param1);
         var _loc5_:ReputationData = ReputationData(param2);
         var _loc6_:int = int(_loc4_.stub.var_126);
         var _loc7_:int = int(_loc5_.stub.var_126);
         return ObjectUtil.numericCompare(_loc6_,_loc7_);
      }
      
      private final function onClickFavorite(param1:ReputationFavoriteEvent) : void
      {
         this._query.method_2344(param1.vo);
      }
      
      override public function shutdown() : void
      {
         super.shutdown();
         this._query.method_36();
         this._component.reputationArrayList.removeEventListener(ReputationFavoriteEvent.CLICK,this.onClickFavorite);
         this._query = null;
      }
      
      private final function updateView(param1:Event = null) : void
      {
         var _loc3_:Dictionary = null;
         var _loc4_:ReputationData = null;
         var _loc5_:ArrayCollection = null;
         var _loc6_:ReputationData = null;
         var _loc2_:Vector.<ReputationData> = this._query.method_358() as Vector.<ReputationData>;
         if(_loc2_)
         {
            _loc3_ = new Dictionary();
            for each(_loc4_ in _loc2_)
            {
               _loc3_[_loc4_.stub.var_65] = _loc4_;
            }
            _loc5_ = new ArrayCollection();
            for each(_loc4_ in _loc3_)
            {
               _loc6_ = ReputationData(_loc3_[_loc4_.stub.var_1105]);
               if(int(_loc4_.stub.var_65 > 0) && _loc4_.stub.var_15 > 0)
               {
                  _loc5_.addItem(_loc4_);
               }
            }
            this._component.reputationTable.dataProvider = _loc5_;
         }
      }
      
      public function set data(param1:ContentVo) : void
      {
      }
      
      public function get component() : ReputationPopup
      {
         return super.viewComponent as ReputationPopup;
      }
      
      public final function getUiComponent() : UIComponent
      {
         return this.component as UIComponent;
      }
      
      public function get window() : MinimizeLockWindow
      {
         return this.component.owner as MinimizeLockWindow;
      }
      
      public function get windowSkin() : SimpleThinResizableWindowSkin
      {
         return this.window.skin as SimpleThinResizableWindowSkin;
      }
   }
}
