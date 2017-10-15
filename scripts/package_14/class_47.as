package package_14
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_233;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BorderType2;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ItemRenderer.ToolTipConditionsItemRenderer;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColor;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.event.EventType;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import package_104.class_641;
   import package_135.class_618;
   import package_152.class_664;
   import package_16.class_28;
   import package_186.class_1137;
   import package_20.class_33;
   import package_23.class_42;
   import package_29.class_166;
   import package_36.class_100;
   import package_41.class_84;
   import package_42.class_98;
   import package_46.class_1132;
   import package_5.class_984;
   import package_50.class_141;
   import package_73.class_228;
   import package_8.class_16;
   import package_89.class_1138;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_47 extends EventDispatcher
   {
      
      private static const const_80:ILogger = Log.getLogger("ModelLocator");
      
      private static var name_55:class_47;
      
      private static var var_380:Stage;
      
      public static var var_1427:class_233 = new class_233();
       
      
      private var var_1876:class_232;
      
      private var var_2199:class_231;
      
      private var var_1953:class_200;
      
      private var var_2349:class_49;
      
      private var var_1847:class_229;
      
      private var var_1951:class_227;
      
      private var var_2243:class_226;
      
      private var var_668:class_199;
      
      private var var_2169:class_234;
      
      private var var_1333:Main;
      
      private var var_2130:class_165;
      
      private var var_671:class_16;
      
      private var var_2262:int = 0;
      
      private var var_1977:int = 0;
      
      private var var_2251:Point;
      
      private var var_1495:class_228;
      
      private var var_2226:class_230;
      
      public function class_47(param1:Function)
      {
         this.var_668 = new class_199();
         this.var_2169 = new class_234();
         this.var_2251 = new Point();
         super();
         if(param1 !== method_976)
         {
            throw new class_166();
         }
      }
      
      public static function get method_584() : int
      {
         try
         {
            return method_21().var_1495.method_584;
         }
         catch(e:Error)
         {
         }
         return -1;
      }
      
      public static function set method_1361(param1:int) : void
      {
         try
         {
            method_21().var_1495.method_1114 = param1;
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      private static function method_976() : void
      {
      }
      
      public static function get method_739() : class_228
      {
         return method_21().var_1495;
      }
      
      public static function method_21() : class_47
      {
         if(name_55 == null)
         {
            name_55 = new class_47(method_976);
         }
         return name_55;
      }
      
      public static function get method_206() : Point
      {
         return method_21().var_2251;
      }
      
      public static function get method_430() : int
      {
         return method_21().var_2262;
      }
      
      public static function get method_51() : class_232
      {
         return method_21().var_1876;
      }
      
      public static function get method_24() : class_231
      {
         return method_21().var_2199;
      }
      
      public static function get method_29() : class_200
      {
         return method_21().var_1953;
      }
      
      public static function get method_112() : class_49
      {
         return method_21().var_2349;
      }
      
      public static function get method_165() : class_229
      {
         return method_21().var_1847;
      }
      
      public static function get method_267() : class_227
      {
         return method_21().var_1951;
      }
      
      public static function get method_72() : class_226
      {
         return method_21().var_2243;
      }
      
      public static function get name_37() : class_199
      {
         return method_21().var_668;
      }
      
      public static function get method_48() : class_234
      {
         return method_21().var_2169;
      }
      
      public static function get method_272() : Main
      {
         return method_21().var_1333;
      }
      
      public static function get method_774() : class_165
      {
         return method_21().var_2130;
      }
      
      public static function get method_1445() : class_230
      {
         return method_21().var_2226;
      }
      
      public static function get method_49() : Stage
      {
         return var_380;
      }
      
      public static function set method_49(param1:Stage) : void
      {
         var_380 = param1;
      }
      
      public static function get method_22() : class_87
      {
         return method_21().var_671.var_2185;
      }
      
      public static function get method_2315() : class_87
      {
         return method_21().var_671.var_528;
      }
      
      public static function get method_37() : class_88
      {
         return method_21().var_671.var_2412;
      }
      
      public static function get method_113() : class_95
      {
         return method_21().var_671.var_2239;
      }
      
      public static function get method_108() : class_94
      {
         return method_21().var_671.var_2279;
      }
      
      public static function get method_1140() : class_96
      {
         return method_21().var_671.var_2173;
      }
      
      public static function get method_2452() : class_97
      {
         return method_21().var_671.var_2344;
      }
      
      public final function name_16(param1:Main) : void
      {
         const_80.info("INIT");
         this.var_1333 = param1;
         class_47.method_272.logInitbytesLoaded();
         this.initTextManager();
         this.var_1495 = new class_228(this.var_1333.stage);
      }
      
      private final function method_2743() : void
      {
         this.var_1977 = getTimer();
         method_49.addEventListener(Event.ENTER_FRAME,this.method_2054);
      }
      
      private final function method_2054(param1:Event) : void
      {
         var _loc2_:Number = 1;
         var _loc3_:Number = class_51.var_39 / 2;
         var _loc4_:Number = class_51.var_40 / 2;
         var _loc5_:class_141 = method_24.method_39;
         var _loc6_:Number = _loc5_.method_117;
         var _loc7_:int = name_37.var_120.x + (_loc5_.mouseX - _loc3_) / _loc2_ / _loc6_ + _loc3_ / _loc6_;
         var _loc8_:int = name_37.var_120.y + (_loc5_.mouseY - _loc4_) / _loc2_ / _loc6_ + _loc4_ / _loc6_;
         method_206.x = Math.round(0.5 / 20 * _loc7_ + 0.5 / 14 * _loc8_);
         method_206.y = Math.round(0.5 / 20 * _loc7_ - 0.5 / 14 * _loc8_);
         this.var_2262 = getTimer() - this.var_1977;
         this.var_1977 = getTimer();
      }
      
      private final function initTextManager() : void
      {
         this.var_671 = new class_16();
         this.var_671.method_68(this.method_1808);
      }
      
      private final function method_1808() : void
      {
         this.var_1953 = new class_200();
         this.var_2349 = class_49.name_3;
         this.var_1847 = new class_229();
         this.var_1951 = new class_227();
         this.var_2243 = new class_226();
         this.var_2130 = new class_165();
         this.var_2226 = new class_230();
         class_58.method_21().method_82("init view manager");
         this.var_1876 = new class_232();
      }
      
      private final function method_2806() : void
      {
         class_33.name_12.method_41.var_2374 = true;
         this.method_2743();
         method_21().dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public final function method_1814(param1:class_28) : void
      {
         this.var_2199 = new class_231(param1,this.var_1333.mainClip,this.var_1333.chatClip,this.method_2806);
      }
      
      public final function method_392(param1:class_84) : class_98
      {
         var _loc2_:class_98 = this.var_1953.method_44(param1) as class_98;
         if(_loc2_ == null)
         {
            _loc2_ = this.var_1847.method_268(param1.name_4) as class_98;
         }
         if(_loc2_ == null)
         {
            _loc2_ = this.var_1951.method_321(param1.name_4) as class_98;
         }
         return _loc2_;
      }
   }
}
