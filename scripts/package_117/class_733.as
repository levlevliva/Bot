package package_117
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_6.class_14;
   
   public final class class_733 implements class_14
   {
      
      public static const name_3:class_733 = new class_733();
       
      
      private var var_646:int = 0;
      
      public var var_10:int = 0;
      
      public var var_903:int = 0;
      
      public var name_15:int = 0;
      
      public function class_733(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_10 = param2;
         this.var_903 = param1;
         this.name_15 = param3;
      }
      
      public function method_16() : int
      {
         return -3491;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 15 % 16 | (65535 & this.var_646) << 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_10 = param1.readInt();
         this.var_10 = this.var_10 >>> 12 % 32 | this.var_10 << 32 - 12 % 32;
         this.var_903 = param1.readInt();
         this.var_903 = this.var_903 << 3 % 32 | this.var_903 >>> 32 - 3 % 32;
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 << 4 % 32 | this.name_15 >>> 32 - 4 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-3491);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         param1.writeInt(this.var_10 << 12 % 32 | this.var_10 >>> 32 - 12 % 32);
         param1.writeInt(this.var_903 >>> 3 % 32 | this.var_903 << 32 - 3 % 32);
         param1.writeInt(this.name_15 >>> 4 % 32 | this.name_15 << 32 - 4 % 32);
      }
   }
}
