package package_9
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import flash.display.BitmapData;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_126.class_1341;
   import package_14.class_47;
   import package_14.class_88;
   import package_5.class_1047;
   import package_6.class_14;
   import package_89.class_1378;
   import package_98.class_777;
   import spark.components.Label;
   
   public final class class_878 implements class_14
   {
      
      public static const name_3:class_878 = new class_878();
       
      
      private var var_646:int = 0;
      
      public function class_878()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -19761;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-19761);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
      }
   }
}
