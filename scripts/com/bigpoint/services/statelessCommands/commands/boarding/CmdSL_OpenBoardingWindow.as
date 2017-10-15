package com.bigpoint.services.statelessCommands.commands.boarding
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.BoardingWindow;
   import com.bigpoint.seafight.view.popups.boarding.component.BoardingWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.boarding.controllers.BoardingWindowNaviController;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingWindowNaviPopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.IStatelessCMD;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_122.class_428;
   import package_14.class_47;
   import package_18.class_530;
   import package_20.class_33;
   import package_22.class_354;
   import package_22.class_36;
   import package_22.class_423;
   import package_22.class_463;
   import package_22.class_505;
   import package_45.class_110;
   import package_51.class_974;
   import package_6.class_14;
   import spark.components.TitleWindow;
   
   public final class CmdSL_OpenBoardingWindow implements IStatelessCMD
   {
       
      
      public function CmdSL_OpenBoardingWindow()
      {
         super();
      }
      
      public function execute(param1:Object = null) : void
      {
         var _loc2_:class_110 = class_33.name_12.method_41;
         var _loc3_:BoardingWindowNaviPopupVo = param1 as BoardingWindowNaviPopupVo;
         var _loc4_:TitleWindow = _loc2_.method_45(class_110.const_92);
         if(_loc4_)
         {
            _loc2_.method_133(class_110.const_92);
         }
         _loc4_ = _loc2_.method_45(class_110.const_144);
         if(_loc4_)
         {
            return;
         }
         var _loc5_:class_332 = new class_332(class_332.const_12);
         _loc5_.var_27 = BoardingWindowNaviPopup;
         _loc5_.var_51 = BoardingWindow;
         _loc5_.var_74 = BasicResizableWindowSkin;
         _loc5_.var_28 = BoardingWindowNaviController;
         _loc5_.var_72 = false;
         _loc5_.var_36 = 831;
         _loc5_.var_31 = 450;
         _loc5_.var_67 = class_110.const_144;
         if(!_loc3_)
         {
            _loc3_ = new BoardingWindowNaviPopupVo();
         }
         _loc5_.var_30 = _loc3_;
         CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc5_));
      }
   }
}
