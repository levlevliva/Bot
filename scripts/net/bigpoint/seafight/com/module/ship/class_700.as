package net.bigpoint.seafight.com.module.ship
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_6.class_14;
   import spark.components.Label;
   
   public final class class_700 implements class_14
   {
      
      public static const name_3:class_700 = new class_700();
       
      
      private var var_646:int = 0;
      
      public var var_402:int = 0;
      
      public var name_5:int = 0;
      
      public function class_700(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_402 = param2;
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return 2626;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 15 % 16 | (65535 & this.var_646) << 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_402 = param1.readShort();
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(2626);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         param1.writeShort(this.var_402);
         param1.writeShort(this.name_5);
      }
   }
}
