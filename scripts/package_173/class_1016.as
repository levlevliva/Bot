package package_173
{
   import com.bigpoint.seafight.model.vo.class_320;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_131.class_573;
   import package_41.class_84;
   import package_51.class_1005;
   import package_54.class_162;
   import package_9.class_91;
   
   public final class class_1016 extends Sprite
   {
      
      private static const const_1710:int = 75;
       
      
      private var var_561:Sprite;
      
      private var var_2167:Number = 1;
      
      private var var_1051:Number;
      
      private var var_1145:Number;
      
      private var var_1294:Number;
      
      private var var_2170:Number = 0;
      
      private var var_2196:Number = 0.017453292519943295;
      
      private var var_2191:int;
      
      private var var_1409:Timer;
      
      private var var_1144:Timer;
      
      private var var_2397:int;
      
      private var var_1727:int;
      
      private var var_401:class_320;
      
      private var var_602:class_162;
      
      public function class_1016(param1:class_162, param2:Number, param3:Number, param4:class_320)
      {
         super();
         mouseEnabled = false;
         this.var_1145 = param2;
         this.var_1294 = param3;
         this.var_1051 = Math.sqrt(this.var_1145 * this.var_1145 + this.var_1294 * this.var_1294) / 2;
         this.var_401 = param4;
         this.var_602 = param1;
         this.method_1983();
      }
      
      private final function method_1983() : void
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(16777215);
         _loc1_.graphics.drawRect(0,0,this.var_1145,this.var_1294);
         _loc1_.graphics.endFill();
         mask = _loc1_;
         addChild(_loc1_);
      }
      
      public final function method_66(param1:int) : void
      {
         this.var_602.method_366 = true;
         this.var_2191 = param1;
         this.var_1727 = getTimer();
         this.var_2397 = 0;
         this.var_1144 = new Timer(const_1710);
         this.var_1144.addEventListener(TimerEvent.TIMER,this.method_34);
         this.var_1144.start();
         this.var_1409 = new Timer(param1,1);
         this.var_1409.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_1013);
         this.var_1409.start();
         this.var_561 = new Sprite();
         addChild(this.var_561);
         this.var_561.x = this.var_1145 / 2;
         this.var_561.y = this.var_1294 / 2;
         this.var_561.rotation = 0;
      }
      
      private final function method_1013(param1:TimerEvent) : void
      {
         this.var_1144.removeEventListener(TimerEvent.TIMER,this.method_34);
         this.var_1409.removeEventListener(TimerEvent.TIMER_COMPLETE,this.method_1013);
         mask = null;
         var _loc2_:class_1005 = new class_1005(class_1005.const_506);
         _loc2_.name_22 = this.var_401;
         dispatchEvent(_loc2_);
      }
      
      private final function method_34(param1:Event) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:Number = 360;
         this.var_2170 = 360 / this.var_2191 * (getTimer() - this.var_1727);
         this.var_561.graphics.clear();
         this.var_561.graphics.beginFill(7829367,0.7);
         this.var_561.graphics.lineTo(0,-this.var_1051);
         while(_loc2_ - this.var_2167 >= -this.var_2170)
         {
            _loc2_ = _loc2_ - this.var_2167;
            _loc3_ = this.var_1051 * Math.sin(_loc2_ * this.var_2196);
            _loc4_ = -this.var_1051 * Math.cos(_loc2_ * this.var_2196);
            this.var_561.graphics.lineTo(_loc3_,_loc4_);
         }
         this.var_561.graphics.endFill();
      }
      
      public final function method_71() : void
      {
         this.var_602.method_366 = false;
         removeChild(this.var_561);
      }
   }
}
