package com.bigpoint.services.statelessCommands.commands.guildwindow
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.PlayerGuildWindow;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagDropTarget;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.PlayerGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.PlayerGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.PlayerGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.IStatelessCMD;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import mx.binding.BindingManager;
   import package_20.class_33;
   import package_45.class_110;
   import package_51.class_974;
   import spark.components.TitleWindow;
   
   public final class CmdSL_OpenPlayerGuildWindow implements IStatelessCMD
   {
       
      
      public function CmdSL_OpenPlayerGuildWindow()
      {
         super();
      }
      
      public function execute(param1:Object = null) : void
      {
         var _loc2_:TitleWindow = class_33.name_12.method_41.method_45(class_110.const_131);
         if(_loc2_)
         {
            return;
         }
         var _loc3_:class_332 = new class_332(class_332.const_12);
         _loc3_.var_27 = PlayerGuildWindowNaviPopup;
         _loc3_.var_51 = PlayerGuildWindow;
         _loc3_.var_74 = BasicResizableWindowSkin;
         _loc3_.var_28 = PlayerGuildWindowNaviController;
         _loc3_.var_72 = false;
         _loc3_.var_36 = 828;
         _loc3_.var_31 = 428;
         _loc3_.var_67 = class_110.const_131;
         var _loc4_:PlayerGuildWindowNaviPopupVo = new PlayerGuildWindowNaviPopupVo();
         _loc3_.var_30 = _loc4_;
         CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc3_));
      }
   }
}
