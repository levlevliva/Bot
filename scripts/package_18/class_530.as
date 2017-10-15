package package_18
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   
   public final class class_530 extends class_392
   {
      
      public static const name_3:class_530 = new class_530();
       
      
      private var var_646:int = 0;
      
      public var var_198:int = 0;
      
      public function class_530(param1:int = 0)
      {
         super();
         this.var_198 = param1;
      }
      
      override public function method_16() : int
      {
         return -10580;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 0;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 15 % 16 | (65535 & this.var_646) >>> 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_198 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-10580);
         param1.writeShort(65535 & ((65535 & 0) >>> 15 % 16 | (65535 & 0) << 16 - 15 % 16));
         super.method_14(param1);
         param1.writeShort(this.var_198);
      }
   }
}
