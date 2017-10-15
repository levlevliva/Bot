package package_48
{
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocketLockClosed;
   import mx.binding.BindingManager;
   import mx.events.FlexMouseEvent;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_14.class_1535;
   import package_14.class_51;
   import package_158.class_703;
   import package_57.class_171;
   import spark.components.Group;
   import spark.components.Image;
   
   public final class class_996 extends class_126
   {
      
      private static var name_55:class_996;
       
      
      public function class_996()
      {
         super(AmsAttributeType);
      }
      
      public static function method_124(param1:String) : int
      {
         return name_3.method_124(param1);
      }
      
      public static function method_27(param1:int) : String
      {
         return name_3.method_27(param1);
      }
      
      private static function get name_3() : class_996
      {
         return !!name_55?name_55:name_55 = new class_996();
      }
   }
}
