package package_3
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkinBold;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_111.class_696;
   import package_14.class_47;
   import package_140.class_546;
   import package_166.class_961;
   import package_2.class_9;
   import package_36.class_100;
   import package_6.class_14;
   import package_69.class_1052;
   import package_69.class_978;
   import spark.components.TextInput;
   import spark.components.VGroup;
   
   public final class class_553 implements class_9
   {
       
      
      public function class_553()
      {
         super();
      }
      
      public function method_248(param1:class_14) : void
      {
         var _loc2_:class_546 = param1 as class_546;
         MultiPopUpManager.addSimpleOK_Popup(class_47.method_22.method_20(_loc2_.var_569));
      }
   }
}
