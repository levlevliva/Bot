package package_42
{
   import com.bigpoint.seafight.tools.class_1025;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import flash.utils.Dictionary;
   import spark.components.HGroup;
   
   public final class class_959
   {
      
      public static const name_3:class_959 = new class_959();
      
      public static const const_60:int = 3;
      
      public static const const_48:int = 1;
      
      public static const const_59:int = 2;
      
      public static const const_52:int = 4;
      
      public static const const_514:int = 5;
      
      public static const const_466:int = 6;
      
      public static const const_533:int = 7;
      
      public static const const_522:int = 8;
       
      
      public const const_97:Dictionary = new Dictionary();
      
      public const const_120:Dictionary = new Dictionary();
      
      public const const_84:Dictionary = new Dictionary();
      
      public function class_959()
      {
         super();
         this.const_97[const_60] = -135;
         this.const_97[const_48] = 135;
         this.const_97[const_59] = -45;
         this.const_97[const_52] = 45;
         this.const_97[const_514] = 180;
         this.const_97[const_466] = 90;
         this.const_97[const_533] = 0;
         this.const_97[const_522] = -90;
         this.const_120[90] = const_466;
         this.const_120[135] = const_59;
         this.const_120[180] = const_533;
         this.const_120[-135] = const_52;
         this.const_120[-90] = const_522;
         this.const_120[-45] = const_48;
         this.const_120[0] = const_514;
         this.const_120[45] = const_60;
         this.const_84[const_60] = 8;
         this.const_84[const_48] = 6;
         this.const_84[const_59] = 2;
         this.const_84[const_52] = 4;
         this.const_84[const_514] = 7;
         this.const_84[const_466] = 1;
         this.const_84[const_533] = 3;
         this.const_84[const_522] = 5;
      }
      
      public static function method_1685(param1:Number) : int
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:class_959 = class_959.name_3;
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_.const_97)
         {
            _loc3_.push(_loc4_);
         }
         param1 = class_1025.method_2779(param1,_loc3_);
         _loc5_ = _loc2_.const_120[param1];
         return _loc5_;
      }
      
      public static function method_2961(param1:int) : Boolean
      {
         return param1 == 1 || param1 == 2 || param1 == 8;
      }
      
      public static function method_2023(param1:int) : Boolean
      {
         return param1 == 4 || param1 == 5 || param1 == 6;
      }
   }
}
