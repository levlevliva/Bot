package package_25
{
   import com.bigpoint.seafight.tools.class_1483;
   import com.bigpoint.seafight.view.popups.common.table.TableSkinInnerClass1;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import package_14.class_47;
   import package_14.class_51;
   import package_17.class_37;
   import package_36.class_100;
   import package_54.class_159;
   import spark.primitives.BitmapImage;
   
   public final class class_291 extends Sprite
   {
      
      private static const const_80:ILogger = Log.getLogger("DebugEntryRemoveLogger");
       
      
      private var var_1100:Array;
      
      public function class_291()
      {
         this.var_1100 = new Array();
         super();
      }
      
      public final function method_1463() : void
      {
         var _loc3_:* = null;
         var _loc4_:class_159 = null;
         this.method_2131();
         var _loc1_:Object = class_47.method_29.method_282();
         var _loc2_:int = 1;
         for(_loc3_ in _loc1_)
         {
            _loc4_ = this.method_325(_loc2_ + ". " + _loc1_[_loc3_].shipVO.user_id + " | " + _loc1_[_loc3_].shipVO.nickname,_loc1_[_loc3_]);
            _loc4_.x = class_51.var_39;
            _loc4_.y = 5 + 20 * _loc2_;
            this.var_1100.push(addChild(_loc4_));
            _loc2_++;
         }
      }
      
      private final function method_325(param1:String, param2:class_100) : class_159
      {
         var _loc3_:MovieClip = new MovieClip();
         _loc3_.data = param2;
         var _loc4_:TextField = new TextField();
         _loc4_.width = 200;
         _loc4_.height = 20;
         _loc4_.textColor = 16777215;
         _loc4_.borderColor = 16777215;
         _loc4_.border = true;
         _loc4_.text = param1;
         _loc3_.addChild(_loc4_);
         var _loc5_:class_159 = new class_159(_loc3_);
         _loc5_.addEventListener(MouseEvent.CLICK,this.method_1104);
         return _loc5_;
      }
      
      private final function method_1104(param1:MouseEvent) : void
      {
         class_37.method_21().method_525((param1.target.parent.data as class_100).name_6);
      }
      
      private final function method_2131() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.var_1100.length)
         {
            this.var_1100[_loc1_].removeEventListener(MouseEvent.CLICK,this.method_1104);
            removeChild(this.var_1100[_loc1_]);
            _loc1_++;
         }
         this.var_1100.splice(0);
      }
   }
}
