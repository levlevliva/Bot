package package_7
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BlueButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotAmountItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.common.SlotsIndicator;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import package_14.class_200;
   import package_14.class_47;
   import package_14.class_51;
   import package_175.class_1593;
   import package_23.class_42;
   import package_41.class_93;
   import package_42.class_959;
   import package_42.class_98;
   import package_5.class_123;
   import package_5.class_945;
   import package_6.class_14;
   import package_89.class_1011;
   import package_9.class_17;
   import package_9.class_91;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridLayer;
   import spark.core.SpriteVisualElement;
   import spark.primitives.BitmapImage;
   
   public final class class_672 implements class_14
   {
      
      public static const name_3:class_672 = new class_672();
       
      
      private var var_646:int = 0;
      
      public var var_126:Boolean = false;
      
      public var name_14:int = 0;
      
      public function class_672(param1:int = 0, param2:Boolean = false)
      {
         super();
         this.var_126 = param2;
         this.name_14 = param1;
      }
      
      public function method_16() : int
      {
         return -8549;
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
         return 3;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 2 % 16 | (65535 & this.var_646) >>> 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_126 = param1.readBoolean();
         this.name_14 = param1.readShort();
         this.name_14 = 65535 & ((65535 & this.name_14) << 5 % 16 | (65535 & this.name_14) >>> 16 - 5 % 16);
         this.name_14 = this.name_14 > 32767?int(this.name_14 - 65536):int(this.name_14);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-8549);
         param1.writeShort(65535 & ((65535 & 0) >>> 2 % 16 | (65535 & 0) << 16 - 2 % 16));
         param1.writeBoolean(this.var_126);
         param1.writeShort(65535 & ((65535 & this.name_14) >>> 5 % 16 | (65535 & this.name_14) << 16 - 5 % 16));
      }
   }
}
