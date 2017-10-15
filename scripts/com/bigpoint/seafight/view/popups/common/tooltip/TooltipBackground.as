package com.bigpoint.seafight.view.popups.common.tooltip
{
   import com.bigpoint.seafight.model.vo.class_1192;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.greensock.TweenLite;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import package_14.class_51;
   import package_14.class_88;
   import package_32.class_64;
   import package_5.class_123;
   import package_5.class_22;
   import package_51.class_148;
   import package_54.class_319;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public final class TooltipBackground extends Rect
   {
       
      
      public function TooltipBackground()
      {
         super();
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.stroke = this._TooltipBackground_SolidColorStroke1_c();
         this.fill = this._TooltipBackground_SolidColor1_c();
      }
      
      private final function _TooltipBackground_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 4274727;
         return _loc1_;
      }
      
      private final function _TooltipBackground_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 0;
         _loc1_.alpha = 0.8;
         return _loc1_;
      }
   }
}
