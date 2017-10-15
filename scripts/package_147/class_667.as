package package_147
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButton;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ShipEquipmentTargetList;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.SailShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.spymenu.WindowSettingsController;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.LocalConnection;
   import flash.system.Capabilities;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_607;
   import package_14.class_47;
   import package_14.class_51;
   import package_15.class_48;
   import package_170.class_979;
   import package_26.class_1061;
   import package_26.class_1088;
   import package_41.class_84;
   import package_5.class_43;
   import package_53.class_1100;
   import package_54.class_319;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public final class class_667 implements class_14
   {
      
      public static const name_3:class_667 = new class_667();
       
      
      private var var_646:int = 0;
      
      public var var_962:String = "";
      
      public function class_667(param1:String = "")
      {
         super();
         this.var_962 = param1;
      }
      
      public function method_16() : int
      {
         return -6095;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_962 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-6095);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         param1.writeUTF(this.var_962);
      }
   }
}
