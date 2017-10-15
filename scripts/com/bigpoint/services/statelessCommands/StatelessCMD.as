package com.bigpoint.services.statelessCommands
{
   import com.bigpoint.seafight.view.common.skins.hslider.HSliderThumbSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_14.class_49;
   import spark.components.Button;
   import spark.components.HGroup;
   
   public final class StatelessCMD
   {
       
      
      public function StatelessCMD()
      {
         super();
      }
      
      public static function invoke(param1:Class, param2:Object = null) : void
      {
         var _loc3_:IStatelessCMD = new param1() as IStatelessCMD;
         _loc3_.execute(param2);
      }
   }
}
