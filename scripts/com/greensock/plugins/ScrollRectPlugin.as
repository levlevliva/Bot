package com.greensock.plugins
{
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.utils.getTimer;
   import package_14.class_51;
   import package_50.class_141;
   import spark.primitives.Rect;
   
   public final class ScrollRectPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1.0;
       
      
      protected var _target:DisplayObject;
      
      protected var _rect:Rectangle;
      
      public function ScrollRectPlugin()
      {
         super();
         this.propName = "scrollRect";
         this.overwriteProps = ["scrollRect"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:* = null;
         var _loc5_:Rectangle = null;
         if(!(param1 is DisplayObject))
         {
            return false;
         }
         this._target = param1 as DisplayObject;
         if(this._target.scrollRect != null)
         {
            this._rect = this._target.scrollRect;
         }
         else
         {
            _loc5_ = this._target.getBounds(this._target);
            this._rect = new Rectangle(0,0,_loc5_.width + _loc5_.x,_loc5_.height + _loc5_.y);
         }
         for(_loc4_ in param2)
         {
            addTween(this._rect,_loc4_,this._rect[_loc4_],param2[_loc4_],_loc4_);
         }
         return true;
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         updateTweens(param1);
         this._target.scrollRect = this._rect;
      }
   }
}
