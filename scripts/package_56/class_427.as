package package_56
{
   import com.bigpoint.seafight.model.vo.class_1098;
   import com.bigpoint.seafight.net.events.class_1097;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import mx.binding.BindingManager;
   import package_102.class_359;
   import package_124.class_1311;
   import package_124.class_434;
   import package_14.class_51;
   import package_3.class_10;
   import package_46.class_1312;
   import package_6.class_14;
   import spark.components.VGroup;
   
   public final class class_427 extends class_10
   {
      
      private static var name_55:class_427;
       
      
      public function class_427()
      {
         super();
         method_23(class_359.name_3,this.method_2243);
         method_23(class_434.name_3,this.method_1710);
      }
      
      public static function get name_3() : class_427
      {
         if(name_55 == null)
         {
            name_55 = new class_427();
         }
         return name_55;
      }
      
      private final function method_2243(param1:class_14) : void
      {
         var _loc2_:class_359 = param1 as class_359;
         var _loc3_:class_1098 = new class_1098();
         _loc3_.name_7 = _loc2_.name_15;
         _loc3_.var_1140 = _loc2_.var_1511;
         _loc3_.var_2442 = _loc2_.var_1731;
         _loc3_.var_377 = _loc2_.var_377;
         _loc3_.var_569 = _loc2_.var_772;
         _loc3_.name_18 = _loc2_.var_237.split("#");
         var _loc4_:class_1097 = new class_1097(class_1097.var_1673);
         _loc4_.var_228 = _loc3_;
         dispatchEvent(_loc4_);
      }
      
      private final function method_1710(param1:class_14) : void
      {
         var _loc2_:class_434 = param1 as class_434;
         if(_loc2_.var_794 == class_1311.const_73)
         {
            class_1312.name_3.method_2430(_loc2_.var_757);
         }
      }
   }
}
