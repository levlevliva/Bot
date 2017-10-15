package package_172
{
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverview;
   import flash.display.Sprite;
   import flash.geom.Point;
   import mx.binding.Binding;
   import package_14.class_47;
   import package_14.class_51;
   import package_46.class_1224;
   import package_8.class_1240;
   import package_92.class_962;
   import spark.components.Group;
   
   public final class class_991 extends class_962
   {
       
      
      public function class_991(param1:int, param2:int)
      {
         super();
         this.mouseEnabled = false;
         this.mouseChildren = false;
         var _loc3_:Number = 1;
         var _loc4_:Number = 1 - _loc3_;
         var _loc5_:Number = class_51.var_39 / 2;
         var _loc6_:Number = class_51.var_40 / 2;
         var _loc7_:Number = (param1 + param2) * 20;
         var _loc8_:Number = (param1 - param2) * 14;
         var _loc9_:Point = class_47.name_37.var_120;
         var _loc10_:int = _loc9_.x;
         var _loc11_:int = _loc9_.y;
         this.x = (_loc7_ - _loc10_) * _loc3_ + _loc5_ * _loc4_ + _loc10_;
         this.y = (_loc8_ - _loc11_) * _loc3_ + _loc6_ * _loc4_ + _loc11_;
         var _loc12_:uint = 65280;
         alpha = 0.3;
         graphics.beginFill(_loc12_,1);
         graphics.drawEllipse(0,0,20,14);
         graphics.endFill();
      }
   }
}
