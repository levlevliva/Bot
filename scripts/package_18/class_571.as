package package_18
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_6.class_14;
   
   public final class class_571 implements class_14
   {
      
      public static const name_3:class_571 = new class_571();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var var_305:int = 0;
      
      public function class_571(param1:int = 0, param2:int = 0)
      {
         super();
         this.name_5 = param1;
         this.var_305 = param2;
      }
      
      public function method_16() : int
      {
         return 5996;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 2 % 16 | (65535 & this.var_646) << 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.var_305 = param1.readInt();
         this.var_305 = this.var_305 << 16 % 32 | this.var_305 >>> 32 - 16 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(5996);
         param1.writeShort(65535 & ((65535 & 0) << 2 % 16 | (65535 & 0) >>> 16 - 2 % 16));
         param1.writeShort(this.name_5);
         param1.writeInt(this.var_305 >>> 16 % 32 | this.var_305 << 32 - 16 % 32);
      }
   }
}
