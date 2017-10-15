package com.bigpoint.seafight.tools
{
   import flash.geom.Point;
   import package_5.class_939;
   
   public function getMapFieldPoint(param1:int, param2:int, param3:Point = null) : Point
   {
      if(null == param3)
      {
         param3 = new Point();
      }
      param3.x = Math.round(0.5 / class_939.const_35 * param1 + 0.5 / class_939.const_37 * param2);
      param3.y = Math.round(0.5 / class_939.const_35 * param1 - 0.5 / class_939.const_37 * param2);
      return param3;
   }
}
