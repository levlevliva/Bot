package package_14
{
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.GroupMapIcon;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.greensock.TweenLite;
   import com.greensock.easing.Sine;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.PerspectiveProjection;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import package_107.class_693;
   import package_15.class_48;
   import package_16.class_28;
   import package_170.class_979;
   import package_41.class_93;
   import package_43.class_266;
   import package_47.class_881;
   import package_5.class_43;
   import package_50.class_1120;
   import package_50.class_141;
   import spark.components.Group;
   import spark.components.List;
   import spark.layouts.VerticalLayout;
   
   public final class class_220 extends EventDispatcher
   {
      
      public static const const_214:int = 1;
      
      public static const const_1137:int = 2;
      
      public static const const_972:int = 4;
      
      public static const const_1013:int = 8;
      
      public static const const_1235:int = 16;
      
      private static const const_422:int = const_214 | const_1137 | const_972 | const_1013 | const_1235;
      
      private static const name_55:class_220 = new class_220();
       
      
      private var var_1171:int = 0;
      
      private var var_1844:Boolean = false;
      
      public function class_220()
      {
         super();
      }
      
      public static function method_479(param1:int) : void
      {
         if(method_280(param1) == false)
         {
            name_55.var_1171 = name_55.var_1171 | param1;
            if(name_55.var_1171 == const_422)
            {
               name_55.dispatchEvent(new Event(Event.COMPLETE));
               name_55.var_1844 = true;
            }
         }
      }
      
      public static function method_2246() : void
      {
         if(name_55.var_1844)
         {
            return;
         }
         name_55.var_1171 = const_422;
         name_55.dispatchEvent(new Event(Event.COMPLETE));
         name_55.var_1844 = true;
      }
      
      public static function method_280(param1:int) : Boolean
      {
         return (name_55.var_1171 & param1) == param1;
      }
      
      public static function method_1778() : Boolean
      {
         return name_55.var_1171 == const_422;
      }
      
      public static function get name_3() : class_220
      {
         return name_55;
      }
   }
}
