package package_14
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import flash.utils.IDataInput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_34.class_115;
   import package_41.class_93;
   import spark.components.HGroup;
   import spark.components.RichText;
   import spark.primitives.Rect;
   
   public final class class_97 extends class_88
   {
      
      public static const const_2:String = "seafight.instances.";
       
      
      public function class_97(param1:String, param2:String, param3:Function)
      {
         super(param1,param2,param3);
      }
      
      public static function method_27(param1:int) : String
      {
         var _loc2_:String = class_47.method_2452.method_121(const_2 + param1,"Name");
         return !!_loc2_?_loc2_:param1.toString();
      }
   }
}
