package com.greensock.plugins
{
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_47;
   import package_14.class_96;
   import package_170.class_979;
   import package_171.class_1276;
   import package_175.class_1593;
   import package_42.class_98;
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
   import package_72.class_203;
   import package_88.class_1093;
   import package_92.class_995;
   import package_92.class_997;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public final class ColorTransformPlugin extends TintPlugin
   {
      
      public static const API:Number = 1.0;
       
      
      public function ColorTransformPlugin()
      {
         super();
         this.propName = "colorTransform";
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:ColorTransform = null;
         var _loc6_:* = null;
         var _loc7_:Number = NaN;
         var _loc5_:ColorTransform = new ColorTransform();
         if(param1 is DisplayObject)
         {
            _transform = DisplayObject(param1).transform;
            _loc4_ = _transform.colorTransform;
         }
         else if(param1 is ColorTransform)
         {
            _loc4_ = param1 as ColorTransform;
         }
         else
         {
            return false;
         }
         _loc5_.concat(_loc4_);
         for(_loc6_ in param2)
         {
            if(_loc6_ == "tint" || _loc6_ == "color")
            {
               if(param2[_loc6_] != null)
               {
                  _loc5_.color = int(param2[_loc6_]);
               }
            }
            else if(!(_loc6_ == "tintAmount" || _loc6_ == "exposure" || _loc6_ == "brightness"))
            {
               _loc5_[_loc6_] = param2[_loc6_];
            }
         }
         if(!isNaN(param2.tintAmount))
         {
            _loc7_ = param2.tintAmount / (1 - (_loc5_.redMultiplier + _loc5_.greenMultiplier + _loc5_.blueMultiplier) / 3);
            _loc5_.redOffset = _loc5_.redOffset * _loc7_;
            _loc5_.greenOffset = _loc5_.greenOffset * _loc7_;
            _loc5_.blueOffset = _loc5_.blueOffset * _loc7_;
            _loc5_.redMultiplier = _loc5_.greenMultiplier = _loc5_.blueMultiplier = 1 - param2.tintAmount;
         }
         else if(!isNaN(param2.exposure))
         {
            _loc5_.redOffset = _loc5_.greenOffset = _loc5_.blueOffset = 255 * (param2.exposure - 1);
            _loc5_.redMultiplier = _loc5_.greenMultiplier = _loc5_.blueMultiplier = 1;
         }
         else if(!isNaN(param2.brightness))
         {
            _loc5_.redOffset = _loc5_.greenOffset = _loc5_.blueOffset = Math.max(0,(param2.brightness - 1) * 255);
            _loc5_.redMultiplier = _loc5_.greenMultiplier = _loc5_.blueMultiplier = 1 - Math.abs(param2.brightness - 1);
         }
         init(_loc4_,_loc5_);
         return true;
      }
   }
}
