package com.bigpoint.seafight.view.common.components
{
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_47;
   import package_23.class_42;
   import package_28.class_56;
   import package_48.class_1534;
   import package_5.class_984;
   import package_72.class_203;
   import spark.components.DataGroup;
   import spark.components.HGroup;
   
   public final class ShipSelectionWindow extends MinimizeLockWindow
   {
       
      
      public function ShipSelectionWindow()
      {
         super();
         this.minWidth = 200;
         this.minHeight = 120;
      }
      
      override protected function onCreationComplete(param1:Event) : void
      {
         titleDisplay.text = class_47.method_22.method_20("favorites");
      }
   }
}
