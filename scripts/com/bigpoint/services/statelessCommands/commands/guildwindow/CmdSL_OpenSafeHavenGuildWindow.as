package com.bigpoint.services.statelessCommands.commands.guildwindow
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.SafeHavenGuildWindow;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.SafeHavenGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.SafeHavenGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.SafeHavenGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.IStatelessCMD;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import package_14.class_47;
   import package_14.class_88;
   import package_190.class_1181;
   import package_20.class_33;
   import package_41.class_84;
   import package_41.class_93;
   import package_45.class_110;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_51.class_974;
   import spark.components.TitleWindow;
   import spark.filters.DropShadowFilter;
   
   public final class CmdSL_OpenSafeHavenGuildWindow implements IStatelessCMD
   {
       
      
      public function CmdSL_OpenSafeHavenGuildWindow()
      {
         super();
      }
      
      public function execute(param1:Object = null) : void
      {
         var _loc2_:TitleWindow = class_33.name_12.method_41.method_45(class_110.const_189);
         if(_loc2_)
         {
            return;
         }
         var _loc3_:class_332 = new class_332(class_332.const_12);
         _loc3_.var_27 = SafeHavenGuildWindowNaviPopup;
         _loc3_.var_51 = SafeHavenGuildWindow;
         _loc3_.var_74 = BasicResizableWindowSkin;
         _loc3_.var_28 = SafeHavenGuildWindowNaviController;
         _loc3_.var_72 = false;
         _loc3_.var_36 = 828;
         _loc3_.var_31 = 428;
         _loc3_.var_67 = class_110.const_189;
         var _loc4_:SafeHavenGuildWindowNaviPopupVo = new SafeHavenGuildWindowNaviPopupVo();
         _loc3_.var_30 = _loc4_;
         CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc3_));
      }
   }
}
