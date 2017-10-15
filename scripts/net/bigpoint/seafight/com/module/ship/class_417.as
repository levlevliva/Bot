package net.bigpoint.seafight.com.module.ship
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_6.class_14;
   import package_9.class_91;
   
   public final class class_417 implements class_14
   {
      
      public static const name_3:class_417 = new class_417();
       
      
      private var var_646:int = 0;
      
      public var name_14:int = 0;
      
      public var var_150:Vector.<class_91>;
      
      public var name_20:class_89;
      
      public var var_92:String = "";
      
      public var var_34:int = 0;
      
      public var name_6:class_91;
      
      public var var_60:int = 0;
      
      public var name_4:class_84;
      
      public var name_13:String = "";
      
      public var var_26:int = 0;
      
      public var var_169:Vector.<int>;
      
      public function class_417(param1:class_84 = null, param2:class_89 = null, param3:int = 0, param4:int = 0, param5:class_91 = null, param6:Vector.<class_91> = null, param7:String = "", param8:String = "", param9:int = 0, param10:int = 0, param11:Vector.<int> = null)
      {
         super();
         this.name_14 = param3;
         if(param6 == null)
         {
            this.var_150 = new Vector.<class_91>();
         }
         else
         {
            this.var_150 = param6;
         }
         if(param2 == null)
         {
            this.name_20 = new class_89();
         }
         else
         {
            this.name_20 = param2;
         }
         this.var_92 = param8;
         this.var_34 = param4;
         if(param5 == null)
         {
            this.name_6 = new class_91();
         }
         else
         {
            this.name_6 = param5;
         }
         this.var_60 = param9;
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         this.name_13 = param7;
         this.var_26 = param10;
         if(param11 == null)
         {
            this.var_169 = new Vector.<int>();
         }
         else
         {
            this.var_169 = param11;
         }
      }
      
      public function method_16() : int
      {
         return -21702;
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
         return 17;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_91 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 13 % 16 | (65535 & this.var_646) << 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_14 = param1.readShort();
         this.name_14 = 65535 & ((65535 & this.name_14) >>> 15 % 16 | (65535 & this.name_14) << 16 - 15 % 16);
         this.name_14 = this.name_14 > 32767?int(this.name_14 - 65536):int(this.name_14);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_150.length > 0)
         {
            this.var_150.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_91(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_150.push(_loc4_);
            _loc2_++;
         }
         this.name_20 = class_89(class_93.method_26().method_25(param1.readShort()));
         this.name_20.method_15(param1);
         this.var_92 = param1.readUTF();
         this.var_34 = param1.readByte();
         this.var_34 = 255 & ((255 & this.var_34) >>> 9 % 8 | (255 & this.var_34) << 8 - 9 % 8);
         this.var_34 = this.var_34 > 127?int(this.var_34 - 256):int(this.var_34);
         this.name_6 = new class_91();
         this.name_6.var_8 = param1.readShort();
         this.name_6.var_8 = 65535 & ((65535 & this.name_6.var_8) << 14 % 16 | (65535 & this.name_6.var_8) >>> 16 - 14 % 16);
         this.name_6.var_8 = this.name_6.var_8 > 32767?int(this.name_6.var_8 - 65536):int(this.name_6.var_8);
         this.name_6.var_9 = param1.readShort();
         this.name_6.var_9 = 65535 & ((65535 & this.name_6.var_9) << 10 % 16 | (65535 & this.name_6.var_9) >>> 16 - 10 % 16);
         this.name_6.var_9 = this.name_6.var_9 > 32767?int(this.name_6.var_9 - 65536):int(this.name_6.var_9);
         this.var_60 = param1.readByte();
         this.var_60 = 255 & ((255 & this.var_60) << 10 % 8 | (255 & this.var_60) >>> 8 - 10 % 8);
         this.var_60 = this.var_60 > 127?int(this.var_60 - 256):int(this.var_60);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 12 % 16 | (65535 & this.name_4.var_6) << 16 - 12 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.name_13 = param1.readUTF();
         this.var_26 = param1.readByte();
         this.var_26 = 255 & ((255 & this.var_26) >>> 14 % 8 | (255 & this.var_26) << 8 - 14 % 8);
         this.var_26 = this.var_26 > 127?int(this.var_26 - 256):int(this.var_26);
         while(this.var_169.length > 0)
         {
            this.var_169.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.var_169.push(param1.readShort());
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_91 = null;
         var _loc3_:int = 0;
         param1.writeShort(-21702);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
         param1.writeShort(65535 & ((65535 & this.name_14) << 15 % 16 | (65535 & this.name_14) >>> 16 - 15 % 16));
         param1.writeShort(this.var_150.length);
         for each(_loc2_ in this.var_150)
         {
            _loc2_.method_14(param1);
         }
         this.name_20.method_14(param1);
         param1.writeUTF(this.var_92);
         param1.writeByte(255 & ((255 & this.var_34) << 9 % 8 | (255 & this.var_34) >>> 8 - 9 % 8));
         param1.writeShort(65535 & ((65535 & this.name_6.var_8) >>> 14 % 16 | (65535 & this.name_6.var_8) << 16 - 14 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_9) >>> 10 % 16 | (65535 & this.name_6.var_9) << 16 - 10 % 16));
         param1.writeByte(255 & ((255 & this.var_60) >>> 10 % 8 | (255 & this.var_60) << 8 - 10 % 8));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 12 % 16 | (65535 & this.name_4.var_6) >>> 16 - 12 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeUTF(this.name_13);
         param1.writeByte(255 & ((255 & this.var_26) << 14 % 8 | (255 & this.var_26) >>> 8 - 14 % 8));
         param1.writeByte(this.var_169.length);
         for each(_loc3_ in this.var_169)
         {
            param1.writeShort(_loc3_);
         }
      }
   }
}
