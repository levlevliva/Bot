package net.bigpoint.seafight.com.module.ship
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.controls.Spacer;
   import package_6.class_14;
   
   public final class class_874 implements class_14
   {
      
      public static const name_3:class_874 = new class_874();
       
      
      private var var_646:int = 0;
      
      public var var_402:int = 0;
      
      public var name_19:Number = 0;
      
      public function class_874(param1:int = 0, param2:Number = 0)
      {
         super();
         this.var_402 = param1;
         this.name_19 = param2;
      }
      
      public function method_16() : int
      {
         return 1122;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 13 % 16 | (65535 & this.var_646) << 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_402 = param1.readShort();
         this.name_19 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(1122);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
         param1.writeShort(this.var_402);
         param1.writeDouble(this.name_19);
      }
   }
}
