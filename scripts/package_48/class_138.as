package package_48
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ItemRenderer.ToolTipConditionsItemRenderer;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.groupmap.GroupMapType;
   import package_14.class_47;
   import spark.components.VGroup;
   
   public final class class_138 extends class_126
   {
      
      private static var name_55:class_138;
       
      
      public function class_138()
      {
         super(GroupMapType);
      }
      
      public static function get name_3() : class_138
      {
         return !!name_55?name_55:name_55 = new class_138();
      }
   }
}
