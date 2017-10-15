package package_163
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.logging.Log;
   import package_100.class_355;
   import package_14.class_47;
   import package_14.class_88;
   import package_16.class_28;
   import package_18.class_916;
   import package_220.class_1601;
   import package_29.class_57;
   import package_50.class_1506;
   import package_6.class_14;
   import package_84.class_270;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   
   public final class class_873 implements class_14
   {
      
      public static const name_3:class_873 = new class_873();
       
      
      private var var_646:int = 0;
      
      public function class_873()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 25021;
      }
      
      public function method_17() : int
      {
         return 0;
      }
      
      public function method_18() : int
      {
         return this.var_646;
      }
      
      public function method_19() : int
      {
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(25021);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
      }
   }
}
