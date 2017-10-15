package package_9
{
   import com.bigpoint.seafight.model.vo.class_1031;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import package_107.class_1467;
   import package_185.class_1136;
   import package_6.class_14;
   import spark.components.Button;
   import spark.components.Label;
   
   public final class class_120 implements class_14
   {
      
      public static const name_3:class_120 = new class_120();
       
      
      private var var_646:int = 0;
      
      public var var_235:int = 0;
      
      public var var_8:int = 0;
      
      public var var_9:int = 0;
      
      public function class_120(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_235 = param3;
         this.var_8 = param2;
         this.var_9 = param1;
      }
      
      public function method_16() : int
      {
         return -1473;
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
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 8 % 16 | (65535 & this.var_646) << 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_235 = param1.readShort();
         this.var_235 = 65535 & ((65535 & this.var_235) >>> 8 % 16 | (65535 & this.var_235) << 16 - 8 % 16);
         this.var_235 = this.var_235 > 32767?int(this.var_235 - 65536):int(this.var_235);
         this.var_8 = param1.readByte();
         this.var_8 = 255 & ((255 & this.var_8) >>> 5 % 8 | (255 & this.var_8) << 8 - 5 % 8);
         this.var_8 = this.var_8 > 127?int(this.var_8 - 256):int(this.var_8);
         this.var_9 = param1.readByte();
         this.var_9 = 255 & ((255 & this.var_9) >>> 4 % 8 | (255 & this.var_9) << 8 - 4 % 8);
         this.var_9 = this.var_9 > 127?int(this.var_9 - 256):int(this.var_9);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-1473);
         param1.writeShort(65535 & ((65535 & 0) << 8 % 16 | (65535 & 0) >>> 16 - 8 % 16));
         param1.writeShort(65535 & ((65535 & this.var_235) << 8 % 16 | (65535 & this.var_235) >>> 16 - 8 % 16));
         param1.writeByte(255 & ((255 & this.var_8) << 5 % 8 | (255 & this.var_8) >>> 8 - 5 % 8));
         param1.writeByte(255 & ((255 & this.var_9) << 4 % 8 | (255 & this.var_9) >>> 8 - 4 % 8));
      }
   }
}
