package net.bigpoint.seafight.com.module.ship
{
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_6.class_14;
   import spark.components.VGroup;
   
   public final class class_431 implements class_14
   {
      
      public static const name_3:class_431 = new class_431();
       
      
      private var var_646:int = 0;
      
      public var name_11:int = 0;
      
      public var var_16:int = 0;
      
      public function class_431(param1:int = 0, param2:int = 0)
      {
         super();
         this.name_11 = param1;
         this.var_16 = param2;
      }
      
      public function method_16() : int
      {
         return 32304;
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
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 13 % 16 | (65535 & this.var_646) << 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_11 = param1.readShort();
         this.name_11 = 65535 & ((65535 & this.name_11) >>> 1 % 16 | (65535 & this.name_11) << 16 - 1 % 16);
         this.name_11 = this.name_11 > 32767?int(this.name_11 - 65536):int(this.name_11);
         this.var_16 = param1.readShort();
         this.var_16 = 65535 & ((65535 & this.var_16) >>> 14 % 16 | (65535 & this.var_16) << 16 - 14 % 16);
         this.var_16 = this.var_16 > 32767?int(this.var_16 - 65536):int(this.var_16);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(32304);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
         param1.writeShort(65535 & ((65535 & this.name_11) << 1 % 16 | (65535 & this.name_11) >>> 16 - 1 % 16));
         param1.writeShort(65535 & ((65535 & this.var_16) << 14 % 16 | (65535 & this.var_16) >>> 16 - 14 % 16));
      }
   }
}
