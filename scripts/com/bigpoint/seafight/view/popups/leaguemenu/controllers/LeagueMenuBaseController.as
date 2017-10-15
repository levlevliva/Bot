package com.bigpoint.seafight.view.popups.leaguemenu.controllers
{
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuRankingTabButtonListItemVo;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.events.Event;
   import mx.collections.ArrayList;
   import mx.events.FlexEvent;
   import package_14.class_47;
   import package_14.class_88;
   import package_152.class_664;
   import package_20.class_33;
   import package_206.class_1357;
   import package_34.class_117;
   import package_45.class_110;
   import package_46.class_1356;
   import package_48.class_138;
   import package_69.class_978;
   import spark.components.Label;
   import spark.components.List;
   
   public class LeagueMenuBaseController extends WindowController
   {
      
      public static var SELECTED_LEAGUE_ID:int = -1;
      
      public static var LEAGUE_LIST_VERTICAL_SCROLL_POSITION:Number;
       
      
      private var _initList:Boolean;
      
      private var _proxy:class_1357;
      
      private var _seconds:int = -1;
      
      public function LeagueMenuBaseController(param1:class_1357, param2:String, param3:Object)
      {
         super(param2,param3);
         if(SELECTED_LEAGUE_ID < 0)
         {
            SELECTED_LEAGUE_ID = param1.method_214();
            class_1356.name_3.method_992(SELECTED_LEAGUE_ID);
         }
         this._initList = false;
         this._proxy = param1;
         this._proxy.addEventListener(class_978.const_4,this.onServerUpdateReceived);
         _window = class_33.name_12.method_41.method_45(class_110.const_835);
      }
      
      protected function onServerUpdateReceived(param1:Event) : void
      {
         this.populateLeagueList(this.getLeagueList());
      }
      
      protected function onLeagueListItemChange(param1:Event) : void
      {
         var _loc2_:List = this.getLeagueList();
         var _loc3_:int = _loc2_.selectedIndex;
         _loc2_.ensureIndexIsVisible(_loc3_);
         SELECTED_LEAGUE_ID = this.getSelectedLeagueId();
         class_1356.name_3.method_992(SELECTED_LEAGUE_ID);
      }
      
      protected function getLeagueList() : List
      {
         return null;
      }
      
      protected function getPopupHeaderText() : Label
      {
         return null;
      }
      
      protected final function getSelectedLeagueId() : int
      {
         var _loc1_:List = this.getLeagueList();
         return _loc1_.selectedIndex > -1?int((_loc1_.selectedItem as LeagueMenuRankingTabButtonListItemVo).leagueId):int(SELECTED_LEAGUE_ID);
      }
      
      protected function onCheckTimeUpdate() : void
      {
         var _loc1_:Label = this.getPopupHeaderText();
         if(_loc1_)
         {
            _loc1_.text = class_47.method_22.method_20("seasonendsin") + " " + (!!this._seconds?class_125.method_178(Number(this._seconds) * 1000):0);
         }
      }
      
      public final function populateLeagueList(param1:List) : void
      {
         if(!this._proxy.method_431() || this._initList)
         {
            return;
         }
         var _loc2_:ArrayList = !!param1.dataProvider?param1.dataProvider as ArrayList:new ArrayList();
         this._proxy.method_2705(_loc2_);
         param1.dataProvider = _loc2_;
         var _loc3_:int = this.getSelectedLeagueId();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            if((_loc2_.getItemAt(_loc4_) as LeagueMenuRankingTabButtonListItemVo).leagueId != _loc3_)
            {
               _loc4_++;
               continue;
            }
            param1.selectedIndex = _loc4_;
            break;
         }
         param1.ensureIndexIsVisible(param1.selectedIndex);
         this._initList = true;
      }
      
      public function get windowSkin() : BasicResizableWindowSkin
      {
         return _window.skin as BasicResizableWindowSkin;
      }
      
      override public function shutdown() : void
      {
         super.shutdown();
         var _loc1_:List = this.getLeagueList();
         LEAGUE_LIST_VERTICAL_SCROLL_POSITION = _loc1_.dataGroup.verticalScrollPosition;
         _loc1_.removeEventListener(Event.CHANGE,this.onLeagueListItemChange);
         this._proxy.removeEventListener(class_978.const_4,this.onServerUpdateReceived);
         _window.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      override protected function onWindowCreationComplete(param1:FlexEvent) : void
      {
         super.onWindowCreationComplete(param1);
         var _loc2_:List = this.getLeagueList();
         _loc2_.addEventListener(Event.CHANGE,this.onLeagueListItemChange);
         _loc2_.addEventListener(FlexEvent.UPDATE_COMPLETE,this.onListUpdateComplete);
         this.populateLeagueList(this.getLeagueList());
         this.onEnterFrame(null);
         this._proxy.name_16();
         _window.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      private final function onEnterFrame(param1:Event) : void
      {
         var _loc2_:int = this._proxy.method_1002() / 1000;
         if(this._seconds == _loc2_)
         {
            return;
         }
         if(_loc2_ <= 0)
         {
            class_117.name_3.method_1864();
         }
         this._seconds = _loc2_;
         this.onCheckTimeUpdate();
      }
      
      private final function onListUpdateComplete(param1:FlexEvent) : void
      {
         var _loc2_:List = this.getLeagueList();
         _loc2_.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.onListUpdateComplete);
         _loc2_.dataGroup.verticalScrollPosition = LEAGUE_LIST_VERTICAL_SCROLL_POSITION;
         delay(10,_loc2_.ensureIndexIsVisible,_loc2_.selectedIndex);
      }
   }
}
