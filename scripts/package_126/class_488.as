package package_126
{
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_41.class_93;
   import package_46.class_1455;
   import package_6.class_14;
   import package_69.class_978;
   import package_9.class_120;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.components.VGroup;
   
   public final class class_488 implements class_14
   {
      
      public static const name_3:class_488 = new class_488();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public function class_488(param1:int = 0)
      {
         super();
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return 14445;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 4 % 16 | (65535 & this.var_646) << 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(14445);
         param1.writeShort(65535 & ((65535 & 0) << 4 % 16 | (65535 & 0) >>> 16 - 4 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
