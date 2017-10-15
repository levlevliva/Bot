package net.bigpoint.seafight.com.module.ship
{
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_131.class_573;
   import package_41.class_84;
   import package_6.class_14;
   import package_9.class_91;
   import spark.components.Label;
   import spark.layouts.VerticalLayout;
   
   public final class class_531 implements class_14
   {
      
      public static const name_3:class_531 = new class_531();
       
      
      private var var_646:int = 0;
      
      public var name_4:class_84;
      
      public var var_52:class_84;
      
      public var var_604:int = 0;
      
      public function class_531(param1:class_84 = null, param2:class_84 = null, param3:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         if(param2 == null)
         {
            this.var_52 = new class_84();
         }
         else
         {
            this.var_52 = param2;
         }
         this.var_604 = param3;
      }
      
      public function method_16() : int
      {
         return 19621;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 3 % 16 | (65535 & this.name_4.var_6) << 16 - 3 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.var_52 = new class_84();
         this.var_52.var_6 = param1.readShort();
         this.var_52.var_6 = 65535 & ((65535 & this.var_52.var_6) >>> 3 % 16 | (65535 & this.var_52.var_6) << 16 - 3 % 16);
         this.var_52.var_6 = this.var_52.var_6 > 32767?int(this.var_52.var_6 - 65536):int(this.var_52.var_6);
         this.var_52.name_4 = param1.readDouble();
         this.var_604 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(19621);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 3 % 16 | (65535 & this.name_4.var_6) >>> 16 - 3 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeShort(65535 & ((65535 & this.var_52.var_6) << 3 % 16 | (65535 & this.var_52.var_6) >>> 16 - 3 % 16));
         param1.writeDouble(this.var_52.name_4);
         param1.writeShort(this.var_604);
      }
   }
}
