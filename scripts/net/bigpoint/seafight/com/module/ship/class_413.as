package net.bigpoint.seafight.com.module.ship
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_6.class_14;
   import package_9.class_91;
   import spark.layouts.VerticalLayout;
   
   public final class class_413 implements class_14
   {
      
      public static const name_3:class_413 = new class_413();
       
      
      private var var_646:int = 0;
      
      public var name_20:class_89;
      
      public var name_14:int = 0;
      
      public var name_6:class_91;
      
      public var name_27:int = 0;
      
      public var var_179:class_90;
      
      public var name_4:class_84;
      
      public var var_455:int = 0;
      
      public var var_236:class_90;
      
      public var var_92:String = "";
      
      public function class_413(param1:class_84 = null, param2:int = 0, param3:class_89 = null, param4:String = "", param5:int = 0, param6:class_91 = null, param7:class_90 = null, param8:class_90 = null, param9:int = 0)
      {
         super();
         if(param3 == null)
         {
            this.name_20 = new class_89();
         }
         else
         {
            this.name_20 = param3;
         }
         this.name_14 = param2;
         if(param6 == null)
         {
            this.name_6 = new class_91();
         }
         else
         {
            this.name_6 = param6;
         }
         this.name_27 = param5;
         if(param7 == null)
         {
            this.var_179 = new class_90();
         }
         else
         {
            this.var_179 = param7;
         }
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         this.var_455 = param9;
         if(param8 == null)
         {
            this.var_236 = new class_90();
         }
         else
         {
            this.var_236 = param8;
         }
         this.var_92 = param4;
      }
      
      public function method_16() : int
      {
         return 24111;
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
         return 9;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_20 = class_89(class_93.method_26().method_25(param1.readShort()));
         this.name_20.method_15(param1);
         this.name_14 = param1.readShort();
         this.name_14 = 65535 & ((65535 & this.name_14) << 13 % 16 | (65535 & this.name_14) >>> 16 - 13 % 16);
         this.name_14 = this.name_14 > 32767?int(this.name_14 - 65536):int(this.name_14);
         this.name_6 = new class_91();
         this.name_6.var_8 = param1.readShort();
         this.name_6.var_8 = 65535 & ((65535 & this.name_6.var_8) >>> 7 % 16 | (65535 & this.name_6.var_8) << 16 - 7 % 16);
         this.name_6.var_8 = this.name_6.var_8 > 32767?int(this.name_6.var_8 - 65536):int(this.name_6.var_8);
         this.name_6.var_9 = param1.readShort();
         this.name_6.var_9 = 65535 & ((65535 & this.name_6.var_9) >>> 2 % 16 | (65535 & this.name_6.var_9) << 16 - 2 % 16);
         this.name_6.var_9 = this.name_6.var_9 > 32767?int(this.name_6.var_9 - 65536):int(this.name_6.var_9);
         this.name_27 = param1.readInt();
         this.name_27 = this.name_27 >>> 11 % 32 | this.name_27 << 32 - 11 % 32;
         this.var_179 = class_90(class_93.method_26().method_25(param1.readShort()));
         this.var_179.method_15(param1);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) << 12 % 16 | (65535 & this.name_4.var_6) >>> 16 - 12 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.var_455 = param1.readByte();
         this.var_455 = 255 & ((255 & this.var_455) >>> 16 % 8 | (255 & this.var_455) << 8 - 16 % 8);
         this.var_455 = this.var_455 > 127?int(this.var_455 - 256):int(this.var_455);
         this.var_236 = class_90(class_93.method_26().method_25(param1.readShort()));
         this.var_236.method_15(param1);
         this.var_92 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(24111);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         this.name_20.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.name_14) >>> 13 % 16 | (65535 & this.name_14) << 16 - 13 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_8) << 7 % 16 | (65535 & this.name_6.var_8) >>> 16 - 7 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_9) << 2 % 16 | (65535 & this.name_6.var_9) >>> 16 - 2 % 16));
         param1.writeInt(this.name_27 << 11 % 32 | this.name_27 >>> 32 - 11 % 32);
         this.var_179.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) >>> 12 % 16 | (65535 & this.name_4.var_6) << 16 - 12 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeByte(255 & ((255 & this.var_455) << 16 % 8 | (255 & this.var_455) >>> 8 - 16 % 8));
         this.var_236.method_14(param1);
         param1.writeUTF(this.var_92);
      }
   }
}
