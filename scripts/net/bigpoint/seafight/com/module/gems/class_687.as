package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_34.class_1499;
   import package_6.class_14;
   import spark.components.VScrollBar;
   
   public final class class_687 implements class_14
   {
      
      public static const name_3:class_687 = new class_687();
       
      
      private var var_646:int = 0;
      
      public var var_114:int = 0;
      
      public function class_687(param1:int = 0)
      {
         super();
         this.var_114 = param1;
      }
      
      public function method_16() : int
      {
         return -9968;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_114 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-9968);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         param1.writeShort(this.var_114);
      }
   }
}
