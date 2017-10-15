package com.bigpoint.services.statelessCommands.commands
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.CauldronWindow;
   import com.bigpoint.seafight.view.popups.cauldron.CauldronPopupController;
   import com.bigpoint.seafight.view.popups.cauldron.component.CauldronPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.IStatelessCMD;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_143.class_933;
   import package_20.class_33;
   import package_215.class_1600;
   import package_45.class_110;
   import package_51.class_974;
   import package_6.class_14;
   import package_95.class_341;
   import package_95.class_382;
   import spark.components.HGroup;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   
   public final class CmdSL_OpenCauldronWindow implements IStatelessCMD
   {
       
      
      public function CmdSL_OpenCauldronWindow()
      {
         super();
      }
      
      public function execute(param1:Object = null) : void
      {
         var _loc2_:TitleWindow = class_33.name_12.method_41.method_45(class_110.const_1015);
         if(_loc2_)
         {
            class_33.name_12.method_41.method_201(_loc2_);
            return;
         }
         var _loc3_:class_332 = new class_332(class_332.const_12);
         _loc3_.var_27 = CauldronPopup;
         _loc3_.var_51 = CauldronWindow;
         _loc3_.var_74 = BasicResizableWindowSkin;
         _loc3_.var_28 = CauldronPopupController;
         _loc3_.var_72 = false;
         _loc3_.var_36 = 828;
         _loc3_.var_31 = 428;
         _loc3_.var_67 = class_110.const_1015;
         CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc3_));
      }
   }
}
