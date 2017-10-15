package package_22
{
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.tools.getMapFieldPoint;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.EquipSlotAmountDragDropInterface;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import com.bigpoint.seafight.view.popups.shipequipment.SailsEquipDragDropInterface;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_104.class_641;
   import package_14.class_102;
   import package_14.class_47;
   import package_23.class_42;
   import package_41.class_84;
   import package_5.class_12;
   import package_54.class_163;
   import package_6.class_14;
   import package_89.class_1138;
   import package_89.class_1378;
   import spark.components.Label;
   import spark.components.VGroup;
   
   public final class class_655 implements class_14
   {
      
      public static const name_3:class_655 = new class_655();
       
      
      private var var_646:int = 0;
      
      public var var_137:String = "";
      
      public var name_24:int = 0;
      
      public var var_15:Number = 0;
      
      public var var_1564:Boolean = false;
      
      public var var_6:int = 0;
      
      public function class_655(param1:String = "", param2:int = 0, param3:Number = 0, param4:int = 0, param5:Boolean = false)
      {
         super();
         this.var_137 = param1;
         this.name_24 = param4;
         this.var_15 = param3;
         this.var_1564 = param5;
         this.var_6 = param2;
      }
      
      public function method_16() : int
      {
         return 12886;
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
         return 19;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_137 = param1.readUTF();
         this.name_24 = param1.readInt();
         this.name_24 = this.name_24 << 1 % 32 | this.name_24 >>> 32 - 1 % 32;
         this.var_15 = param1.readDouble();
         this.var_1564 = param1.readBoolean();
         this.var_6 = param1.readInt();
         this.var_6 = this.var_6 << 10 % 32 | this.var_6 >>> 32 - 10 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(12886);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         param1.writeUTF(this.var_137);
         param1.writeInt(this.name_24 >>> 1 % 32 | this.name_24 << 32 - 1 % 32);
         param1.writeDouble(this.var_15);
         param1.writeBoolean(this.var_1564);
         param1.writeInt(this.var_6 >>> 10 % 32 | this.var_6 << 32 - 10 % 32);
      }
   }
}
