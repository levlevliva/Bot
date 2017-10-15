package net.bigpoint.seafight.com.module.ship
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_6.class_14;
   
   public final class class_661 implements class_14
   {
      
      public static const name_3:class_661 = new class_661();
       
      
      private var var_646:int = 0;
      
      public var name_19:Number = 0;
      
      public var name_5:int = 0;
      
      public var var_109:int = 0;
      
      public function class_661(param1:int = 0, param2:int = 0, param3:Number = 0)
      {
         super();
         this.name_19 = param3;
         this.name_5 = param1;
         this.var_109 = param2;
      }
      
      public function method_16() : int
      {
         return -7641;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 7 % 16 | (65535 & this.var_646) >>> 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_19 = param1.readFloat();
         this.name_5 = param1.readShort();
         this.var_109 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-7641);
         param1.writeShort(65535 & ((65535 & 0) >>> 7 % 16 | (65535 & 0) << 16 - 7 % 16));
         param1.writeFloat(this.name_19);
         param1.writeShort(this.name_5);
         param1.writeShort(this.var_109);
      }
   }
}
