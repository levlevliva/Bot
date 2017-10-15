package net.bigpoint.seafight.com.module.ship
{
   import com.bigpoint.seafight.tools.class_125;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_131.class_573;
   import package_14.class_47;
   import package_17.class_54;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import package_9.class_91;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   public final class class_544 implements class_14
   {
      
      public static const name_3:class_544 = new class_544();
      
      public static const const_681:int = 0;
      
      public static const const_758:int = 1;
      
      public static const const_1343:int = 2;
       
      
      private var var_646:int = 0;
      
      public var name_33:Vector.<class_573>;
      
      public var name_6:class_91;
      
      public var var_92:String = "";
      
      public var var_150:Vector.<class_91>;
      
      public var var_16:int = 0;
      
      public var var_117:class_84;
      
      public var var_34:int = 0;
      
      public var var_179:class_90;
      
      public var var_957:int = 0;
      
      public var var_499:int = 0;
      
      public var var_1687:int = 0;
      
      public var var_236:class_90;
      
      public var var_556:Boolean = false;
      
      public var var_1713:Boolean = false;
      
      public var var_198:int = 0;
      
      public var var_1497:Boolean = false;
      
      public var name_27:int = 0;
      
      public var name_14:int = 0;
      
      public var name_4:class_84;
      
      public var var_169:Vector.<int>;
      
      public var var_850:int = 0;
      
      public var var_58:int = 0;
      
      public function class_544(param1:class_84 = null, param2:int = 0, param3:int = 0, param4:int = 0, param5:class_91 = null, param6:Vector.<class_91> = null, param7:int = 0, param8:class_90 = null, param9:class_90 = null, param10:int = 0, param11:Boolean = false, param12:Boolean = false, param13:class_84 = null, param14:Boolean = false, param15:Vector.<int> = null, param16:int = 0, param17:int = 0, param18:int = 0, param19:Vector.<class_573> = null, param20:String = "", param21:int = 0, param22:int = 0)
      {
         super();
         if(param19 == null)
         {
            this.name_33 = new Vector.<class_573>();
         }
         else
         {
            this.name_33 = param19;
         }
         if(param5 == null)
         {
            this.name_6 = new class_91();
         }
         else
         {
            this.name_6 = param5;
         }
         this.var_92 = param20;
         if(param6 == null)
         {
            this.var_150 = new Vector.<class_91>();
         }
         else
         {
            this.var_150 = param6;
         }
         this.var_16 = param7;
         if(param13 == null)
         {
            this.var_117 = new class_84();
         }
         else
         {
            this.var_117 = param13;
         }
         this.var_34 = param3;
         if(param8 == null)
         {
            this.var_179 = new class_90();
         }
         else
         {
            this.var_179 = param8;
         }
         this.var_957 = param17;
         this.var_499 = param16;
         this.var_1687 = param22;
         if(param9 == null)
         {
            this.var_236 = new class_90();
         }
         else
         {
            this.var_236 = param9;
         }
         this.var_556 = param14;
         this.var_1713 = param11;
         this.var_198 = param4;
         this.var_1497 = param12;
         this.name_27 = param10;
         this.name_14 = param2;
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         if(param15 == null)
         {
            this.var_169 = new Vector.<int>();
         }
         else
         {
            this.var_169 = param15;
         }
         this.var_850 = param18;
         this.var_58 = param21;
      }
      
      public function method_16() : int
      {
         return -7087;
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
         return 25;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_573 = null;
         var _loc5_:class_91 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_33.length > 0)
         {
            this.name_33.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_573(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_33.push(_loc4_);
            _loc2_++;
         }
         this.name_6 = new class_91();
         this.name_6.var_8 = param1.readShort();
         this.name_6.var_8 = 65535 & ((65535 & this.name_6.var_8) << 12 % 16 | (65535 & this.name_6.var_8) >>> 16 - 12 % 16);
         this.name_6.var_8 = this.name_6.var_8 > 32767?int(this.name_6.var_8 - 65536):int(this.name_6.var_8);
         this.name_6.var_9 = param1.readShort();
         this.name_6.var_9 = 65535 & ((65535 & this.name_6.var_9) >>> 7 % 16 | (65535 & this.name_6.var_9) << 16 - 7 % 16);
         this.name_6.var_9 = this.name_6.var_9 > 32767?int(this.name_6.var_9 - 65536):int(this.name_6.var_9);
         this.var_92 = param1.readUTF();
         while(this.var_150.length > 0)
         {
            this.var_150.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_91(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_150.push(_loc5_);
            _loc2_++;
         }
         this.var_16 = param1.readShort();
         this.var_16 = 65535 & ((65535 & this.var_16) << 7 % 16 | (65535 & this.var_16) >>> 16 - 7 % 16);
         this.var_16 = this.var_16 > 32767?int(this.var_16 - 65536):int(this.var_16);
         this.var_117 = new class_84();
         this.var_117.var_6 = param1.readShort();
         this.var_117.var_6 = 65535 & ((65535 & this.var_117.var_6) >>> 13 % 16 | (65535 & this.var_117.var_6) << 16 - 13 % 16);
         this.var_117.var_6 = this.var_117.var_6 > 32767?int(this.var_117.var_6 - 65536):int(this.var_117.var_6);
         this.var_117.name_4 = param1.readDouble();
         this.var_34 = param1.readByte();
         this.var_34 = 255 & ((255 & this.var_34) >>> 5 % 8 | (255 & this.var_34) << 8 - 5 % 8);
         this.var_34 = this.var_34 > 127?int(this.var_34 - 256):int(this.var_34);
         this.var_179 = class_90(class_93.method_26().method_25(param1.readShort()));
         this.var_179.method_15(param1);
         this.var_957 = param1.readShort();
         this.var_499 = param1.readShort();
         this.var_499 = 65535 & ((65535 & this.var_499) << 1 % 16 | (65535 & this.var_499) >>> 16 - 1 % 16);
         this.var_499 = this.var_499 > 32767?int(this.var_499 - 65536):int(this.var_499);
         this.var_1687 = param1.readShort();
         this.var_236 = class_90(class_93.method_26().method_25(param1.readShort()));
         this.var_236.method_15(param1);
         this.var_556 = param1.readBoolean();
         this.var_1713 = param1.readBoolean();
         this.var_198 = param1.readShort();
         this.var_1497 = param1.readBoolean();
         this.name_27 = param1.readByte();
         this.name_27 = 255 & ((255 & this.name_27) << 10 % 8 | (255 & this.name_27) >>> 8 - 10 % 8);
         this.name_27 = this.name_27 > 127?int(this.name_27 - 256):int(this.name_27);
         this.name_14 = param1.readShort();
         this.name_14 = 65535 & ((65535 & this.name_14) >>> 8 % 16 | (65535 & this.name_14) << 16 - 8 % 16);
         this.name_14 = this.name_14 > 32767?int(this.name_14 - 65536):int(this.name_14);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 13 % 16 | (65535 & this.name_4.var_6) << 16 - 13 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
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
         this.var_850 = param1.readShort();
         this.var_58 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_573 = null;
         var _loc3_:class_91 = null;
         var _loc4_:int = 0;
         param1.writeShort(-7087);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         param1.writeByte(this.name_33.length);
         for each(_loc2_ in this.name_33)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(65535 & ((65535 & this.name_6.var_8) >>> 12 % 16 | (65535 & this.name_6.var_8) << 16 - 12 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_9) << 7 % 16 | (65535 & this.name_6.var_9) >>> 16 - 7 % 16));
         param1.writeUTF(this.var_92);
         param1.writeShort(this.var_150.length);
         for each(_loc3_ in this.var_150)
         {
            _loc3_.method_14(param1);
         }
         param1.writeShort(65535 & ((65535 & this.var_16) >>> 7 % 16 | (65535 & this.var_16) << 16 - 7 % 16));
         param1.writeShort(65535 & ((65535 & this.var_117.var_6) << 13 % 16 | (65535 & this.var_117.var_6) >>> 16 - 13 % 16));
         param1.writeDouble(this.var_117.name_4);
         param1.writeByte(255 & ((255 & this.var_34) << 5 % 8 | (255 & this.var_34) >>> 8 - 5 % 8));
         this.var_179.method_14(param1);
         param1.writeShort(this.var_957);
         param1.writeShort(65535 & ((65535 & this.var_499) >>> 1 % 16 | (65535 & this.var_499) << 16 - 1 % 16));
         param1.writeShort(this.var_1687);
         this.var_236.method_14(param1);
         param1.writeBoolean(this.var_556);
         param1.writeBoolean(this.var_1713);
         param1.writeShort(this.var_198);
         param1.writeBoolean(this.var_1497);
         param1.writeByte(255 & ((255 & this.name_27) >>> 10 % 8 | (255 & this.name_27) << 8 - 10 % 8));
         param1.writeShort(65535 & ((65535 & this.name_14) << 8 % 16 | (65535 & this.name_14) >>> 16 - 8 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 13 % 16 | (65535 & this.name_4.var_6) >>> 16 - 13 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeByte(this.var_169.length);
         for each(_loc4_ in this.var_169)
         {
            param1.writeShort(_loc4_);
         }
         param1.writeShort(this.var_850);
         param1.writeShort(this.var_58);
      }
   }
}
