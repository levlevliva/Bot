package package_37
{
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.system.System;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_47;
   import package_14.class_49;
   import package_34.class_1499;
   import package_5.class_22;
   import package_54.class_158;
   import package_6.class_14;
   import package_9.class_91;
   import package_98.class_777;
   import spark.components.Group;
   
   public final class class_75 implements class_14
   {
      
      public static const name_3:class_75 = new class_75();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var name_6:class_91;
      
      public function class_75(param1:class_91 = null, param2:int = 0)
      {
         super();
         this.name_5 = param2;
         if(param1 == null)
         {
            this.name_6 = new class_91();
         }
         else
         {
            this.name_6 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -20148;
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
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.name_6 = new class_91();
         this.name_6.var_8 = param1.readShort();
         this.name_6.var_8 = 65535 & ((65535 & this.name_6.var_8) >>> 12 % 16 | (65535 & this.name_6.var_8) << 16 - 12 % 16);
         this.name_6.var_8 = this.name_6.var_8 > 32767?int(this.name_6.var_8 - 65536):int(this.name_6.var_8);
         this.name_6.var_9 = param1.readShort();
         this.name_6.var_9 = 65535 & ((65535 & this.name_6.var_9) >>> 11 % 16 | (65535 & this.name_6.var_9) << 16 - 11 % 16);
         this.name_6.var_9 = this.name_6.var_9 > 32767?int(this.name_6.var_9 - 65536):int(this.name_6.var_9);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-20148);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         param1.writeShort(this.name_5);
         param1.writeShort(65535 & ((65535 & this.name_6.var_8) << 12 % 16 | (65535 & this.name_6.var_8) >>> 16 - 12 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_9) << 11 % 16 | (65535 & this.name_6.var_9) >>> 16 - 11 % 16));
      }
   }
}
