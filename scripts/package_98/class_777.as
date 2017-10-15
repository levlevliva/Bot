package package_98
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_6.class_14;
   import spark.components.Label;
   
   public final class class_777 implements class_14
   {
      
      public static const name_3:class_777 = new class_777();
       
      
      private var var_646:int = 0;
      
      public var var_687:int = 0;
      
      public var var_540:int = 0;
      
      public var var_1197:Boolean = false;
      
      public function class_777(param1:int = 0, param2:int = 0, param3:Boolean = false)
      {
         super();
         this.var_687 = param2;
         this.var_540 = param1;
         this.var_1197 = param3;
      }
      
      public function method_16() : int
      {
         return 2819;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_687 = param1.readInt();
         this.var_687 = this.var_687 >>> 10 % 32 | this.var_687 << 32 - 10 % 32;
         this.var_540 = param1.readInt();
         this.var_540 = this.var_540 >>> 14 % 32 | this.var_540 << 32 - 14 % 32;
         this.var_1197 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(2819);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
         param1.writeInt(this.var_687 << 10 % 32 | this.var_687 >>> 32 - 10 % 32);
         param1.writeInt(this.var_540 << 14 % 32 | this.var_540 >>> 32 - 14 % 32);
         param1.writeBoolean(this.var_1197);
      }
   }
}
