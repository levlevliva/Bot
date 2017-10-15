package com.greensock.plugins
{
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BlurFilter;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import package_5.class_123;
   import package_50.complete;
   import package_50.duration;
   import package_50.elapse;
   import package_50.intensity;
   import package_50.irender;
   import package_50.layer;
   import package_50.mrender;
   import package_50.scale;
   import package_50.shake;
   import package_50.timer;
   import package_92.class_336;
   import package_92.class_995;
   import package_92.class_997;
   import spark.components.Group;
   
   public final class BlurFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1.0;
      
      private static var _propNames:Array = ["blurX","blurY","quality"];
       
      
      public function BlurFilterPlugin()
      {
         super();
         this.propName = "blurFilter";
         this.overwriteProps = ["blurFilter"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         _target = param1;
         _type = BlurFilter;
         initFilter(param2,new BlurFilter(0,0,int(param2.quality) || 2),_propNames);
         return true;
      }
   }
}
