package com.bigpoint.seafight.tools
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public function center(param1:Sprite) : void
   {
      var _loc3_:DisplayObject = null;
      var _loc2_:int = 0;
      while(_loc2_ < param1.numChildren)
      {
         _loc3_ = param1.getChildAt(_loc2_);
         _loc3_.x = -_loc3_.width * 0.5;
         _loc3_.y = -_loc3_.height * 0.5;
         _loc2_++;
      }
   }
}
