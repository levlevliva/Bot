package package_152
{
   import com.bigpoint.seafight.model.vo.class_1525;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.table.TableSkinInnerClass4;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ShipGemsInventory;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import package_14.class_88;
   import package_26.class_1102;
   import package_26.class_1523;
   import package_41.class_93;
   import package_5.class_12;
   import package_54.class_319;
   import package_56.class_368;
   import package_6.class_14;
   import package_90.class_316;
   import spark.components.Group;
   
   public class class_611 implements class_14
   {
      
      public static const name_3:class_611 = new class_611();
       
      
      private var var_646:int = 0;
      
      public function class_611()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 2037;
      }
      
      public function method_17() : int
      {
         return 0;
      }
      
      public function method_18() : int
      {
         return this.var_646;
      }
      
      public function method_19() : int
      {
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(2037);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
      }
   }
}
