package package_105
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_84;
   import package_6.class_14;
   
   public final class class_529 implements class_14
   {
      
      public static const name_3:class_529 = new class_529();
       
      
      private var var_646:int = 0;
      
      public var var_133:int = 0;
      
      public var name_4:class_84;
      
      public function class_529(param1:class_84 = null, param2:int = 0)
      {
         super();
         this.var_133 = param2;
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -16337;
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
         return 1;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_133 = param1.readByte();
         this.var_133 = 255 & ((255 & this.var_133) >>> 4 % 8 | (255 & this.var_133) << 8 - 4 % 8);
         this.var_133 = this.var_133 > 127?int(this.var_133 - 256):int(this.var_133);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) << 12 % 16 | (65535 & this.name_4.var_6) >>> 16 - 12 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-16337);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
         param1.writeByte(255 & ((255 & this.var_133) << 4 % 8 | (255 & this.var_133) >>> 8 - 4 % 8));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) >>> 12 % 16 | (65535 & this.name_4.var_6) << 16 - 12 % 16));
         param1.writeDouble(this.name_4.name_4);
      }
   }
}
