package net.bigpoint.seafight.com.module.guild
{
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_29.class_57;
   import package_5.class_1012;
   import package_5.class_22;
   import package_6.class_14;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_749 implements class_14
   {
      
      public static const name_3:class_749 = new class_749();
       
      
      private var var_646:int = 0;
      
      public var var_165:int = 0;
      
      public var var_532:int = 0;
      
      public var var_116:int = 0;
      
      public var var_694:Boolean = false;
      
      public var name_6:int = 0;
      
      public function class_749(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:Boolean = false)
      {
         super();
         this.var_165 = param3;
         this.var_532 = param4;
         this.var_116 = param2;
         this.var_694 = param5;
         this.name_6 = param1;
      }
      
      public function method_16() : int
      {
         return 23791;
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
         return 11;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_165 = param1.readInt();
         this.var_165 = this.var_165 >>> 16 % 32 | this.var_165 << 32 - 16 % 32;
         this.var_532 = param1.readByte();
         this.var_532 = 255 & ((255 & this.var_532) << 7 % 8 | (255 & this.var_532) >>> 8 - 7 % 8);
         this.var_532 = this.var_532 > 127?int(this.var_532 - 256):int(this.var_532);
         this.var_116 = param1.readInt();
         this.var_116 = this.var_116 >>> 13 % 32 | this.var_116 << 32 - 13 % 32;
         this.var_694 = param1.readBoolean();
         this.name_6 = param1.readByte();
         this.name_6 = 255 & ((255 & this.name_6) << 12 % 8 | (255 & this.name_6) >>> 8 - 12 % 8);
         this.name_6 = this.name_6 > 127?int(this.name_6 - 256):int(this.name_6);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(23791);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         param1.writeInt(this.var_165 << 16 % 32 | this.var_165 >>> 32 - 16 % 32);
         param1.writeByte(255 & ((255 & this.var_532) >>> 7 % 8 | (255 & this.var_532) << 8 - 7 % 8));
         param1.writeInt(this.var_116 << 13 % 32 | this.var_116 >>> 32 - 13 % 32);
         param1.writeBoolean(this.var_694);
         param1.writeByte(255 & ((255 & this.name_6) >>> 12 % 8 | (255 & this.name_6) << 8 - 12 % 8));
      }
   }
}
