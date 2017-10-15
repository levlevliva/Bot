package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.events.FlexEvent;
   import package_14.class_47;
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
   import package_20.class_33;
   import package_206.class_1357;
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
   import package_41.class_93;
   import package_45.class_110;
   import package_46.class_1356;
   import package_5.class_1028;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_945;
   import package_6.class_14;
   import package_69.class_978;
   import package_9.class_76;
   import spark.components.List;
   import spark.events.TextOperationEvent;
   import spark.primitives.Rect;
   
   public final class class_524 implements class_14
   {
      
      public static const name_3:class_524 = new class_524();
       
      
      private var var_646:int = 0;
      
      public var name_94:Boolean = false;
      
      public var name_30:int = 0;
      
      public var var_821:Vector.<class_678>;
      
      public var name_90:Boolean = false;
      
      public var var_863:Vector.<class_758>;
      
      public function class_524(param1:Vector.<class_678> = null, param2:Vector.<class_758> = null, param3:Boolean = false, param4:Boolean = false, param5:int = 0)
      {
         super();
         this.name_94 = param4;
         this.name_30 = param5;
         if(param1 == null)
         {
            this.var_821 = new Vector.<class_678>();
         }
         else
         {
            this.var_821 = param1;
         }
         this.name_90 = param3;
         if(param2 == null)
         {
            this.var_863 = new Vector.<class_758>();
         }
         else
         {
            this.var_863 = param2;
         }
      }
      
      public function method_16() : int
      {
         return -9370;
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
         return 10;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_678 = null;
         var _loc5_:class_758 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_94 = param1.readBoolean();
         this.name_30 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_821.length > 0)
         {
            this.var_821.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_678(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_821.push(_loc4_);
            _loc2_++;
         }
         this.name_90 = param1.readBoolean();
         while(this.var_863.length > 0)
         {
            this.var_863.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_758(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_863.push(_loc5_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_678 = null;
         var _loc3_:class_758 = null;
         param1.writeShort(-9370);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
         param1.writeBoolean(this.name_94);
         param1.writeShort(this.name_30);
         param1.writeByte(this.var_821.length);
         for each(_loc2_ in this.var_821)
         {
            _loc2_.method_14(param1);
         }
         param1.writeBoolean(this.name_90);
         param1.writeByte(this.var_863.length);
         for each(_loc3_ in this.var_863)
         {
            _loc3_.method_14(param1);
         }
      }
   }
}
