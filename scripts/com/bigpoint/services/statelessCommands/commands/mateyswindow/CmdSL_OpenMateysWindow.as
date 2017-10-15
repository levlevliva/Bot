package com.bigpoint.services.statelessCommands.commands.mateyswindow
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.MateysWindow;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.MateysWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.mateysmenu.controllers.MateysWindowNaviController;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.MateysWindowNaviPopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.IStatelessCMD;
   import flash.display.BitmapData;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import package_14.class_286;
   import package_20.class_33;
   import package_41.class_84;
   import package_45.class_110;
   import package_5.class_43;
   import package_51.class_974;
   import package_52.class_168;
   import package_92.class_944;
   import package_97.class_409;
   import spark.components.Group;
   import spark.components.TitleWindow;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   
   public final class CmdSL_OpenMateysWindow implements IStatelessCMD
   {
       
      
      public function CmdSL_OpenMateysWindow()
      {
         super();
      }
      
      public function execute(param1:Object = null) : void
      {
         var _loc2_:TitleWindow = class_33.name_12.method_41.method_45(class_110.const_670);
         if(_loc2_)
         {
            return;
         }
         var _loc3_:class_332 = new class_332(class_332.const_12);
         _loc3_.var_27 = MateysWindowNaviPopup;
         _loc3_.var_51 = MateysWindow;
         _loc3_.var_74 = BasicResizableWindowSkin;
         _loc3_.var_28 = MateysWindowNaviController;
         _loc3_.var_72 = false;
         _loc3_.var_36 = 828;
         _loc3_.var_31 = 428;
         _loc3_.var_30 = new MateysWindowNaviPopupVo();
         _loc3_.var_67 = class_110.const_670;
         CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc3_));
      }
   }
}
