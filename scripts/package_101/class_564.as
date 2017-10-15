package package_101
{
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatsListItem;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.FlexEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import package_104.class_641;
   import package_107.class_1467;
   import package_14.class_47;
   import package_14.class_51;
   import package_17.class_990;
   import package_174.class_1375;
   import package_47.class_930;
   import package_50.complete;
   import package_50.duration;
   import package_50.elapse;
   import package_50.intensity;
   import package_50.irender;
   import package_50.layer;
   import package_50.mrender;
   import package_50.scale;
   import package_50.shake;
   import package_50.timer;
   import package_6.class_14;
   import package_92.class_995;
   import package_92.class_997;
   import spark.primitives.Rect;
   
   public final class class_564 implements class_14
   {
      
      public static const name_3:class_564 = new class_564();
       
      
      private var var_646:int = 0;
      
      public var var_33:int = 0;
      
      public var var_20:Number = 0;
      
      public function class_564(param1:Number = 0, param2:int = 0)
      {
         super();
         this.var_33 = param2;
         this.var_20 = param1;
      }
      
      public function method_16() : int
      {
         return -3137;
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
         return 12;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_33 = param1.readInt();
         this.var_33 = this.var_33 << 9 % 32 | this.var_33 >>> 32 - 9 % 32;
         this.var_20 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-3137);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         param1.writeInt(this.var_33 >>> 9 % 32 | this.var_33 << 32 - 9 % 32);
         param1.writeDouble(this.var_20);
      }
   }
}
