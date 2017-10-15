package com.bigpoint.services.statelessCommands.commands
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.MinimizeLockWindow;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderCheckBoxRenderer;
   import com.bigpoint.seafight.view.popups.currencypopup.CurrencyWindowController;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyPopup;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.IStatelessCMD;
   import flash.display.Sprite;
   import flash.text.StyleSheet;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_20.class_33;
   import package_42.class_1034;
   import package_45.class_110;
   import package_51.class_974;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.TitleWindow;
   
   public final class CmdSL_OpenCurrencyWindow implements IStatelessCMD
   {
       
      
      public function CmdSL_OpenCurrencyWindow()
      {
         super();
      }
      
      public function execute(param1:Object = null) : void
      {
         var _loc2_:TitleWindow = class_33.name_12.method_41.method_45(class_110.const_1241);
         if(_loc2_)
         {
            return;
         }
         var _loc3_:class_332 = new class_332(class_332.const_12);
         _loc3_.var_27 = CurrencyPopup;
         _loc3_.var_51 = MinimizeLockWindow;
         _loc3_.var_74 = SimpleThinResizableWindowSkin;
         _loc3_.var_28 = CurrencyWindowController;
         _loc3_.var_72 = false;
         _loc3_.var_36 = 213;
         _loc3_.var_31 = CurrencyWindowController.MINIMIZED_HEIGHT;
         _loc3_.var_67 = class_110.const_1241;
         CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc3_));
      }
   }
}
