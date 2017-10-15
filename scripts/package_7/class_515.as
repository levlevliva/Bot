package package_7
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.IVisualElement;
   import mx.events.FlexEvent;
   import package_101.class_566;
   import package_107.class_1467;
   import package_111.class_741;
   import package_111.class_774;
   import package_14.class_51;
   import package_14.class_96;
   import package_171.class_1058;
   import package_214.class_1559;
   import package_29.class_143;
   import package_29.class_144;
   import package_34.class_1526;
   import package_47.class_930;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridLayer;
   import spark.primitives.Rect;
   
   public final class class_515 implements class_14
   {
      
      public static const name_3:class_515 = new class_515();
       
      
      private var var_646:int = 0;
      
      public var var_717:Number = 0;
      
      public var var_303:int = 0;
      
      public var name_10:int = 0;
      
      public var var_704:Boolean = false;
      
      public var var_648:Boolean = false;
      
      public var var_682:Number = 0;
      
      public var var_292:int = 0;
      
      public var var_158:int = 0;
      
      public function class_515(param1:Number = 0, param2:Number = 0, param3:int = 0, param4:int = 0, param5:Boolean = false, param6:int = 0, param7:Boolean = false, param8:int = 0)
      {
         super();
         this.var_717 = param2;
         this.var_303 = param4;
         this.name_10 = param8;
         this.var_704 = param7;
         this.var_648 = param5;
         this.var_682 = param1;
         this.var_292 = param3;
         this.var_158 = param6;
      }
      
      public function method_16() : int
      {
         return 31533;
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
         return 28;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_717 = param1.readDouble();
         this.var_303 = param1.readInt();
         this.var_303 = this.var_303 >>> 15 % 32 | this.var_303 << 32 - 15 % 32;
         this.name_10 = param1.readByte();
         this.name_10 = 255 & ((255 & this.name_10) << 10 % 8 | (255 & this.name_10) >>> 8 - 10 % 8);
         this.name_10 = this.name_10 > 127?int(this.name_10 - 256):int(this.name_10);
         this.var_704 = param1.readBoolean();
         this.var_648 = param1.readBoolean();
         this.var_682 = param1.readDouble();
         this.var_292 = param1.readInt();
         this.var_292 = this.var_292 << 16 % 32 | this.var_292 >>> 32 - 16 % 32;
         this.var_158 = param1.readByte();
         this.var_158 = 255 & ((255 & this.var_158) >>> 15 % 8 | (255 & this.var_158) << 8 - 15 % 8);
         this.var_158 = this.var_158 > 127?int(this.var_158 - 256):int(this.var_158);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(31533);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         param1.writeDouble(this.var_717);
         param1.writeInt(this.var_303 << 15 % 32 | this.var_303 >>> 32 - 15 % 32);
         param1.writeByte(255 & ((255 & this.name_10) >>> 10 % 8 | (255 & this.name_10) << 8 - 10 % 8));
         param1.writeBoolean(this.var_704);
         param1.writeBoolean(this.var_648);
         param1.writeDouble(this.var_682);
         param1.writeInt(this.var_292 >>> 16 % 32 | this.var_292 << 32 - 16 % 32);
         param1.writeByte(255 & ((255 & this.var_158) << 15 % 8 | (255 & this.var_158) >>> 8 - 15 % 8));
      }
   }
}
