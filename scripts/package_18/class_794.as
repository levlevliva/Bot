package package_18
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_6.class_14;
   
   public final class class_794 implements class_14
   {
      
      public static const name_3:class_794 = new class_794();
       
      
      private var var_646:int = 0;
      
      public function class_794()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -9689;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 16 % 16 | (65535 & this.var_646) << 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-9689);
         param1.writeShort(65535 & ((65535 & 0) << 16 % 16 | (65535 & 0) >>> 16 - 16 % 16));
      }
   }
}
