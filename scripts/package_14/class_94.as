package package_14
{
   import com.bigpoint.seafight.model.vo.class_1031;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_590;
   import package_182.class_1118;
   import package_185.class_1136;
   import package_72.class_1080;
   import package_9.class_120;
   import spark.components.VGroup;
   
   public final class class_94 extends class_88
   {
      
      public static const const_2:String = "seafight.descriptions.";
      
      public static const const_50:String = const_2 + "Ammunition";
      
      public static const const_85:String = const_2 + "Event";
      
      public static const const_819:String = const_2 + "EventTicker";
      
      public static const const_243:String = const_2 + "GroupMapTypeEventTicker";
      
      public static const const_65:String = const_2 + "Harpoons";
      
      public static const const_399:String = const_2 + "NonPerishableGoods";
      
      public static const const_1177:String = const_2 + "PerishableGoods";
      
      public static const const_205:String = const_2 + "QuestItems";
      
      public static const const_932:String = const_2 + "Buff";
      
      public static const const_468:String = const_2 + "CrewMembers";
      
      public static const const_201:String = const_2 + "Pirates";
      
      public static const const_1149:String = const_2 + "ShipDecks";
      
      public static const const_244:String = const_2 + "ActionItems";
      
      public static const const_326:String = const_2 + "subscriptions";
      
      public static const const_361:String = const_2 + "premium";
      
      public static const const_438:String = const_2 + "ShipExtensions";
      
      public static const const_111:String = const_2 + "Sails";
      
      public static const const_93:String = const_2 + "Weapons";
      
      public static const const_19:String = const_2 + "Currency";
      
      public static const const_765:String = const_2 + "ShipDesigns";
      
      public static const const_497:String = const_2 + "pet";
      
      public static const const_801:String = const_2 + "Leagues";
       
      
      public function class_94(param1:String, param2:String, param3:Function)
      {
         super(param1,param2,param3);
      }
      
      public static function method_20(param1:String, param2:String) : String
      {
         var _loc3_:String = class_47.method_108.method_121(param1,param2);
         return _loc3_ && _loc3_.length > 0?_loc3_:param1 + "::" + param2;
      }
   }
}
