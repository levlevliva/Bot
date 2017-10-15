package com.greensock.plugins
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.greensock.TweenLite;
   import flash.events.TimerEvent;
   import flash.media.SoundTransform;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import package_5.class_939;
   import package_6.class_14;
   import package_8.class_16;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.primitives.BitmapImage;
   
   public final class SoundTransformPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1.0;
       
      
      protected var _target:Object;
      
      protected var _st:SoundTransform;
      
      public function SoundTransformPlugin()
      {
         super();
         this.propName = "soundTransform";
         this.overwriteProps = ["soundTransform","volume"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:* = null;
         if(!param1.hasOwnProperty("soundTransform"))
         {
            return false;
         }
         this._target = param1;
         this._st = this._target.soundTransform;
         for(_loc4_ in param2)
         {
            addTween(this._st,_loc4_,this._st[_loc4_],param2[_loc4_],_loc4_);
         }
         return true;
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         updateTweens(param1);
         this._target.soundTransform = this._st;
      }
   }
}
