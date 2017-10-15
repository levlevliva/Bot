package net.bigpoint.seafight.com.module.ship
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_84;
   import package_6.class_14;
   
   public final class class_791 implements class_14
   {
      
      public static const name_3:class_791 = new class_791();
       
      
      private var var_646:int = 0;
      
      public var name_22:int = 0;
      
      public var name_4:class_84;
      
      public function class_791(param1:class_84 = null, param2:int = 0)
      {
         super();
         this.name_22 = param2;
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 1908;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_22 = param1.readShort();
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) << 1 % 16 | (65535 & this.name_4.var_6) >>> 16 - 1 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(1908);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         param1.writeShort(this.name_22);
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) >>> 1 % 16 | (65535 & this.name_4.var_6) << 16 - 1 % 16));
         param1.writeDouble(this.name_4.name_4);
      }
   }
}
