package com.bigpoint.services.statelessCommands.commands
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1525;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1021;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import com.bigpoint.seafight.view.popups.castle.CastlePopupController;
   import com.bigpoint.seafight.view.popups.castle.component.CastlePopup;
   import com.bigpoint.seafight.view.popups.quest.regular.AbstractQuestPopupController;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.IStatelessCMD;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.StyleSheet;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import package_100.class_1186;
   import package_104.class_1160;
   import package_14.class_47;
   import package_14.class_51;
   import package_20.class_33;
   import package_26.class_1102;
   import package_26.class_1523;
   import package_32.class_64;
   import package_34.class_116;
   import package_45.class_110;
   import package_5.class_123;
   import package_51.class_148;
   import package_51.class_974;
   import package_54.class_319;
   import package_56.class_170;
   import spark.components.TitleWindow;
   
   public final class CmdSL_OpenCastleWindow implements IStatelessCMD
   {
       
      
      public function CmdSL_OpenCastleWindow()
      {
         super();
      }
      
      public function execute(param1:Object = null) : void
      {
         var _loc2_:TitleWindow = class_33.name_12.method_41.method_45(class_110.const_480);
         if(_loc2_)
         {
            return;
         }
         var _loc3_:class_332 = new class_332(class_332.const_12);
         _loc3_.var_27 = CastlePopup;
         _loc3_.var_51 = ResizeableExtendedWindow;
         _loc3_.var_74 = BasicResizableWindowSkin;
         _loc3_.var_28 = CastlePopupController;
         _loc3_.var_72 = false;
         _loc3_.var_36 = AbstractQuestPopupController.WINDOW_WIDTH;
         _loc3_.var_31 = 430;
         _loc3_.var_30 = new ContentVo();
         _loc3_.var_30.headline = class_47.method_22.method_20("castle");
         _loc3_.var_67 = class_110.const_480;
         CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc3_));
      }
   }
}
