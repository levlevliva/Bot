package package_90
{
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetStatsComponentVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetTrainerStatsListItemVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.shipselection.vo.SelectionVListItemGemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemStatListItemVo;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.collections.ArrayList;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_190.class_1181;
   import package_190.class_1469;
   import package_6.class_14;
   
   public final class class_308 implements class_14
   {
      
      public static const name_3:class_308 = new class_308();
       
      
      private var var_646:int = 0;
      
      public var name_11:int = 0;
      
      public function class_308(param1:int = 0)
      {
         super();
         this.name_11 = param1;
      }
      
      public function method_16() : int
      {
         return -16822;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_11 = param1.readShort();
         this.name_11 = 65535 & ((65535 & this.name_11) >>> 16 % 16 | (65535 & this.name_11) << 16 - 16 % 16);
         this.name_11 = this.name_11 > 32767?int(this.name_11 - 65536):int(this.name_11);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-16822);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         param1.writeShort(65535 & ((65535 & this.name_11) << 16 % 16 | (65535 & this.name_11) >>> 16 - 16 % 16));
      }
   }
}
