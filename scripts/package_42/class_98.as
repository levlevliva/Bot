package package_42
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.BoardingMenuAssistantsTab;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.assistants.AssistantsItemRenderer;
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import mx.events.FlexEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.ship.class_1119;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_14.class_234;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_94;
   import package_14.class_96;
   import package_152.class_934;
   import package_165.class_941;
   import package_17.class_326;
   import package_170.class_979;
   import package_26.class_942;
   import package_29.class_565;
   import package_41.class_84;
   import package_48.class_996;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_939;
   import package_5.class_940;
   import package_52.class_1010;
   import package_69.class_978;
   import package_92.class_336;
   import package_92.class_944;
   
   public class class_98 extends EventDispatcher
   {
      
      public static const const_3:ILogger = Log.getLogger("ActiveEntity");
      
      public static const const_332:int = 0;
      
      public static const const_282:int = 1;
      
      public static const const_1818:int = 2;
      
      public static const const_1414:int = 3;
      
      public static const const_420:int = 1;
      
      public static const const_554:int = 2;
      
      public static const const_865:int = 3;
      
      public static const const_996:int = 4;
      
      public static const const_1138:int = 3;
       
      
      public var var_258:int;
      
      public var name_6:Point;
      
      public var var_596:Point;
      
      protected var var_43:Object;
      
      protected var var_460:Object;
      
      protected var var_195:Boolean = false;
      
      protected var var_1823:Boolean = false;
      
      protected var var_805:Boolean = false;
      
      protected var var_68:class_941;
      
      public function class_98()
      {
         this.name_6 = new Point();
         this.var_596 = new Point();
         this.var_460 = new Object();
         super();
         this.init();
      }
      
      public static function method_660(param1:int, param2:int) : class_336
      {
         var _loc3_:String = class_123.method_27(class_123.const_167);
         var _loc4_:SWFFinisher = getSWFFinisher(class_123.const_167);
         if(!_loc4_)
         {
            return null;
         }
         var _loc5_:MovieClip = _loc4_.getEmbeddedMovieClip(_loc3_,true);
         var _loc6_:class_336 = new class_336(_loc5_,_loc3_,class_944.const_14);
         _loc6_.play();
         _loc6_.fps = class_22.const_176;
         _loc6_.removeAfterPlay = true;
         _loc6_.x = param1;
         _loc6_.y = param2;
         return _loc6_;
      }
      
      public final function method_2291(param1:Boolean) : void
      {
         this.method_145(this.method_27(),this.method_104(),this.method_349(),param1);
      }
      
      protected function init() : void
      {
         CentralEventUnit.addEventListener(class_943.const_574,this.method_304);
         CentralEventUnit.addEventListener(class_943.const_338,this.method_304);
      }
      
      protected function method_304(param1:class_943 = null, param2:Number = 1) : void
      {
         if(!this.var_68)
         {
            return;
         }
         var _loc3_:Number = !!param1?Number(param1.method_117):Number(param2);
         var _loc4_:Number = 1 / _loc3_;
         this.var_68.scaleX = _loc4_;
         this.var_68.scaleY = _loc4_;
         var _loc5_:int = this.method_190();
         if(_loc5_ >= 5)
         {
            this.var_68.y = class_939.const_37 * (_loc5_ + 1.5);
         }
      }
      
      protected function method_330() : void
      {
         if(!class_326.method_625)
         {
            return;
         }
         var _loc1_:SWFFinisher = getSWFFinisher(class_123.const_167,this.method_330);
         if(_loc1_ == null)
         {
            return;
         }
         class_47.method_24.method_39.method_61(method_660(this.name_6.x,this.name_6.y),false);
      }
      
      public function method_183(param1:int, param2:int = 0) : void
      {
         this.method_378();
         if(param2 <= 0)
         {
            param2 = this.method_190();
         }
         var _loc3_:* = param2 <= 5;
         if(param2 > const_1138 && _loc3_)
         {
            param2 = const_1138;
         }
         var _loc4_:Sprite = new Sprite();
         if(_loc3_)
         {
            _loc4_.addChild(getSWFFinisher(class_123.const_20).getEmbeddedBitmap("marker" + param1 + "_" + param2,true));
            center(_loc4_);
         }
         else
         {
            _loc4_ = this.method_1915(_loc4_,param1,param2);
         }
         this.var_460[param1] = _loc4_;
      }
      
      protected final function method_1915(param1:Sprite, param2:int, param3:int = 0) : Sprite
      {
         var _loc4_:int = 16777215;
         switch(param2)
         {
            case const_420:
               _loc4_ = 16711680;
               break;
            case const_554:
               _loc4_ = 65303;
               break;
            case const_865:
               _loc4_ = 16768512;
               break;
            case const_996:
               _loc4_ = 65496;
               break;
            default:
               const_3.warn("invalid marker style: " + param2);
         }
         param3 = this.method_190();
         var _loc5_:int = param3 * class_940.const_312;
         var _loc6_:int = param3 * class_940.const_427;
         param1.graphics.lineStyle(3,_loc4_);
         this.method_2637(param1.graphics,_loc5_,_loc6_);
         return param1;
      }
      
      protected function method_2637(param1:Graphics, param2:int, param3:int) : void
      {
         param1.drawEllipse(-param2,-param3,param2 * 2,param3 * 2);
      }
      
      protected final function method_616(param1:String) : String
      {
         return !!this.var_43?this.var_43[param1] as String:null;
      }
      
      public final function method_566(param1:int) : void
      {
         var _loc2_:Sprite = this.var_460[param1] as Sprite;
         if(_loc2_ == null || _loc2_.parent == null)
         {
            return;
         }
         _loc2_.parent.removeChild(_loc2_);
      }
      
      public final function method_378() : void
      {
         var _loc1_:Sprite = null;
         for each(_loc1_ in this.var_460)
         {
            if(_loc1_.parent)
            {
               _loc1_.parent.removeChild(_loc1_);
            }
         }
      }
      
      public function method_283(param1:int, param2:int, param3:int = 0) : Boolean
      {
         var _loc4_:int = this.method_190();
         param3 = _loc4_ > 0?int(_loc4_ * class_940.const_312):30;
         var _loc5_:Number = 1;
         var _loc6_:Number = 1 - _loc5_;
         var _loc7_:Number = class_51.var_39 * 0.5;
         var _loc8_:Number = class_51.var_40 * 0.5;
         var _loc9_:Point = class_47.name_37.var_120;
         var _loc10_:Number = (this.name_6.x - _loc9_.x) * _loc5_ + _loc7_ * _loc6_ + _loc9_.x;
         var _loc11_:Number = (this.name_6.y - _loc9_.y) * _loc5_ + _loc8_ * _loc6_ + _loc9_.y;
         if(Math.abs(param1 - _loc10_) < param3)
         {
            if(Math.abs(param2 - _loc11_) < param3 * class_940.const_1274)
            {
               return true;
            }
         }
         return false;
      }
      
      public function method_145(param1:String, param2:class_84, param3:String = null, param4:Boolean = false, param5:Boolean = false) : void
      {
      }
      
      public function suicide(param1:Boolean) : void
      {
         var _loc2_:class_234 = class_47.method_48;
         if(_loc2_.method_143 == this)
         {
            _loc2_.method_408();
            _loc2_.method_187(null);
         }
         dispatchEvent(new class_942(this));
         this.method_378();
         CentralEventUnit.removeEventListener(class_943.const_574,this.method_304);
         CentralEventUnit.removeEventListener(class_943.const_338,this.method_304);
         this.var_1823 = true;
      }
      
      public function method_27() : String
      {
         return "entity";
      }
      
      public function method_349() : String
      {
         return "";
      }
      
      public function method_104() : class_84
      {
         return null;
      }
      
      public function get method_458() : int
      {
         if(!this.var_805)
         {
            return Math.round(0.5 / 20 * this.name_6.x + 0.5 / 14 * this.name_6.y);
         }
         return Math.round(0.5 / 20 * this.var_596.x + 0.5 / 14 * this.var_596.y);
      }
      
      public function get method_494() : int
      {
         if(!this.var_805)
         {
            return Math.round(0.5 / 20 * this.name_6.x - 0.5 / 14 * this.name_6.y);
         }
         return Math.round(0.5 / 20 * this.var_596.x - 0.5 / 14 * this.var_596.y);
      }
      
      public function get method_172() : Number
      {
         return 0;
      }
      
      public function get method_2728() : Number
      {
         return 0;
      }
      
      public function method_908() : Object
      {
         return new Object();
      }
      
      public final function method_1516(param1:int, param2:int) : Boolean
      {
         var _loc3_:Number = class_47.method_24.method_39.method_117;
         var _loc4_:Point = this.name_6.subtract(class_47.name_37.var_120);
         var _loc5_:int = param1 / 2 + 2;
         var _loc6_:int = param2 / 2 + 2;
         if(_loc4_.x < -_loc5_)
         {
            return false;
         }
         if(_loc4_.y < -_loc6_)
         {
            return false;
         }
         if(_loc4_.x > (class_51.var_39 + _loc5_) / _loc3_)
         {
            return false;
         }
         if(_loc4_.y > (class_51.var_40 + _loc6_) / _loc3_)
         {
            return false;
         }
         return true;
      }
      
      public function method_65() : String
      {
         throw new class_565();
      }
      
      public function method_197(param1:int = 0) : BitmapData
      {
         return null;
      }
      
      public final function method_693() : Point
      {
         return this.name_6;
      }
      
      public function method_134() : Sprite
      {
         return null;
      }
      
      public function method_190() : int
      {
         return 0;
      }
   }
}
