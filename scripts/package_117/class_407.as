package package_117
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_6.class_14;
   import spark.components.DataGroup;
   
   public final class class_407 implements class_14
   {
      
      public static const name_3:class_407 = new class_407();
       
      
      private var var_646:int = 0;
      
      public var name_15:int = 0;
      
      public function class_407(param1:int = 0)
      {
         super();
         this.name_15 = param1;
      }
      
      public function method_16() : int
      {
         return 17742;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 << 2 % 32 | this.name_15 >>> 32 - 2 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(17742);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         param1.writeInt(this.name_15 >>> 2 % 32 | this.name_15 << 32 - 2 % 32);
      }
   }
}
