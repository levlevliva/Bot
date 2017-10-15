package package_101
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BadgeLootIcon;
   import com.bigpoint.seafight.view.popups.common.LootIcon;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.presets.PresetComboBoxData;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.greensock.events.LoaderEvent;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.FlexEvent;
   import package_129.class_630;
   import package_14.class_225;
   import package_14.class_47;
   import package_15.class_273;
   import package_170.class_979;
   import package_190.class_1168;
   import package_41.class_84;
   import package_41.class_93;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_984;
   import package_6.class_14;
   import package_89.class_1378;
   import package_89.class_1379;
   import spark.components.HGroup;
   import spark.primitives.Rect;
   
   public final class class_927 implements class_14
   {
      
      public static const name_3:class_927 = new class_927();
       
      
      private var var_646:int = 0;
      
      public var var_33:int = 0;
      
      public var var_20:Number = 0;
      
      public function class_927(param1:Number = 0, param2:int = 0)
      {
         super();
         this.var_33 = param2;
         this.var_20 = param1;
      }
      
      public function method_16() : int
      {
         return -27406;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_33 = param1.readInt();
         this.var_33 = this.var_33 >>> 13 % 32 | this.var_33 << 32 - 13 % 32;
         this.var_20 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-27406);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         param1.writeInt(this.var_33 << 13 % 32 | this.var_33 >>> 32 - 13 % 32);
         param1.writeDouble(this.var_20);
      }
   }
}
