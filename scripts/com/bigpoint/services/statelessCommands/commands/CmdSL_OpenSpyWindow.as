package com.bigpoint.services.statelessCommands.commands
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.MinimizeLockWindow;
   import com.bigpoint.seafight.view.popups.gempopup.ship.tools.GemTools;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.vo.GemConfigTabVo;
   import com.bigpoint.seafight.view.popups.spymenu.SpyPopupController;
   import com.bigpoint.seafight.view.popups.spymenu.component.SpyPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.IStatelessCMD;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.gems.class_719;
   import net.bigpoint.seafight.com.module.gems.class_892;
   import package_10.class_18;
   import package_10.class_38;
   import package_140.class_985;
   import package_20.class_33;
   import package_45.class_110;
   import package_5.class_945;
   import package_51.class_974;
   import spark.components.TitleWindow;
   
   public final class CmdSL_OpenSpyWindow implements IStatelessCMD
   {
       
      
      public function CmdSL_OpenSpyWindow()
      {
         super();
      }
      
      public function execute(param1:Object = null) : void
      {
         var _loc2_:TitleWindow = class_33.name_12.method_41.method_45(class_110.const_1000);
         if(_loc2_)
         {
            return;
         }
         class_38.method_173(class_18.const_898,{"val":class_985.const_642});
         var _loc3_:class_332 = new class_332(class_332.const_12);
         _loc3_.var_27 = SpyPopup;
         _loc3_.var_51 = MinimizeLockWindow;
         _loc3_.var_74 = SimpleThinResizableWindowSkin;
         _loc3_.var_28 = SpyPopupController;
         _loc3_.var_72 = false;
         _loc3_.var_67 = class_110.const_1000;
         CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc3_));
      }
   }
}
