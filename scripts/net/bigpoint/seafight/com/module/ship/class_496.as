package net.bigpoint.seafight.com.module.ship
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.events.FlexEvent;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   
   public final class class_496 implements class_14
   {
      
      public static const name_3:class_496 = new class_496();
       
      
      private var var_646:int = 0;
      
      public var name_4:class_84;
      
      public var var_326:int = 0;
      
      public var name_18:Vector.<class_874>;
      
      public function class_496(param1:int = 0, param2:class_84 = null, param3:Vector.<class_874> = null)
      {
         super();
         if(param2 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param2;
         }
         this.var_326 = param1;
         if(param3 == null)
         {
            this.name_18 = new Vector.<class_874>();
         }
         else
         {
            this.name_18 = param3;
         }
      }
      
      public function method_16() : int
      {
         return -794;
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
         var _loc4_:class_874 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) << 9 % 16 | (65535 & this.name_4.var_6) >>> 16 - 9 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.var_326 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_18.length > 0)
         {
            this.name_18.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_874(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_18.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_874 = null;
         param1.writeShort(-794);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) >>> 9 % 16 | (65535 & this.name_4.var_6) << 16 - 9 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeShort(this.var_326);
         param1.writeByte(this.name_18.length);
         for each(_loc2_ in this.name_18)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
