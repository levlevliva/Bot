package package_110
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_1020;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingLogListItemVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.clash.ClashRankingList;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.TowerListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.GuildColor;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.requestFrame;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.events.CloseEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_625;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_104.class_989;
   import package_14.class_1126;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_96;
   import package_17.class_326;
   import package_17.class_54;
   import package_17.class_990;
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
   import package_185.class_1136;
   import package_23.class_42;
   import package_26.class_1319;
   import package_26.class_142;
   import package_26.class_52;
   import package_3.class_26;
   import package_34.class_107;
   import package_34.class_1272;
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
   import package_46.class_1500;
   import package_5.class_1028;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_43;
   import package_5.class_945;
   import package_54.class_319;
   import package_6.class_14;
   import package_7.class_104;
   import package_9.class_120;
   import package_9.class_76;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_722 implements class_14
   {
      
      public static const name_3:class_722 = new class_722();
       
      
      private var var_646:int = 0;
      
      public var name_7:class_84;
      
      public var name_13:String = "";
      
      public function class_722(param1:class_84 = null, param2:String = "")
      {
         super();
         if(param1 == null)
         {
            this.name_7 = new class_84();
         }
         else
         {
            this.name_7 = param1;
         }
         this.name_13 = param2;
      }
      
      public function method_16() : int
      {
         return 13742;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_7 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.name_7.method_15(param1);
         this.name_13 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(13742);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         this.name_7.method_14(param1);
         param1.writeUTF(this.name_13);
      }
   }
}
