package package_18
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_93;
   import package_6.class_14;
   
   public final class class_916 implements class_14
   {
      
      public static const name_3:class_916 = new class_916();
       
      
      private var var_646:int = 0;
      
      public var var_189:class_571;
      
      public var var_187:int = 0;
      
      public var var_20:Number = 0;
      
      public var var_86:int = 0;
      
      public function class_916(param1:Number = 0, param2:int = 0, param3:class_571 = null, param4:int = 0)
      {
         super();
         if(param3 == null)
         {
            this.var_189 = new class_571();
         }
         else
         {
            this.var_189 = param3;
         }
         this.var_187 = param4;
         this.var_20 = param1;
         this.var_86 = param2;
      }
      
      public function method_16() : int
      {
         return 21005;
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
         return 9;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_189 = class_571(class_93.method_26().method_25(param1.readShort()));
         this.var_189.method_15(param1);
         this.var_187 = param1.readByte();
         this.var_187 = 255 & ((255 & this.var_187) >>> 9 % 8 | (255 & this.var_187) << 8 - 9 % 8);
         this.var_187 = this.var_187 > 127?int(this.var_187 - 256):int(this.var_187);
         this.var_20 = param1.readDouble();
         this.var_86 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(21005);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         this.var_189.method_14(param1);
         param1.writeByte(255 & ((255 & this.var_187) << 9 % 8 | (255 & this.var_187) >>> 8 - 9 % 8));
         param1.writeDouble(this.var_20);
         param1.writeShort(this.var_86);
      }
   }
}
