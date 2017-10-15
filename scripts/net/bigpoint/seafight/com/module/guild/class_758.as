package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_84;
   import package_6.class_14;
   
   public final class class_758 implements class_14
   {
      
      public static const name_3:class_758 = new class_758();
       
      
      private var var_646:int = 0;
      
      public var var_654:Boolean = false;
      
      public var name_6:int = 0;
      
      public var var_310:class_84;
      
      public function class_758(param1:class_84 = null, param2:int = 0, param3:Boolean = false)
      {
         super();
         this.var_654 = param3;
         this.name_6 = param2;
         if(param1 == null)
         {
            this.var_310 = new class_84();
         }
         else
         {
            this.var_310 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -5668;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_654 = param1.readBoolean();
         this.name_6 = param1.readByte();
         this.name_6 = 255 & ((255 & this.name_6) << 14 % 8 | (255 & this.name_6) >>> 8 - 14 % 8);
         this.name_6 = this.name_6 > 127?int(this.name_6 - 256):int(this.name_6);
         this.var_310 = new class_84();
         this.var_310.var_6 = param1.readShort();
         this.var_310.var_6 = 65535 & ((65535 & this.var_310.var_6) << 4 % 16 | (65535 & this.var_310.var_6) >>> 16 - 4 % 16);
         this.var_310.var_6 = this.var_310.var_6 > 32767?int(this.var_310.var_6 - 65536):int(this.var_310.var_6);
         this.var_310.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-5668);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeBoolean(this.var_654);
         param1.writeByte(255 & ((255 & this.name_6) >>> 14 % 8 | (255 & this.name_6) << 8 - 14 % 8));
         param1.writeShort(65535 & ((65535 & this.var_310.var_6) >>> 4 % 16 | (65535 & this.var_310.var_6) << 16 - 4 % 16));
         param1.writeDouble(this.var_310.name_4);
      }
   }
}
