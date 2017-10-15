package net.bigpoint.seafight.com.module.guild
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.graphics.SolidColorStroke;
   import package_6.class_14;
   
   public final class class_651 implements class_14
   {
      
      public static const name_3:class_651 = new class_651();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var name_13:String = "";
      
      public var var_1782:Boolean = false;
      
      public function class_651(param1:String = "", param2:int = 0, param3:Boolean = false)
      {
         super();
         this.name_5 = param2;
         this.name_13 = param1;
         this.var_1782 = param3;
      }
      
      public function method_16() : int
      {
         return -28726;
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
         return 3;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 14 % 16 | (65535 & this.var_646) << 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.name_13 = param1.readUTF();
         this.var_1782 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-28726);
         param1.writeShort(65535 & ((65535 & 0) << 14 % 16 | (65535 & 0) >>> 16 - 14 % 16));
         param1.writeShort(this.name_5);
         param1.writeUTF(this.name_13);
         param1.writeBoolean(this.var_1782);
      }
   }
}
