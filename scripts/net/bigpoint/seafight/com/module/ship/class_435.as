package net.bigpoint.seafight.com.module.ship
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_6.class_14;
   import spark.primitives.Graphic;
   
   public final class class_435 implements class_14
   {
      
      public static const name_3:class_435 = new class_435();
       
      
      private var var_646:int = 0;
      
      public var var_16:int = 0;
      
      public function class_435(param1:int = 0)
      {
         super();
         this.var_16 = param1;
      }
      
      public function method_16() : int
      {
         return -14482;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 2 % 16 | (65535 & this.var_646) << 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_16 = param1.readShort();
         this.var_16 = 65535 & ((65535 & this.var_16) << 3 % 16 | (65535 & this.var_16) >>> 16 - 3 % 16);
         this.var_16 = this.var_16 > 32767?int(this.var_16 - 65536):int(this.var_16);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-14482);
         param1.writeShort(65535 & ((65535 & 0) << 2 % 16 | (65535 & 0) >>> 16 - 2 % 16));
         param1.writeShort(65535 & ((65535 & this.var_16) >>> 3 % 16 | (65535 & this.var_16) << 16 - 3 % 16));
      }
   }
}
