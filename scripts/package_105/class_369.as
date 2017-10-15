package package_105
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_84;
   import package_6.class_14;
   
   public final class class_369 implements class_14
   {
      
      public static const name_3:class_369 = new class_369();
       
      
      private var var_646:int = 0;
      
      public var name_4:class_84;
      
      public var var_1628:Boolean = false;
      
      public var var_803:int = 0;
      
      public var var_133:int = 0;
      
      public function class_369(param1:class_84 = null, param2:int = 0, param3:Boolean = false, param4:int = 0)
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
         this.var_1628 = param3;
         this.var_803 = param4;
         this.var_133 = param2;
      }
      
      public function method_16() : int
      {
         return 1918;
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
         return 6;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 11 % 16 | (65535 & this.name_4.var_6) << 16 - 11 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.var_1628 = param1.readBoolean();
         this.var_803 = param1.readInt();
         this.var_803 = this.var_803 >>> 6 % 32 | this.var_803 << 32 - 6 % 32;
         this.var_133 = param1.readByte();
         this.var_133 = 255 & ((255 & this.var_133) << 9 % 8 | (255 & this.var_133) >>> 8 - 9 % 8);
         this.var_133 = this.var_133 > 127?int(this.var_133 - 256):int(this.var_133);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(1918);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 11 % 16 | (65535 & this.name_4.var_6) >>> 16 - 11 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeBoolean(this.var_1628);
         param1.writeInt(this.var_803 << 6 % 32 | this.var_803 >>> 32 - 6 % 32);
         param1.writeByte(255 & ((255 & this.var_133) >>> 9 % 8 | (255 & this.var_133) << 8 - 9 % 8));
      }
   }
}
