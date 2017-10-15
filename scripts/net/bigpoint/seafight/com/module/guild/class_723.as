package net.bigpoint.seafight.com.module.guild
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_47;
   import package_51.class_148;
   import spark.primitives.Rect;
   
   public final class class_723 extends class_67
   {
      
      public static const name_3:class_723 = new class_723();
       
      
      private var var_646:int = 0;
      
      public var name_28:Boolean = false;
      
      public var var_1002:int = 0;
      
      public function class_723(param1:int = 0, param2:Boolean = false)
      {
         super();
         this.name_28 = param2;
         this.var_1002 = param1;
      }
      
      override public function method_16() : int
      {
         return -22296;
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
         return 1;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.name_28 = param1.readBoolean();
         this.var_1002 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-22296);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         super.method_14(param1);
         param1.writeBoolean(this.name_28);
         param1.writeShort(this.var_1002);
      }
   }
}
