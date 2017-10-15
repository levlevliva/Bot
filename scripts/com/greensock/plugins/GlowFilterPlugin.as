package com.greensock.plugins
{
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import package_111.class_741;
   import package_111.class_774;
   import package_14.class_51;
   import package_34.class_1526;
   import package_4.class_11;
   import spark.components.gridClasses.GridLayer;
   
   public final class GlowFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1.0;
      
      private static var _propNames:Array = ["color","alpha","blurX","blurY","strength","quality","inner","knockout"];
       
      
      public function GlowFilterPlugin()
      {
         super();
         this.propName = "glowFilter";
         this.overwriteProps = ["glowFilter"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         _target = param1;
         _type = GlowFilter;
         initFilter(param2,new GlowFilter(16777215,0,0,0,Number(param2.strength) || Number(1),int(param2.quality) || 2,param2.inner,param2.knockout),_propNames);
         return true;
      }
   }
}
