package com.bigpoint.services.statelessCommands.commands
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.common.components.ShipSelectionWindow;
   import com.bigpoint.seafight.view.popups.reputation.ReputationData;
   import com.bigpoint.seafight.view.popups.shipselection.ShipSelectionPopupController;
   import com.bigpoint.seafight.view.popups.shipselection.component.ShipSelectionPopup;
   import com.bigpoint.seafight.view.popups.shipselection.vo.ShipSelectionPopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.IStatelessCMD;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_20.class_33;
   import package_45.class_110;
   import package_47.class_129;
   import package_51.class_974;
   import spark.components.Label;
   import spark.components.TitleWindow;
   
   public final class CmdSL_OpenShipSelectionWindow implements IStatelessCMD
   {
       
      
      public function CmdSL_OpenShipSelectionWindow()
      {
         super();
      }
      
      public function execute(param1:Object = null) : void
      {
         var _loc2_:ShipSelectionPopupVo = param1 as ShipSelectionPopupVo;
         var _loc3_:TitleWindow = class_33.name_12.method_41.method_45(class_110.const_1031);
         if(_loc3_)
         {
            return;
         }
         var _loc4_:class_332 = new class_332(class_332.const_12);
         _loc4_.var_27 = ShipSelectionPopup;
         _loc4_.var_51 = ShipSelectionWindow;
         _loc4_.var_74 = SimpleThinResizableWindowSkin;
         _loc4_.var_28 = ShipSelectionPopupController;
         _loc4_.var_72 = false;
         _loc4_.var_36 = 300;
         _loc4_.var_31 = 300;
         _loc4_.var_67 = class_110.const_1031;
         _loc4_.var_30 = _loc2_;
         CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc4_));
      }
   }
}
