package net.bigpoint.seafight.com.module.guild
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.graphics.SolidColor;
   import package_17.class_54;
   import package_6.class_14;
   import package_72.class_203;
   import spark.primitives.Line;
   
   public final class class_817 implements class_14
   {
      
      public static const name_3:class_817 = new class_817();
       
      
      private var var_646:int = 0;
      
      public var var_1357:int = 0;
      
      public var var_1742:Boolean = false;
      
      public var var_10:int = 0;
      
      public var var_707:Number = 0;
      
      public var var_379:int = 0;
      
      public var var_1608:String = "";
      
      public var var_2065:int = 0;
      
      public function class_817(param1:int = 0, param2:int = 0, param3:Number = 0, param4:String = "", param5:int = 0, param6:int = 0, param7:Boolean = false)
      {
         super();
         this.var_1357 = param2;
         this.var_1742 = param7;
         this.var_10 = param5;
         this.var_707 = param3;
         this.var_379 = param6;
         this.var_1608 = param4;
         this.var_2065 = param1;
      }
      
      public function method_16() : int
      {
         return 18453;
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
         return 15;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1357 = param1.readShort();
         this.var_1742 = param1.readBoolean();
         this.var_10 = param1.readInt();
         this.var_10 = this.var_10 >>> 14 % 32 | this.var_10 << 32 - 14 % 32;
         this.var_707 = param1.readDouble();
         this.var_379 = param1.readShort();
         this.var_1608 = param1.readUTF();
         this.var_2065 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(18453);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         param1.writeShort(this.var_1357);
         param1.writeBoolean(this.var_1742);
         param1.writeInt(this.var_10 << 14 % 32 | this.var_10 >>> 32 - 14 % 32);
         param1.writeDouble(this.var_707);
         param1.writeShort(this.var_379);
         param1.writeUTF(this.var_1608);
         param1.writeShort(this.var_2065);
      }
   }
}
