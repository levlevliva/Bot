package package_147
{
   import com.bigpoint.seafight.view.mainmenu.MainMenuButton;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentButtonClickEvent;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.IVisualElement;
   import mx.events.CollectionEventKind;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import package_20.class_982;
   import package_26.class_969;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.primitives.Rect;
   
   public final class class_666 implements class_14
   {
      
      public static const name_3:class_666 = new class_666();
       
      
      private var var_646:int = 0;
      
      public var name_82:Vector.<class_84>;
      
      public function class_666(param1:Vector.<class_84> = null)
      {
         super();
         if(param1 == null)
         {
            this.name_82 = new Vector.<class_84>();
         }
         else
         {
            this.name_82 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -4157;
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
         var _loc4_:class_84 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_82.length > 0)
         {
            this.name_82.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_84(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_82.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_84 = null;
         param1.writeShort(-4157);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         param1.writeByte(this.name_82.length);
         for each(_loc2_ in this.name_82)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
