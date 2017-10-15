package net.bigpoint.seafight.com.module.ship
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_47;
   import package_6.class_14;
   
   public final class class_90 implements class_14
   {
      
      public static const name_3:class_90 = new class_90();
       
      
      private var var_646:int = 0;
      
      public var var_146:int = 0;
      
      public var var_107:int = 0;
      
      public function class_90(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_146 = param1;
         this.var_107 = param2;
      }
      
      public function method_16() : int
      {
         return 12016;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_146 = param1.readInt();
         this.var_146 = this.var_146 << 14 % 32 | this.var_146 >>> 32 - 14 % 32;
         this.var_107 = param1.readInt();
         this.var_107 = this.var_107 >>> 5 % 32 | this.var_107 << 32 - 5 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(12016);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         param1.writeInt(this.var_146 >>> 14 % 32 | this.var_146 << 32 - 14 % 32);
         param1.writeInt(this.var_107 << 5 % 32 | this.var_107 >>> 32 - 5 % 32);
      }
   }
}
