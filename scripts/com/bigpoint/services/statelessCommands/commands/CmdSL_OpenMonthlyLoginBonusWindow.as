package com.bigpoint.services.statelessCommands.commands
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1098;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1097;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusPopup;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusPopupController;
   import com.bigpoint.seafight.view.popups.reputation.ReputationPopup;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.IStatelessCMD;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_102.class_359;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_20.class_33;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_975;
   import package_5.class_123;
   import package_51.class_974;
   import package_6.class_14;
   import package_72.class_1080;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public final class CmdSL_OpenMonthlyLoginBonusWindow implements IStatelessCMD
   {
       
      
      public function CmdSL_OpenMonthlyLoginBonusWindow()
      {
         super();
      }
      
      public function execute(param1:Object = null) : void
      {
         var _loc3_:class_332 = null;
         var _loc2_:SWFFinisher = getSWFFinisher(class_123.const_106,this.execute);
         if(_loc2_ == null)
         {
            return;
         }
         if(!class_33.name_12.method_41.method_45(class_110.const_1057))
         {
            class_975.name_3.method_54();
            _loc3_ = new class_332(class_332.const_12);
            _loc3_.var_27 = MonthlyLoginBonusPopup;
            _loc3_.var_51 = ResizeableExtendedWindow;
            _loc3_.var_74 = BasicResizableWindowSkin;
            _loc3_.var_28 = MonthlyLoginBonusPopupController;
            _loc3_.var_72 = false;
            _loc3_.var_36 = 828;
            _loc3_.var_31 = 428;
            _loc3_.var_30 = new ContentVo();
            _loc3_.var_30.headline = class_96.method_20(class_96.const_66,"title");
            _loc3_.var_67 = class_110.const_1057;
            CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc3_));
         }
      }
   }
}
