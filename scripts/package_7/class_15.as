package package_7
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildSearchListItemVo;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_485;
   import net.bigpoint.seafight.com.module.guild.class_714;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_96;
   import package_179.class_1064;
   import package_179.class_1259;
   import package_179.class_1260;
   import package_179.class_1262;
   import package_179.class_1284;
   import package_179.class_1288;
   import package_179.class_1293;
   import package_179.class_1382;
   import package_179.class_1383;
   import package_179.class_1385;
   import package_179.class_1388;
   import package_179.class_1390;
   import package_179.class_1391;
   import package_179.class_1392;
   import package_179.class_1393;
   import package_179.class_1394;
   import package_179.class_1395;
   import package_179.class_1396;
   import package_179.class_1397;
   import package_179.class_1398;
   import package_179.class_1399;
   import package_179.class_1400;
   import package_179.class_1401;
   import package_179.class_1402;
   import package_179.class_1403;
   import package_179.class_1405;
   import package_179.class_1406;
   import package_179.class_1407;
   import package_179.class_1408;
   import package_179.class_1409;
   import package_179.class_1410;
   import package_179.class_1411;
   import package_179.class_1412;
   import package_179.class_1413;
   import package_179.class_1414;
   import package_179.class_1415;
   import package_179.class_1416;
   import package_179.class_1420;
   import package_179.class_1421;
   import package_179.class_1422;
   import package_179.class_1423;
   import package_179.class_1424;
   import package_179.class_1425;
   import package_179.class_1429;
   import package_179.class_1430;
   import package_179.class_1431;
   import package_179.class_1432;
   import package_179.class_1434;
   import package_179.class_1436;
   import package_179.class_1437;
   import package_179.class_1439;
   import package_179.class_1440;
   import package_179.class_1441;
   import package_36.class_100;
   import package_36.class_1381;
   import package_36.class_1386;
   import package_36.class_1389;
   import package_36.class_1404;
   import package_36.class_1417;
   import package_36.class_1419;
   import package_36.class_1426;
   import package_36.class_1427;
   import package_36.class_1428;
   import package_36.class_1433;
   import package_36.class_1435;
   import package_36.class_1438;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_46.class_1455;
   import package_49.class_140;
   import package_5.class_1028;
   import package_5.class_123;
   import package_5.class_1239;
   import package_5.class_133;
   import package_5.class_22;
   import package_5.class_945;
   import package_6.class_14;
   import package_8.class_1240;
   import package_9.class_17;
   import package_9.class_76;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public final class class_15 implements class_14
   {
      
      public static const name_3:class_15 = new class_15();
       
      
      private var var_646:int = 0;
      
      public var var_694:Boolean = false;
      
      public var name_14:int = 0;
      
      public var name_13:String = "";
      
      public var var_92:String = "";
      
      public var var_26:int = 0;
      
      public var var_303:int = 0;
      
      public var var_717:Number = 0;
      
      public var name_20:class_89;
      
      public var var_682:Number = 0;
      
      public var var_648:Boolean = false;
      
      public var var_60:int = 0;
      
      public var var_158:int = 0;
      
      public var name_10:int = 0;
      
      public var var_34:int = 0;
      
      public var var_292:int = 0;
      
      public var name_6:class_91;
      
      public var name_4:class_84;
      
      public var var_179:class_90;
      
      public var var_704:Boolean = false;
      
      public function class_15(param1:class_84 = null, param2:int = 0, param3:int = 0, param4:class_91 = null, param5:String = "", param6:String = "", param7:class_90 = null, param8:int = 0, param9:int = 0, param10:Number = 0, param11:Number = 0, param12:int = 0, param13:int = 0, param14:Boolean = false, param15:int = 0, param16:Boolean = false, param17:int = 0, param18:Boolean = false, param19:class_89 = null)
      {
         super();
         this.var_694 = param18;
         this.name_14 = param2;
         this.name_13 = param5;
         this.var_92 = param6;
         this.var_26 = param9;
         this.var_303 = param13;
         this.var_717 = param11;
         if(param19 == null)
         {
            this.name_20 = new class_89();
         }
         else
         {
            this.name_20 = param19;
         }
         this.var_682 = param10;
         this.var_648 = param14;
         this.var_60 = param8;
         this.var_158 = param15;
         this.name_10 = param17;
         this.var_34 = param3;
         this.var_292 = param12;
         if(param4 == null)
         {
            this.name_6 = new class_91();
         }
         else
         {
            this.name_6 = param4;
         }
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         if(param7 == null)
         {
            this.var_179 = new class_90();
         }
         else
         {
            this.var_179 = param7;
         }
         this.var_704 = param16;
      }
      
      public function method_16() : int
      {
         return 7317;
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
         return 38;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_694 = param1.readBoolean();
         this.name_14 = param1.readShort();
         this.name_14 = 65535 & ((65535 & this.name_14) << 2 % 16 | (65535 & this.name_14) >>> 16 - 2 % 16);
         this.name_14 = this.name_14 > 32767?int(this.name_14 - 65536):int(this.name_14);
         this.name_13 = param1.readUTF();
         this.var_92 = param1.readUTF();
         this.var_26 = param1.readByte();
         this.var_26 = 255 & ((255 & this.var_26) >>> 10 % 8 | (255 & this.var_26) << 8 - 10 % 8);
         this.var_26 = this.var_26 > 127?int(this.var_26 - 256):int(this.var_26);
         this.var_303 = param1.readInt();
         this.var_303 = this.var_303 >>> 12 % 32 | this.var_303 << 32 - 12 % 32;
         this.var_717 = param1.readDouble();
         this.name_20 = class_89(class_93.method_26().method_25(param1.readShort()));
         this.name_20.method_15(param1);
         this.var_682 = param1.readDouble();
         this.var_648 = param1.readBoolean();
         this.var_60 = param1.readByte();
         this.var_60 = 255 & ((255 & this.var_60) >>> 7 % 8 | (255 & this.var_60) << 8 - 7 % 8);
         this.var_60 = this.var_60 > 127?int(this.var_60 - 256):int(this.var_60);
         this.var_158 = param1.readByte();
         this.var_158 = 255 & ((255 & this.var_158) << 10 % 8 | (255 & this.var_158) >>> 8 - 10 % 8);
         this.var_158 = this.var_158 > 127?int(this.var_158 - 256):int(this.var_158);
         this.name_10 = param1.readByte();
         this.name_10 = 255 & ((255 & this.name_10) << 6 % 8 | (255 & this.name_10) >>> 8 - 6 % 8);
         this.name_10 = this.name_10 > 127?int(this.name_10 - 256):int(this.name_10);
         this.var_34 = param1.readByte();
         this.var_34 = 255 & ((255 & this.var_34) << 3 % 8 | (255 & this.var_34) >>> 8 - 3 % 8);
         this.var_34 = this.var_34 > 127?int(this.var_34 - 256):int(this.var_34);
         this.var_292 = param1.readInt();
         this.var_292 = this.var_292 >>> 8 % 32 | this.var_292 << 32 - 8 % 32;
         this.name_6 = new class_91();
         this.name_6.var_8 = param1.readShort();
         this.name_6.var_8 = 65535 & ((65535 & this.name_6.var_8) >>> 11 % 16 | (65535 & this.name_6.var_8) << 16 - 11 % 16);
         this.name_6.var_8 = this.name_6.var_8 > 32767?int(this.name_6.var_8 - 65536):int(this.name_6.var_8);
         this.name_6.var_9 = param1.readShort();
         this.name_6.var_9 = 65535 & ((65535 & this.name_6.var_9) << 8 % 16 | (65535 & this.name_6.var_9) >>> 16 - 8 % 16);
         this.name_6.var_9 = this.name_6.var_9 > 32767?int(this.name_6.var_9 - 65536):int(this.name_6.var_9);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) << 1 % 16 | (65535 & this.name_4.var_6) >>> 16 - 1 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.var_179 = class_90(class_93.method_26().method_25(param1.readShort()));
         this.var_179.method_15(param1);
         this.var_704 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(7317);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeBoolean(this.var_694);
         param1.writeShort(65535 & ((65535 & this.name_14) >>> 2 % 16 | (65535 & this.name_14) << 16 - 2 % 16));
         param1.writeUTF(this.name_13);
         param1.writeUTF(this.var_92);
         param1.writeByte(255 & ((255 & this.var_26) << 10 % 8 | (255 & this.var_26) >>> 8 - 10 % 8));
         param1.writeInt(this.var_303 << 12 % 32 | this.var_303 >>> 32 - 12 % 32);
         param1.writeDouble(this.var_717);
         this.name_20.method_14(param1);
         param1.writeDouble(this.var_682);
         param1.writeBoolean(this.var_648);
         param1.writeByte(255 & ((255 & this.var_60) << 7 % 8 | (255 & this.var_60) >>> 8 - 7 % 8));
         param1.writeByte(255 & ((255 & this.var_158) >>> 10 % 8 | (255 & this.var_158) << 8 - 10 % 8));
         param1.writeByte(255 & ((255 & this.name_10) >>> 6 % 8 | (255 & this.name_10) << 8 - 6 % 8));
         param1.writeByte(255 & ((255 & this.var_34) >>> 3 % 8 | (255 & this.var_34) << 8 - 3 % 8));
         param1.writeInt(this.var_292 << 8 % 32 | this.var_292 >>> 32 - 8 % 32);
         param1.writeShort(65535 & ((65535 & this.name_6.var_8) << 11 % 16 | (65535 & this.name_6.var_8) >>> 16 - 11 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_9) >>> 8 % 16 | (65535 & this.name_6.var_9) << 16 - 8 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) >>> 1 % 16 | (65535 & this.name_4.var_6) << 16 - 1 % 16));
         param1.writeDouble(this.name_4.name_4);
         this.var_179.method_14(param1);
         param1.writeBoolean(this.var_704);
      }
   }
}
