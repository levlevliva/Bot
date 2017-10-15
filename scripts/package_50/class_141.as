package package_50
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.skins.CommonEquipmentListSkin;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.Checked;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocketLockClosed;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScorePopupVo;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityTriggerEvent;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.graphics.SolidColorStroke;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.logging.LogEvent;
   import mx.logging.LogEventLevel;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_821;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_496;
   import package_112.class_622;
   import package_118.class_1445;
   import package_118.class_539;
   import package_12.class_21;
   import package_14.class_200;
   import package_14.class_220;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_166.class_961;
   import package_17.class_328;
   import package_17.class_37;
   import package_17.class_990;
   import package_170.class_979;
   import package_172.class_991;
   import package_172.class_992;
   import package_34.class_1499;
   import package_41.class_84;
   import package_41.class_93;
   import package_48.class_996;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_41;
   import package_51.class_148;
   import package_54.class_1006;
   import package_9.class_994;
   import package_91.class_1246;
   import package_92.class_335;
   import package_92.class_944;
   import package_92.class_993;
   import package_92.class_995;
   import package_92.class_997;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_141 extends Sprite
   {
      
      private static const const_3:ILogger = Log.getLogger("MapView");
      
      public static const const_311:int = 640;
      
      public static const const_259:int = 476;
      
      public static var var_99:Number = 1;
       
      
      protected var var_678:Sprite;
      
      protected var var_600:Sprite;
      
      protected var var_270:class_997;
      
      protected var var_390:class_995;
      
      protected var var_583:Sprite;
      
      protected var var_1569:Sprite;
      
      protected var var_296:class_993;
      
      protected var var_1508:class_998;
      
      protected var var_2517:Bitmap;
      
      protected var var_2317:int;
      
      protected var var_1630:Timer;
      
      protected var var_1393:Boolean = true;
      
      protected var var_2052:class_209;
      
      protected var var_1389:Number;
      
      protected var var_2168:Number;
      
      protected var var_1788:Point;
      
      protected var var_2403:Boolean;
      
      private var var_1588:Vector.<class_991>;
      
      public function class_141()
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         this.var_1588 = new Vector.<class_991>();
         super();
         _loc1_ = class_12.var_104 == class_12.const_15?int(class_47.method_49.stageWidth):int(class_51.var_39);
         _loc2_ = class_12.var_104 == class_12.const_15?int(class_47.method_49.stageHeight):int(class_51.var_40);
         this.var_678 = new Sprite();
         this.var_678.mouseEnabled = false;
         this.var_600 = new Sprite();
         this.var_600.mouseEnabled = false;
         this.var_600.mouseChildren = false;
         this.var_583 = new Sprite();
         this.var_583.mouseEnabled = false;
         this.var_583.mouseChildren = false;
         this.var_270 = new class_997(const_311,const_259,class_997.const_1397,class_997.const_1572);
         this.var_390 = new class_995();
         this.var_1569 = new Sprite();
         this.var_296 = new class_993(_loc1_,_loc2_,0,0);
         this.var_1508 = new class_998();
         this.var_678.addChild(this.var_583);
         this.var_678.addChild(this.var_270);
         this.var_678.addChild(this.var_390);
         this.var_600.addChild(this.var_1569);
         this.var_600.addChild(this.var_296);
         this.var_600.addChild(this.var_1508);
         this.method_1154(addChild(this.var_678) as Sprite,_loc1_,_loc2_);
         this.method_1154(addChild(this.var_600) as Sprite,_loc1_,_loc2_);
         this.var_1788 = class_47.name_37.var_120;
         this.method_726(1);
      }
      
      public final function method_2740(param1:class_148) : void
      {
         this.var_1389 = param1.name_22.name_7 * 0.01;
      }
      
      protected final function method_726(param1:Number = 1) : void
      {
         if(var_99 == param1)
         {
            return;
         }
         var_99 = param1;
         this.var_583.scaleX = var_99;
         this.var_583.scaleY = var_99;
         this.var_390.method_117 = var_99;
         this.var_270.method_117 = var_99;
         this.var_1508.method_117 = var_99;
         this.method_1016();
         CentralEventUnit.dispatchEvent(new class_943(class_943.const_338,false,false,var_99));
         class_37.method_1461(var_99);
         class_209.method_726(var_99);
         this.update();
      }
      
      public final function method_1016() : void
      {
         if(class_12.var_104 != class_12.const_15)
         {
            return;
         }
         var _loc1_:Boolean = this.var_270.width < this.var_270.stage.stageWidth || this.var_270.height < this.var_270.stage.stageHeight;
         if(_loc1_ || this.var_2403)
         {
            CentralEventUnit.dispatchEvent(new Event(class_21.const_1121));
         }
         this.var_2403 = _loc1_;
      }
      
      protected final function name_89() : void
      {
         var timer:Timer = new Timer(200,0);
         timer.addEventListener(TimerEvent.TIMER,function(param1:TimerEvent):void
         {
            const_3.fatal("Number of Live Items: " + var_390.method_1523(class_944.const_255) + "/" + var_390.method_1523());
         });
         timer.start();
      }
      
      protected final function method_1154(param1:Sprite, param2:int, param3:int) : void
      {
         param1.scrollRect = new Rectangle(0,0,param2,param3);
      }
      
      private final function method_2801(param1:Event) : void
      {
         if(!class_220.method_280(class_220.const_214))
         {
            return;
         }
         var _loc2_:class_200 = class_47.method_29;
         var _loc3_:int = _loc2_.method_56.var_121 * 70 * var_99;
         var _loc4_:Point = !!_loc2_.method_75?_loc2_.method_75.name_6:null;
         var _loc5_:* = class_286.name_5 != class_286.const_79;
         if(_loc3_ <= 0 || !_loc4_)
         {
            const_3.fatal("- missing " + class_13.method_668(class_496) + " for " + class_13.method_668(AmsAttributeType) + "::" + class_996.method_27(AmsAttributeType.VIEWDISTANCE));
            return;
         }
         this.var_296.visible = _loc5_ && this.var_1393;
         if(this.var_296.method_786 != _loc3_ || this.var_2317 != class_286.name_5)
         {
            this.var_296.method_786 = _loc3_;
            this.var_296.method_1162 = _loc3_ * 0.7;
            this.var_296.method_54();
            if(_loc5_)
            {
               this.var_296.method_395();
            }
         }
         this.update();
         this.var_2317 = class_286.name_5;
         if(this.var_1389)
         {
            if(this.var_1389 != this.var_2168)
            {
               this.var_2168 = this.var_1389;
               this.method_726(this.var_1389);
            }
         }
      }
      
      private final function update() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc1_:class_200 = class_47.method_29;
         var _loc2_:Point = !!_loc1_.method_75?_loc1_.method_75.name_6:null;
         _loc3_ = -this.var_1788.x;
         _loc4_ = -this.var_1788.y;
         var _loc5_:int = _loc3_ * var_99;
         var _loc6_:int = _loc4_ * var_99;
         this.var_583.x = _loc5_;
         this.var_583.y = _loc6_;
         this.var_270.method_34(_loc5_,_loc6_);
         this.var_390.method_34(_loc5_,_loc6_);
         this.var_296.method_34((_loc3_ + _loc2_.x) * var_99,(_loc4_ + _loc2_.y) * var_99);
         this.var_1508.method_34(_loc3_,_loc4_);
      }
      
      public final function method_1125() : void
      {
         var _loc2_:Point = null;
         var _loc1_:class_990 = class_47.method_51.method_852(class_47.method_51.method_175());
         if(_loc1_ == null)
         {
            return;
         }
         BitmapClip.clearCache();
         _loc2_ = class_47.method_51.method_2709();
         var _loc3_:int = _loc2_.x;
         var _loc4_:int = _loc2_.y;
         class_51.var_548 = _loc3_ * const_311;
         class_51.var_526 = _loc4_ * const_259;
         if(class_51.var_548 > 12000)
         {
            class_51.var_548 = 12000;
         }
         if(class_51.var_526 > 8372)
         {
            class_51.var_526 = 8372;
         }
         this.var_270.method_1670 = _loc3_;
         this.var_270.name_74 = _loc4_;
         this.var_270.method_54();
         this.var_270.method_117 = var_99;
         this.var_270.method_1643 = _loc1_;
         this.var_270.method_395();
         this.var_2052 = class_47.method_24.var_12.miniMap;
         super.addEventListener(Event.ENTER_FRAME,this.method_2801);
      }
      
      public final function method_182() : Boolean
      {
         return this.var_270.method_182();
      }
      
      public final function method_2947(param1:int) : int
      {
         var _loc2_:int = 0;
         switch(param1)
         {
            case class_994.const_1230:
               _loc2_ = 2922619;
               break;
            case class_994.const_977:
               _loc2_ = 3949606;
               break;
            default:
               _loc2_ = 2514331;
         }
         return _loc2_;
      }
      
      public final function method_2977(param1:int, param2:int) : void
      {
         var _loc3_:class_992 = new class_992(param1,param2,false);
         _loc3_.name_5 = class_944.const_138;
         this.method_61(_loc3_,false);
      }
      
      public final function method_2994(param1:Array) : void
      {
         var _loc3_:Point = null;
         var _loc4_:class_991 = null;
         this.removeDrawnRoute();
         this.var_1588 = new Vector.<class_991>();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            if(_loc2_ % 12 == 0)
            {
               _loc3_ = param1[_loc2_] as Point;
               _loc4_ = new class_991(_loc3_.x,_loc3_.y);
               _loc4_.name_5 = class_944.const_170;
               this.var_1588.push(_loc4_);
               this.method_61(_loc4_,false);
            }
            _loc2_++;
         }
      }
      
      private final function removeDrawnRoute() : void
      {
         var _loc1_:class_991 = null;
         for each(_loc1_ in this.var_1588)
         {
            this.method_99(_loc1_);
         }
      }
      
      public final function method_1258(param1:int, param2:int, param3:Boolean = true) : Boolean
      {
         var _loc4_:class_992 = new class_992(param1,param2,true,param3);
         var _loc5_:Boolean = _loc4_.x > 0 && _loc4_.y > 0 && _loc4_.x < class_51.var_548 && _loc4_.y < class_51.var_526;
         if(_loc5_)
         {
            _loc4_.name_5 = class_944.const_138;
            this.method_61(_loc4_,false);
         }
         return _loc5_;
      }
      
      public final function method_3007(param1:Boolean = true) : void
      {
         this.var_296.visible = param1;
      }
      
      public final function method_61(param1:DisplayObject, param2:Boolean = true) : void
      {
         var _loc3_:class_335 = param1 as class_335;
         if(!_loc3_)
         {
            const_3.warn("prohibit adding non-ILiveRenderable object type");
         }
         else if(_loc3_.name_5 < class_944.const_56)
         {
            this.var_583.addChild(param1);
         }
         else
         {
            this.var_390.method_298(param1,param2);
         }
         var _loc4_:class_961 = param1 as class_961;
         if(null != _loc4_)
         {
            this.var_2052.method_2788(_loc4_);
         }
      }
      
      public final function method_99(param1:DisplayObject, param2:Boolean = true) : void
      {
         var _loc3_:class_961 = param1 as class_961;
         if(null != _loc3_)
         {
            this.var_2052.method_2058(_loc3_);
         }
         this.var_390.method_1694(param1,param2);
      }
      
      public final function method_1527(param1:DisplayObject) : void
      {
         this.var_1569.addChild(param1);
      }
      
      public final function method_1365(param1:DisplayObject) : void
      {
         if(param1.parent)
         {
            this.var_1569.removeChild(param1);
         }
      }
      
      public final function method_1102(param1:int = 16777215, param2:int = 2) : void
      {
         TweenMax.to(this.var_296,param2,{"tint":param1});
      }
      
      public final function method_2567(param1:int = 2) : void
      {
         var tweenTime:int = param1;
         TweenMax.to(this.var_296,tweenTime,{
            "alpha":0,
            "onComplete":function():void
            {
               if(alpha == 0)
               {
                  var_1393 = false;
               }
            }
         });
      }
      
      public final function method_2227(param1:int = 2) : void
      {
         var tweenTime:int = param1;
         TweenMax.to(this.var_296,tweenTime,{
            "alpha":1,
            "onComplete":function():void
            {
               if(alpha == 1)
               {
                  var_1393 = true;
               }
            }
         });
      }
      
      public final function method_683(param1:int = 2, param2:int = 16777215, param3:Number = 0.4) : void
      {
         this.var_296.method_2278(param1,param2,param3);
      }
      
      public final function method_1167(param1:int = 3, param2:int = 5000, param3:Function = null) : void
      {
         var elapse:int = 0;
         var irender:class_995 = null;
         var mrender:class_997 = null;
         var layer:Sprite = null;
         var timer:Timer = null;
         var scale:Number = NaN;
         var shake:Function = null;
         var intensity:int = param1;
         var duration:int = param2;
         var onComplete:Function = param3;
         shake = function(param1:TimerEvent):void
         {
            var _loc2_:int = intensity * 0.5;
            var _loc3_:int = irender.method_2121();
            var _loc4_:int = irender.method_2426();
            var _loc5_:int = _loc3_ + (Math.random() * intensity - _loc2_) * scale;
            var _loc6_:int = _loc4_ + (Math.random() * intensity - _loc2_) * scale;
            var _loc7_:int = _loc3_ + (Math.random() * intensity - _loc2_) * scale;
            var _loc8_:int = _loc4_ + (Math.random() * intensity - _loc2_) * scale;
            layer.x = _loc5_;
            layer.y = _loc6_;
            irender.method_34(_loc5_,_loc6_);
            mrender.method_34(_loc7_,_loc8_);
            if(getTimer() - elapse >= duration)
            {
               timer.removeEventListener(TimerEvent.TIMER,shake);
               complete();
            }
         };
         if(this.var_1630)
         {
            return;
         }
         var freq:int = 9;
         elapse = getTimer();
         irender = this.var_390;
         mrender = this.var_270;
         layer = this.var_583;
         timer = this.var_1630 = new Timer(freq,0);
         scale = var_99;
         var complete:Function = this.method_2326;
         timer.addEventListener(TimerEvent.TIMER,shake);
         timer.start();
      }
      
      private final function method_2326() : void
      {
         this.var_1630.stop();
         this.var_1630 = null;
      }
      
      public final function method_451() : void
      {
         var _loc1_:int = class_51.var_39;
         var _loc2_:int = class_51.var_40;
         this.var_678.scrollRect = new Rectangle(this.var_678.scrollRect.x,this.var_678.scrollRect.y,_loc1_,_loc2_);
         this.var_600.scrollRect = new Rectangle(this.var_600.scrollRect.x,this.var_600.scrollRect.y,_loc1_,_loc2_);
         if(class_41.name_3.name_17 == class_41.const_103)
         {
            this.var_296.method_2370 = _loc1_;
            this.var_296.method_2676 = _loc2_;
            this.var_296.method_395();
         }
         var _loc3_:class_328 = class_328.method_21();
         if(_loc3_.var_1449)
         {
            _loc3_.method_419();
         }
         class_209.method_726(var_99);
      }
      
      public final function method_242() : class_995
      {
         return this.var_390;
      }
      
      public final function method_2515() : int
      {
         return this.var_270.method_1663;
      }
      
      public final function method_2816() : int
      {
         return this.var_270.method_1908;
      }
      
      public final function method_270() : int
      {
         return this.var_390.method_270();
      }
      
      public final function method_260() : int
      {
         return this.var_390.method_260();
      }
      
      public function get method_117() : Number
      {
         return var_99;
      }
      
      public final function method_909() : Point
      {
         return this.var_390.method_1629();
      }
   }
}
