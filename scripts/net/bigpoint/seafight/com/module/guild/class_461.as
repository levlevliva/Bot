package net.bigpoint.seafight.com.module.guild
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.controls.Spacer;
   import mx.graphics.SolidColor;
   import package_41.class_89;
   import package_6.class_14;
   import package_9.class_91;
   import spark.primitives.Rect;
   
   public final class class_461 implements class_14
   {
      
      public static const name_3:class_461 = new class_461();
       
      
      private var var_646:int = 0;
      
      public var name_6:class_91;
      
      public var name_20:class_89;
      
      public function class_461(param1:class_89 = null, param2:class_91 = null)
      {
         super();
         if(param2 == null)
         {
            this.name_6 = new class_91();
         }
         else
         {
            this.name_6 = param2;
         }
         if(param1 == null)
         {
            this.name_20 = new class_89();
         }
         else
         {
            this.name_20 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 10513;
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
         this.name_6 = new class_91();
         this.name_6.var_8 = param1.readShort();
         this.name_6.var_8 = 65535 & ((65535 & this.name_6.var_8) >>> 6 % 16 | (65535 & this.name_6.var_8) << 16 - 6 % 16);
         this.name_6.var_8 = this.name_6.var_8 > 32767?int(this.name_6.var_8 - 65536):int(this.name_6.var_8);
         this.name_6.var_9 = param1.readShort();
         this.name_6.var_9 = 65535 & ((65535 & this.name_6.var_9) >>> 16 % 16 | (65535 & this.name_6.var_9) << 16 - 16 % 16);
         this.name_6.var_9 = this.name_6.var_9 > 32767?int(this.name_6.var_9 - 65536):int(this.name_6.var_9);
         this.name_20 = new class_89();
         this.name_20.var_6 = param1.readShort();
         this.name_20.var_6 = 65535 & ((65535 & this.name_20.var_6) >>> 15 % 16 | (65535 & this.name_20.var_6) << 16 - 15 % 16);
         this.name_20.var_6 = this.name_20.var_6 > 32767?int(this.name_20.var_6 - 65536):int(this.name_20.var_6);
         this.name_20.name_20 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(10513);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_8) << 6 % 16 | (65535 & this.name_6.var_8) >>> 16 - 6 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_9) << 16 % 16 | (65535 & this.name_6.var_9) >>> 16 - 16 % 16));
         param1.writeShort(65535 & ((65535 & this.name_20.var_6) << 15 % 16 | (65535 & this.name_20.var_6) >>> 16 - 15 % 16));
         param1.writeDouble(this.name_20.name_20);
      }
   }
}
