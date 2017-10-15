package com.bigpoint.services.statelessCommands.commands.leaguewindow
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.LeagueWindow;
   import com.bigpoint.seafight.view.popups.calendar.component.target;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.LeagueWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.leaguemenu.controllers.LeagueMenuBaseController;
   import com.bigpoint.seafight.view.popups.leaguemenu.controllers.LeagueWindowNaviController;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueWindowNaviPopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemConfigFooterVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.IStatelessCMD;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.states.State;
   import package_14.class_47;
   import package_2.*;
   import package_20.class_33;
   import package_219.class_1595;
   import package_45.class_110;
   import package_5.class_123;
   import package_51.class_974;
   import package_52.class_168;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.TitleWindow;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class CmdSL_OpenLeagueWindow implements IStatelessCMD
   {
       
      
      public function CmdSL_OpenLeagueWindow()
      {
         super();
      }
      
      public function execute(param1:Object = null) : void
      {
         var _loc2_:TitleWindow = class_33.name_12.method_41.method_45(class_110.const_676);
         if(_loc2_)
         {
            return;
         }
         var _loc3_:class_332 = new class_332(class_332.const_12);
         _loc3_.var_27 = LeagueWindowNaviPopup;
         _loc3_.var_51 = LeagueWindow;
         _loc3_.var_74 = BasicResizableWindowSkin;
         _loc3_.var_28 = LeagueWindowNaviController;
         _loc3_.var_72 = false;
         _loc3_.var_36 = 828;
         _loc3_.var_31 = 428;
         _loc3_.var_67 = class_110.const_676;
         var _loc4_:LeagueWindowNaviPopupVo = new LeagueWindowNaviPopupVo();
         _loc3_.var_30 = _loc4_;
         LeagueMenuBaseController.SELECTED_LEAGUE_ID = -1;
         CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc3_));
      }
   }
}
