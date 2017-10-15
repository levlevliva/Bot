package com.greensock.plugins
{
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.greensock.TweenLite;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import package_152.class_937;
   import package_54.class_163;
   import package_9.class_120;
   
   public final class BezierThroughPlugin extends BezierPlugin
   {
      
      public static const API:Number = 1.0;
       
      
      public function BezierThroughPlugin()
      {
         super();
         this.propName = "bezierThrough";
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if(!(param2 is Array))
         {
            return false;
         }
         init(param3,param2 as Array,true);
         return true;
      }
   }
}
