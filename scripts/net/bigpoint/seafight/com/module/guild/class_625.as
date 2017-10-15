package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
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
   import package_5.class_1028;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_945;
   import package_6.class_14;
   import package_9.class_76;
   
   public final class class_625 implements class_14
   {
      
      public static const name_3:class_625 = new class_625();
       
      
      private var var_646:int = 0;
      
      public var var_123:String = "";
      
      public var name_11:int = 0;
      
      public function class_625(param1:int = 0, param2:String = "")
      {
         super();
         this.var_123 = param2;
         this.name_11 = param1;
      }
      
      public function method_16() : int
      {
         return -15223;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_123 = param1.readUTF();
         this.name_11 = param1.readShort();
         this.name_11 = 65535 & ((65535 & this.name_11) << 15 % 16 | (65535 & this.name_11) >>> 16 - 15 % 16);
         this.name_11 = this.name_11 > 32767?int(this.name_11 - 65536):int(this.name_11);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-15223);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         param1.writeUTF(this.var_123);
         param1.writeShort(65535 & ((65535 & this.name_11) >>> 15 % 16 | (65535 & this.name_11) << 16 - 15 % 16));
      }
   }
}
