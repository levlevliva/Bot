package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuFoundTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuFoundTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuFoundTabVo;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import package_14.class_47;
   import package_14.class_94;
   import package_211.class_1369;
   import package_5.class_1239;
   import package_51.class_1355;
   import package_8.class_1240;
   import spark.filters.GlowFilter;
   import spark.primitives.Rect;
   
   public final class class_1001
   {
       
      
      public function class_1001()
      {
         super();
      }
      
      public final function method_1205(param1:DisplayObject, param2:DisplayObject, param3:Number = 0) : Rectangle
      {
         var _loc4_:Rectangle = null;
         var _loc5_:DisplayObjectContainer = null;
         var _loc6_:Rectangle = null;
         var _loc7_:Rectangle = null;
         var _loc8_:Boolean = false;
         var _loc9_:Rectangle = null;
         var _loc10_:BitmapData = null;
         var _loc11_:BitmapData = null;
         var _loc12_:uint = 0;
         var _loc13_:Number = NaN;
         if(param1.parent == param2.parent)
         {
            _loc5_ = param1.parent;
            _loc6_ = param1.getBounds(_loc5_);
            _loc7_ = param2.getBounds(_loc5_);
            _loc8_ = _loc6_.intersects(_loc7_);
            if(_loc8_)
            {
               _loc9_ = _loc6_.union(_loc7_);
               _loc10_ = this.method_1412(param1,_loc9_,BitmapDataChannel.RED,_loc6_);
               _loc11_ = this.method_1412(param2,_loc9_,BitmapDataChannel.GREEN,_loc7_);
               _loc10_.draw(_loc11_,new Matrix(),new ColorTransform(),BlendMode.LIGHTEN);
               if(param3 > 1)
               {
                  param3 = 1;
               }
               if(param3 < 0)
               {
                  param3 = 0;
               }
               if(param3 == 0)
               {
                  _loc12_ = 65792;
               }
               else
               {
                  _loc13_ = Math.round(param3 * 255);
                  _loc12_ = _loc13_ << 16 | _loc13_ << 8 | 0;
               }
               _loc4_ = _loc10_.getColorBoundsRect(_loc12_,_loc12_);
               _loc4_.x = _loc4_.x + _loc9_.x;
               _loc4_.y = _loc4_.y + _loc9_.y;
               return _loc4_;
            }
         }
         return _loc4_;
      }
      
      private final function method_1412(param1:DisplayObject, param2:Rectangle, param3:uint, param4:Rectangle) : BitmapData
      {
         var _loc5_:BitmapData = new BitmapData(param2.width,param2.height,true,0);
         var _loc6_:Matrix = new Matrix();
         var _loc7_:Number = param1.x - param4.x;
         var _loc8_:Number = param1.y - param4.y;
         var _loc9_:Number = param4.x + _loc7_ - param2.x;
         var _loc10_:Number = param4.y + _loc8_ - param2.y;
         _loc6_.translate(_loc9_,_loc10_);
         _loc5_.draw(param1,_loc6_);
         var _loc11_:BitmapData = new BitmapData(param2.width,param2.height,false,0);
         _loc11_.copyChannel(_loc5_,_loc5_.rect,new Point(0,0),BitmapDataChannel.ALPHA,param3);
         return _loc11_;
      }
      
      public final function method_2945(param1:DisplayObject, param2:DisplayObject, param3:Number = 0) : Point
      {
         var _loc4_:Point = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc5_:Rectangle = this.method_1205(param1,param2,param3);
         if(_loc5_ != null && _loc5_.size.length > 0)
         {
            _loc6_ = (_loc5_.left + _loc5_.right) / 2;
            _loc7_ = (_loc5_.top + _loc5_.bottom) / 2;
            _loc4_ = new Point(_loc6_,_loc7_);
         }
         return _loc4_;
      }
      
      public final function method_2606(param1:DisplayObject, param2:DisplayObject, param3:Number = 0) : Boolean
      {
         var _loc4_:Rectangle = this.method_1205(param1,param2,param3);
         if(_loc4_ != null && _loc4_.size.length > 0)
         {
            return true;
         }
         return false;
      }
   }
}
