package package_14
{
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.system.Capabilities;
   import flash.utils.IDataInput;
   import mx.collections.ArrayList;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import package_170.class_979;
   import package_205.class_1353;
   import package_41.class_84;
   import package_5.class_43;
   import package_54.class_163;
   import package_57.class_171;
   import package_69.class_978;
   
   public final class class_51
   {
      
      public static var var_968:int = 1468;
      
      public static var var_571:Boolean = false;
      
      public static var var_696:Boolean = false;
      
      public static var var_1337:Boolean = true;
      
      public static var var_1918:Boolean = true;
      
      public static var var_2066:Boolean = false;
      
      public static const const_1506:String = "&gameapi_consoledisable=1";
      
      public static var var_1463:String = null;
      
      public static var var_129:String = "en";
      
      public static var var_21:class_84 = new class_84();
      
      public static var var_1000:String = "";
      
      public static var var_1486:int;
      
      public static var var_1561:int;
      
      public static var var_329:String = "";
      
      public static var var_952:String;
      
      public static var var_392:String = "";
      
      public static var var_906:String = "";
      
      public static var var_1306:String = "";
      
      public static var var_1666:String = "";
      
      public static var var_1535:String;
      
      public static var var_1008:String;
      
      public static var var_1159:String = null;
      
      public static var var_39:int = 800;
      
      public static var var_40:int = 601;
      
      public static var var_548:int = 12000;
      
      public static var var_526:int = 8372;
      
      public static var var_1638:String;
      
      public static var var_1652:int;
      
      public static var var_1917:String = "lang/";
      
      public static var var_1649:String;
      
      public static var var_2194:String;
      
      public static var var_1519:String;
      
      public static var var_1692:String = "res/uiConfig/client.css";
      
      public static var var_1724:String = "cfg/client.cfg.xml";
      
      public static var var_1753:String = "";
      
      public static var var_1576:String = "minimaps/";
      
      public static var var_1118:Boolean = false;
      
      public static var var_2114:Boolean = true;
      
      public static const const_803:Array = [632,221,312];
      
      public static var var_984:String = "";
      
      public static var var_420:int = 312;
      
      public static var var_1590:Boolean = false;
      
      public static var var_2080:String = "";
       
      
      public function class_51()
      {
         super();
      }
      
      public static function method_1991() : String
      {
         var _loc1_:* = "client startet -> [version:" + Capabilities.version + "] " + "[player: " + Capabilities.playerType + "] " + "[language: " + Capabilities.language + "] " + "[debug: " + Capabilities.isDebugger + "] " + "[screen: " + Capabilities.screenResolutionX + "x" + Capabilities.screenResolutionY + "]";
         return _loc1_;
      }
      
      public static function method_829() : Boolean
      {
         return var_571 || var_696;
      }
   }
}
