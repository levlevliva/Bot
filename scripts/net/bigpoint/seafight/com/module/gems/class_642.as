package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButton;
   import com.bigpoint.seafight.view.popups.common.SimpleBorder;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.spymenu.WindowSettingsController;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.system.Capabilities;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.states.State;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_94;
   import package_14.class_96;
   import package_15.class_48;
   import package_170.class_979;
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
   import package_26.class_1061;
   import package_26.class_1088;
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
   import package_49.class_140;
   import package_5.class_1028;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_945;
   import package_6.class_14;
   import package_9.class_76;
   import package_92.class_962;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.RichEditableText;
   import spark.layouts.VerticalLayout;
   
   public final class class_642 implements class_14
   {
      
      public static const name_3:class_642 = new class_642();
       
      
      private var var_646:int = 0;
      
      public var var_114:int = 0;
      
      public var var_54:int = 0;
      
      public var var_781:Vector.<class_708>;
      
      public function class_642(param1:int = 0, param2:int = 0, param3:Vector.<class_708> = null)
      {
         super();
         this.var_114 = param1;
         this.var_54 = param2;
         if(param3 == null)
         {
            this.var_781 = new Vector.<class_708>();
         }
         else
         {
            this.var_781 = param3;
         }
      }
      
      public function method_16() : int
      {
         return -6564;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_708 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_114 = param1.readShort();
         this.var_54 = param1.readInt();
         this.var_54 = this.var_54 << 3 % 32 | this.var_54 >>> 32 - 3 % 32;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_781.length > 0)
         {
            this.var_781.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_708(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_781.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_708 = null;
         param1.writeShort(-6564);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
         param1.writeShort(this.var_114);
         param1.writeInt(this.var_54 >>> 3 % 32 | this.var_54 << 32 - 3 % 32);
         param1.writeByte(this.var_781.length);
         for each(_loc2_ in this.var_781)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
