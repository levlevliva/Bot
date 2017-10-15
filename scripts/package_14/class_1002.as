package package_14
{
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import spark.components.Label;
   
   public final class class_1002 extends Event
   {
      
      public static const const_925:String = "UPDATE_ATTACK_BTN_EVENT";
       
      
      public var var_1960:Boolean;
      
      public var var_2193:Boolean;
      
      public function class_1002(param1:Boolean, param2:Boolean)
      {
         this.var_1960 = param1;
         this.var_2193 = param2;
         super(const_925);
      }
   }
}
