package com.bigpoint.seafight.tools
{
   import flash.geom.Point;
   import package_5.class_939;
   
   public function getMapPoint(param1:int, param2:int, param3:Point = null) : Point
   {
      if(null == param3)
      {
         param3 = new Point();
      }
      param3.x = (param1 + param2) * class_939.const_35;
      param3.y = (param1 - param2) * class_939.const_37;
      return param3;
   }
}
