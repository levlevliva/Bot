package package_155
{
   import com.bigpoint.seafight.model.inventory.vo.extensions.DefaultExtensions_VO;
   import com.bigpoint.seafight.model.inventory.vo.extensions.Ext_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.net.events.class_1258;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.target;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_116.class_405;
   import package_130.class_480;
   import package_144.class_543;
   import package_144.class_886;
   import package_20.class_982;
   import package_210.class_1527;
   import package_41.class_84;
   import package_41.class_93;
   import package_54.class_159;
   import package_6.class_14;
   import package_9.class_994;
   import package_95.class_341;
   import spark.components.Group;
   
   use namespace mx_internal;
   
   public final class class_623 implements class_14
   {
      
      public static const name_3:class_623 = new class_623();
       
      
      private var var_646:int = 0;
      
      public var var_334:int = 0;
      
      public var var_17:class_84;
      
      public function class_623(param1:class_84 = null, param2:int = 0)
      {
         super();
         this.var_334 = param2;
         if(param1 == null)
         {
            this.var_17 = new class_84();
         }
         else
         {
            this.var_17 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 2609;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_334 = param1.readShort();
         this.var_17 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_17.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(2609);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         param1.writeShort(this.var_334);
         this.var_17.method_14(param1);
      }
   }
}
