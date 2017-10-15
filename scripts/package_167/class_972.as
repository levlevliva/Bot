package package_167
{
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.LevelTooltipItemRenderer;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import package_23.class_42;
   import package_5.class_22;
   import package_9.class_91;
   
   public final class class_972
   {
       
      
      private var var_885:Array;
      
      private var var_1164:Point;
      
      public function class_972(param1:Vector.<class_91>)
      {
         var _loc4_:class_91 = null;
         super();
         this.var_885 = new Array();
         this.var_1164 = new Point();
         var _loc2_:int = !!param1?int(param1.length):0;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1[_loc3_];
            this.var_885.push(new Point(_loc4_.var_9,_loc4_.var_8));
            _loc3_++;
         }
      }
      
      public function get method_228() : int
      {
         return this.var_885.length;
      }
      
      public final function method_210(param1:int) : Point
      {
         return this.var_885[param1] as Point;
      }
      
      public final function method_372(param1:int) : Point
      {
         var _loc2_:Point = this.var_885[param1] as Point;
         return getMapPoint(_loc2_.x,_loc2_.y,this.var_1164);
      }
      
      public final function method_2921(param1:int, param2:Point) : void
      {
         this.var_885[param1] = param2;
      }
      
      public function get method_470() : Array
      {
         return this.var_885;
      }
      
      public function set method_470(param1:Array) : void
      {
         this.var_885 = param1;
      }
   }
}
