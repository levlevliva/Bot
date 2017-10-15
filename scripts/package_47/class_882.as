package package_47
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public final class class_882 implements class_14
   {
      
      public static const name_3:class_882 = new class_882();
       
      
      private var var_646:int = 0;
      
      public var name_7:int = 0;
      
      public var var_1160:class_129;
      
      public function class_882(param1:int = 0, param2:class_129 = null)
      {
         super();
         this.name_7 = param1;
         if(param2 == null)
         {
            this.var_1160 = new class_129();
         }
         else
         {
            this.var_1160 = param2;
         }
      }
      
      public function method_16() : int
      {
         return 6625;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_7 = param1.readShort();
         this.name_7 = 65535 & ((65535 & this.name_7) >>> 6 % 16 | (65535 & this.name_7) << 16 - 6 % 16);
         this.name_7 = this.name_7 > 32767?int(this.name_7 - 65536):int(this.name_7);
         this.var_1160 = class_129(class_93.method_26().method_25(param1.readShort()));
         this.var_1160.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(6625);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
         param1.writeShort(65535 & ((65535 & this.name_7) << 6 % 16 | (65535 & this.name_7) >>> 16 - 6 % 16));
         this.var_1160.method_14(param1);
      }
   }
}
