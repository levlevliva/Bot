package com.greensock.plugins
{
   import com.adobe.utils.StringUtil;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.spymenu.SpyTableEvent;
   import com.bit101.components.ColorChooser;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import mx.collections.ArrayList;
   import mx.graphics.GradientEntry;
   import net.bigpoint.seafight.com.module.guild.GuildLogAction;
   import package_10.class_202;
   import package_14.class_47;
   import package_190.class_1181;
   import package_34.class_1499;
   import package_55.class_1007;
   import spark.components.Label;
   import spark.effects.animation.Animation;
   import spark.primitives.Rect;
   
   public final class HexColorsPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1.0;
       
      
      protected var _colors:Array;
      
      public function HexColorsPlugin()
      {
         super();
         this.propName = "hexColors";
         this.overwriteProps = [];
         this._colors = [];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc4_:* = null;
         for(_loc4_ in param2)
         {
            this.initColor(param1,_loc4_,uint(param1[_loc4_]),uint(param2[_loc4_]));
         }
         return true;
      }
      
      public final function initColor(param1:Object, param2:String, param3:uint, param4:uint) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param3 != param4)
         {
            _loc5_ = param3 >> 16;
            _loc6_ = param3 >> 8 & 255;
            _loc7_ = param3 & 255;
            this._colors[this._colors.length] = [param1,param2,_loc5_,(param4 >> 16) - _loc5_,_loc6_,(param4 >> 8 & 255) - _loc6_,_loc7_,(param4 & 255) - _loc7_];
            this.overwriteProps[this.overwriteProps.length] = param2;
         }
      }
      
      override public function killProps(param1:Object) : void
      {
         var _loc2_:int = this._colors.length - 1;
         while(_loc2_ > -1)
         {
            if(param1[this._colors[_loc2_][1]] != undefined)
            {
               this._colors.splice(_loc2_,1);
            }
            _loc2_--;
         }
         super.killProps(param1);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc3_:Array = null;
         var _loc2_:int = this._colors.length;
         while(--_loc2_ > -1)
         {
            _loc3_ = this._colors[_loc2_];
            _loc3_[0][_loc3_[1]] = _loc3_[2] + param1 * _loc3_[3] << 16 | _loc3_[4] + param1 * _loc3_[5] << 8 | _loc3_[6] + param1 * _loc3_[7];
         }
      }
   }
}
