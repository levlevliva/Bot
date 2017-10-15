package package_88
{
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.userInterface.class_149;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_14.class_286;
   import package_14.class_47;
   import package_26.class_101;
   import package_34.class_107;
   import package_41.class_93;
   import package_5.class_123;
   import package_5.class_43;
   import package_54.class_1006;
   import spark.components.Group;
   import spark.components.RichText;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.primitives.Rect;
   
   public final class class_290 extends class_149
   {
      
      public static const const_134:String = "playerHP";
      
      public static const const_206:String = "playerEP";
      
      public static const const_174:String = "playerVSP";
      
      public static const const_250:String = "playerBP";
       
      
      private var var_373:Bitmap;
      
      private var var_436:TextField;
      
      private var var_522:class_1014;
      
      private var var_2277:int;
      
      private var var_2180:Boolean;
      
      private var var_2488:Number;
      
      private var var_701:int;
      
      private var var_85:StyleSheet;
      
      private var var_277:String;
      
      private var var_1279:Boolean;
      
      private var var_1319:DropShadowFilter;
      
      private var var_1718:TweenMax;
      
      public function class_290(param1:Bitmap)
      {
         this.var_1319 = new DropShadowFilter(2,45,0,0.7,0,0,2,3);
         super();
         mouseEnabled = false;
         this.var_373 = param1;
         addChild(this.var_373);
      }
      
      public final function method_303(param1:StyleSheet) : void
      {
         this.var_85 = param1;
      }
      
      public final function method_2219(param1:XML) : void
      {
         this.var_522 = new class_1014(new Number(param1.@width),new Number(param1.@height),new Number(param1.@thickness));
         this.var_522.visible = false;
         addChild(this.var_522);
         this.var_522.x = param1.@offset_x;
         this.var_522.y = param1.@offset_y;
         this.var_2488 = param1.@pulseVelocity;
         this.var_701 = param1.@pulseColor;
         this.var_2277 = param1.@color;
         this.var_2180 = param1.@hasPulse == "true";
      }
      
      public final function method_185(param1:Object) : void
      {
         this.var_436 = new TextField();
         this.var_436.multiline = param1.multiline == "true";
         this.var_436.selectable = param1.selectable == "true";
         this.var_436.mouseEnabled = param1.mouseEnabled == "true";
         this.var_436.autoSize = param1.autoSize;
         this.var_436.filters = [this.var_1319];
         this.var_436.defaultTextFormat = this.var_85.transform(param1);
         this.addChild(this.var_436);
      }
      
      public final function method_694(param1:String) : void
      {
         if(new Number(param1) < 0)
         {
            param1 = "0";
         }
         this.var_436.htmlText = param1;
         this.var_436.x = Math.round(this.var_373.width / 2 - this.var_436.width / 2);
         this.var_436.y = Math.round(this.var_373.height / 2 - this.var_436.height / 2);
      }
      
      public final function method_34(param1:Number = 0, param2:Number = 0) : void
      {
         var _loc3_:int = Math.round(100 / param2 * param1);
         if(_loc3_ > 100)
         {
            _loc3_ = 100;
         }
         else if(_loc3_ < 0)
         {
            _loc3_ = 0;
         }
         class_946.method_64(this.var_522);
         if(this.var_1718)
         {
            this.var_1718.kill();
         }
         if(this.var_1279)
         {
            this.var_1718 = class_946.name_23(this.var_522,5,2,16288256);
            this.var_1279 = false;
         }
         else if(_loc3_ < 20 && this.var_2180 && !this.var_1279)
         {
            this.var_1718 = class_946.name_23(this.var_522);
         }
         this.var_522.method_34(_loc3_,this.var_2277);
         this.var_522.visible = true;
      }
      
      public final function method_106(param1:String) : void
      {
         this.var_277 = param1;
      }
      
      public final function method_32() : String
      {
         return this.var_277;
      }
      
      public function get method_2991() : class_1014
      {
         return this.var_522;
      }
      
      public function set method_873(param1:Boolean) : void
      {
         this.var_1279 = param1;
      }
      
      public function get method_873() : Boolean
      {
         return this.var_1279;
      }
   }
}
