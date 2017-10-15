package com.bigpoint.seafight.tools
{
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.model.inventory.vo.premium.DefaultPremiumGood_VO;
   import com.bigpoint.seafight.model.vo.class_1524;
   import com.bigpoint.seafight.net.events.class_178;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.TextTuple;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ShipEquipmentTargetList;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bit101.components.ScrollPane;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_496;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_111.class_742;
   import package_111.class_745;
   import package_14.class_200;
   import package_14.class_220;
   import package_14.class_286;
   import package_14.class_47;
   import package_179.class_1064;
   import package_179.class_1262;
   import package_23.class_42;
   import package_4.class_11;
   import package_48.class_996;
   import package_5.class_984;
   import package_51.class_148;
   import package_54.class_1006;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichEditableText;
   import spark.primitives.Rect;
   
   public final class class_946
   {
      
      public static const const_951:int = 0;
      
      public static const const_846:int = 1;
      
      public static const const_1137:Object = {
         "colorize":16777215,
         "amount":0.6,
         "brightness":2
      };
       
      
      public function class_946()
      {
         super();
      }
      
      public static function name_23(param1:Sprite, param2:int = -1, param3:int = 0, param4:int = 16777215) : TweenMax
      {
         var _loc5_:TweenMax = null;
         switch(param3)
         {
            case const_846:
               param1.alpha = 0;
               _loc5_ = TweenMax.fromTo(param1,0.5,{"alpha":0},{
                  "alpha":1,
                  "yoyo":true,
                  "repeat":param2
               });
               break;
            case const_951:
            default:
               _loc5_ = TweenMax.fromTo(param1 as DisplayObject,0.5,{"colorMatrixFilter":{"amount":0}},{
                  "colorMatrixFilter":{
                     "colorize":param4,
                     "amount":0.6,
                     "brightness":2
                  },
                  "yoyo":true,
                  "repeat":param2
               });
         }
         return _loc5_;
      }
      
      public static function method_64(param1:Sprite) : void
      {
         TweenMax.killTweensOf(param1,true);
         if(!param1.filters)
         {
            return;
         }
         var _loc2_:int = param1.filters.length;
         var _loc3_:Array = param1.filters;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            if(_loc3_[_loc4_] is ColorMatrixFilter)
            {
               _loc3_.splice(_loc4_,1);
               param1.filters = _loc3_;
               break;
            }
            _loc4_++;
         }
      }
      
      public static function method_2890(param1:Sprite, param2:int) : void
      {
         var _loc5_:Object = null;
         if(!param1.filters)
         {
            return;
         }
         var _loc3_:int = param1.filters.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc3_[_loc4_] is ColorMatrixFilter)
            {
               _loc5_ = {
                  "colorize":param2,
                  "amount":0.6,
                  "brightness":2
               };
               _loc3_[_loc4_] = _loc5_;
            }
            _loc4_++;
         }
      }
   }
}
