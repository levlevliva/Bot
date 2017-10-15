package package_154
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_93;
   import package_6.class_14;
   
   public final class class_619 implements class_14
   {
      
      public static const name_3:class_619 = new class_619();
       
      
      private var var_646:int = 0;
      
      public var var_901:int = 0;
      
      public var var_1028:class_632;
      
      public function class_619(param1:int = 0, param2:class_632 = null)
      {
         super();
         this.var_901 = param1;
         if(param2 == null)
         {
            this.var_1028 = new class_632();
         }
         else
         {
            this.var_1028 = param2;
         }
      }
      
      public function method_16() : int
      {
         return 17566;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_901 = param1.readShort();
         this.var_1028 = class_632(class_93.method_26().method_25(param1.readShort()));
         this.var_1028.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(17566);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         param1.writeShort(this.var_901);
         this.var_1028.method_14(param1);
      }
   }
}
