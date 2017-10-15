package package_52
{
   import com.bigpoint.seafight.tools.class_181;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import com.greensock.easing.Quad;
   import flash.display.DisplayObject;
   import flash.utils.Dictionary;
   
   public final class class_1010
   {
      
      private static const const_355:Dictionary = new Dictionary();
       
      
      public function class_1010()
      {
         super();
      }
      
      public static function method_1618(param1:DisplayObject) : void
      {
         var _loc3_:int = 16777215;
         var _loc4_:Number = 1;
         var _loc5_:Number = 2;
         var _loc6_:TimelineMax = method_1221(param1);
         if(_loc6_ == null)
         {
            _loc6_ = new TimelineMax();
         }
         const_355[param1] = _loc6_;
         _loc6_.clear();
         _loc6_.insertMultiple([TweenMax.to(param1,0.1,{"colorMatrixFilter":{
            "colorize":_loc3_,
            "ease":Quad.easeIn,
            "amount":_loc4_,
            "brightness":_loc5_
         }}),TweenMax.to(param1,0.1,{"colorMatrixFilter":{
            "colorize":0,
            "ease":Quad.easeOut,
            "amount":0,
            "brightness":1
         }})],0,TweenAlign.SEQUENCE);
         _loc6_.repeat = -1;
      }
      
      public static function method_1221(param1:DisplayObject) : TimelineMax
      {
         var _loc2_:TimelineMax = const_355[param1];
         if(_loc2_ != null)
         {
            _loc2_.clear();
            class_181.method_1155([param1]);
            delete const_355[param1];
         }
         return _loc2_;
      }
   }
}
