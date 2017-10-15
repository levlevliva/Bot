package package_136
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_6.class_14;
   
   public final class class_926 implements class_14
   {
      
      public static const name_3:class_926 = new class_926();
       
      
      private var var_646:int = 0;
      
      public var name_54:int = 0;
      
      public var name_51:int = 0;
      
      public var var_261:int = 0;
      
      public var var_510:int = 0;
      
      public var var_71:int = 0;
      
      public function class_926(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:int = 0)
      {
         super();
         this.name_54 = param5;
         this.name_51 = param4;
         this.var_261 = param1;
         this.var_510 = param3;
         this.var_71 = param2;
      }
      
      public function method_16() : int
      {
         return 20356;
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
         return 12;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_54 = param1.readByte();
         this.name_54 = 255 & ((255 & this.name_54) >>> 9 % 8 | (255 & this.name_54) << 8 - 9 % 8);
         this.name_54 = this.name_54 > 127?int(this.name_54 - 256):int(this.name_54);
         this.name_51 = param1.readByte();
         this.name_51 = 255 & ((255 & this.name_51) >>> 12 % 8 | (255 & this.name_51) << 8 - 12 % 8);
         this.name_51 = this.name_51 > 127?int(this.name_51 - 256):int(this.name_51);
         this.var_261 = param1.readShort();
         this.var_261 = 65535 & ((65535 & this.var_261) >>> 2 % 16 | (65535 & this.var_261) << 16 - 2 % 16);
         this.var_261 = this.var_261 > 32767?int(this.var_261 - 65536):int(this.var_261);
         this.var_510 = param1.readInt();
         this.var_510 = this.var_510 << 12 % 32 | this.var_510 >>> 32 - 12 % 32;
         this.var_71 = param1.readInt();
         this.var_71 = this.var_71 >>> 3 % 32 | this.var_71 << 32 - 3 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(20356);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         param1.writeByte(255 & ((255 & this.name_54) << 9 % 8 | (255 & this.name_54) >>> 8 - 9 % 8));
         param1.writeByte(255 & ((255 & this.name_51) << 12 % 8 | (255 & this.name_51) >>> 8 - 12 % 8));
         param1.writeShort(65535 & ((65535 & this.var_261) << 2 % 16 | (65535 & this.var_261) >>> 16 - 2 % 16));
         param1.writeInt(this.var_510 >>> 12 % 32 | this.var_510 << 32 - 12 % 32);
         param1.writeInt(this.var_71 << 3 % 32 | this.var_71 >>> 32 - 3 % 32);
      }
   }
}
