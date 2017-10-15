package package_17
{
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import mx.binding.BindingManager;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import package_14.class_47;
   import package_52.class_168;
   import package_55.class_1007;
   import package_6.class_14;
   import package_69.class_978;
   import spark.components.Label;
   import spark.components.VGroup;
   
   public final class class_326
   {
      
      private static var var_595:Boolean = true;
      
      private static var var_1420:Boolean = true;
      
      private static var var_1343:Boolean = true;
      
      private static var var_1218:Boolean = true;
      
      private static var var_1404:Boolean = true;
      
      private static var var_1418:Boolean = true;
      
      public static const const_875:String = "switchOnOffEffects";
      
      public static const const_830:String = "switchOnOffEffectLeveUp";
      
      public static const const_870:String = "switchOnOffEffectQuest";
      
      public static const const_828:String = "switchOnOffEffectSinking";
      
      public static const const_1229:String = "switchOnOffEffectBoarding";
      
      public static const const_811:String = "switchOnOffEffectBonusMap";
      
      public static var var_433:Boolean = false;
      
      private static var var_1663:class_168;
       
      
      public function class_326()
      {
         super();
      }
      
      public static function get method_529() : class_168
      {
         if(var_1663 == null)
         {
            var_1663 = class_47.method_24.var_12.subMenuContainer.getSubMenuByName("options") as class_168;
         }
         return var_1663;
      }
      
      public static function get method_696() : Boolean
      {
         return var_595;
      }
      
      public static function set method_696(param1:Boolean) : void
      {
         var_595 = param1;
         (method_529.method_136.method_657[const_830] as class_1007).name_26 = var_595;
         (method_529.method_136.method_657[const_870] as class_1007).name_26 = var_595;
         (method_529.method_136.method_657[const_828] as class_1007).name_26 = var_595;
         (method_529.method_136.method_657[const_811] as class_1007).name_26 = var_595;
      }
      
      public static function get method_557() : Boolean
      {
         return var_1420 && var_595;
      }
      
      public static function set method_557(param1:Boolean) : void
      {
         var_1420 = param1;
      }
      
      public static function get method_674() : Boolean
      {
         return var_1343;
      }
      
      public static function set method_674(param1:Boolean) : void
      {
         var_1343 = param1;
      }
      
      public static function get method_625() : Boolean
      {
         return var_1218;
      }
      
      public static function set method_625(param1:Boolean) : void
      {
         var_1218 = param1;
      }
      
      public static function get method_808() : Boolean
      {
         return var_1404;
      }
      
      public static function set method_808(param1:Boolean) : void
      {
         var_1404 = param1;
      }
      
      public static function get method_577() : Boolean
      {
         return var_1418;
      }
      
      public static function set method_577(param1:Boolean) : void
      {
         var_1418 = param1;
      }
   }
}
