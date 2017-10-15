package package_154
{
   import flash.events.KeyboardEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_14.class_286;
   import package_41.class_93;
   import package_5.class_12;
   import package_5.class_22;
   import package_51.class_148;
   import spark.primitives.BitmapImage;
   
   public final class class_875 extends class_632
   {
      
      public static const name_3:class_875 = new class_875();
       
      
      private var var_646:int = 0;
      
      public var var_81:int = 0;
      
      public var var_227:int = 0;
      
      public var var_1036:class_677;
      
      public function class_875(param1:int = 0, param2:int = 0, param3:class_677 = null)
      {
         super();
         this.var_81 = param2;
         this.var_227 = param1;
         if(param3 == null)
         {
            this.var_1036 = new class_677();
         }
         else
         {
            this.var_1036 = param3;
         }
      }
      
      override public function method_16() : int
      {
         return 26332;
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
         return 8;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_81 = param1.readInt();
         this.var_81 = this.var_81 >>> 10 % 32 | this.var_81 << 32 - 10 % 32;
         this.var_227 = param1.readInt();
         this.var_227 = this.var_227 >>> 14 % 32 | this.var_227 << 32 - 14 % 32;
         this.var_1036 = class_677(class_93.method_26().method_25(param1.readShort()));
         this.var_1036.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(26332);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         super.method_14(param1);
         param1.writeInt(this.var_81 << 10 % 32 | this.var_81 >>> 32 - 10 % 32);
         param1.writeInt(this.var_227 << 14 % 32 | this.var_227 >>> 32 - 14 % 32);
         this.var_1036.method_14(param1);
      }
   }
}
