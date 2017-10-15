package package_22
{
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.DeckStatsComponent;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPopupVo;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.gems.class_759;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import package_103.class_1029;
   import package_111.class_741;
   import package_111.class_774;
   import package_14.class_47;
   import package_216.class_1575;
   import package_34.class_1526;
   import package_34.class_1611;
   import package_41.class_89;
   import package_6.class_14;
   import package_9.class_994;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   
   public final class class_832 implements class_14
   {
      
      public static const name_3:class_832 = new class_832();
       
      
      private var var_646:int = 0;
      
      public function class_832()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 11331;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(11331);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
      }
   }
}
