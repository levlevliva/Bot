package com.bigpoint.services.statelessCommands.commands
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.MinimizeLockWindow;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import com.bigpoint.seafight.view.popups.reputation.ReputationPopup;
   import com.bigpoint.seafight.view.popups.reputation.ReputationPopupController;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.IStatelessCMD;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_14.class_96;
   import package_20.class_33;
   import package_45.class_110;
   import package_51.class_974;
   import package_55.class_1007;
   import spark.components.List;
   
   public final class CmdSL_OpenReputationWindow implements IStatelessCMD
   {
       
      
      public function CmdSL_OpenReputationWindow()
      {
         super();
      }
      
      public function execute(param1:Object = null) : void
      {
         var _loc2_:class_332 = null;
         if(!class_33.name_12.method_41.method_45(class_110.const_488))
         {
            _loc2_ = new class_332(class_332.const_12);
            _loc2_.var_27 = ReputationPopup;
            _loc2_.var_51 = MinimizeLockWindow;
            _loc2_.var_74 = SimpleThinResizableWindowSkin;
            _loc2_.var_28 = ReputationPopupController;
            _loc2_.var_72 = false;
            _loc2_.var_36 = 500;
            _loc2_.var_31 = 250;
            _loc2_.var_30 = new ContentVo();
            _loc2_.var_30.headline = class_96.method_20(class_96.const_66,"title");
            _loc2_.var_67 = class_110.const_488;
            CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc2_));
         }
      }
   }
}
