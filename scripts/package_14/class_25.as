package package_14
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.VRule;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.target;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLVariables;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.graphics.GradientEntry;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.RichText;
   
   use namespace mx_internal;
   
   public final class class_25
   {
      
      public static const const_644:String = "RTVT";
      
      public static const const_834:Boolean = true;
      
      public static var var_1349:String;
       
      
      public function class_25()
      {
         super();
      }
      
      public static function method_2960(param1:URLVariables) : void
      {
         if(true == const_834)
         {
            param1[const_644] = var_1349;
         }
      }
      
      public static function method_2852() : URLVariables
      {
         var _loc1_:URLVariables = new URLVariables();
         if(true == const_834)
         {
            _loc1_[const_644] = var_1349;
         }
         return _loc1_;
      }
      
      public static function method_1723(param1:XML) : void
      {
         if(false == const_834)
         {
            return;
         }
         var _loc2_:String = String(param1[const_644]);
         if(_loc2_.length > 0)
         {
            var_1349 = _loc2_;
         }
      }
   }
}
