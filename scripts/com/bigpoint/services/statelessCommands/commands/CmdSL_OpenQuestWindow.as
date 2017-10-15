package com.bigpoint.services.statelessCommands.commands
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.QuestWindow;
   import com.bigpoint.seafight.view.popups.quest.regular.AbstractQuestPopupController;
   import com.bigpoint.seafight.view.popups.quest.regular.QuestPopupController;
   import com.bigpoint.seafight.view.popups.quest.regular.component.QuestPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.IStatelessCMD;
   import flash.utils.IDataOutput;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_20.class_33;
   import package_45.class_110;
   import package_51.class_974;
   import package_72.class_1080;
   import package_72.class_203;
   import package_9.class_91;
   import spark.components.TitleWindow;
   import spark.primitives.Rect;
   
   public final class CmdSL_OpenQuestWindow implements IStatelessCMD
   {
       
      
      public function CmdSL_OpenQuestWindow()
      {
         super();
      }
      
      public function execute(param1:Object = null) : void
      {
         var _loc2_:TitleWindow = class_33.name_12.method_41.method_45(class_110.const_769);
         if(_loc2_)
         {
            return;
         }
         var _loc3_:class_332 = new class_332(class_332.const_12);
         _loc3_.var_27 = QuestPopup;
         _loc3_.var_51 = QuestWindow;
         _loc3_.var_74 = BasicResizableWindowSkin;
         _loc3_.var_28 = QuestPopupController;
         _loc3_.var_72 = false;
         _loc3_.var_36 = AbstractQuestPopupController.WINDOW_WIDTH;
         _loc3_.var_31 = AbstractQuestPopupController.WINDOW_HEIGHT;
         _loc3_.var_67 = class_110.const_769;
         CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc3_));
      }
   }
}
