package package_135
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.FactionPhaseRankingItem;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.inventory.GemLevelsComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import package_104.class_641;
   import package_14.class_51;
   import package_190.class_1469;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_55.class_1009;
   import package_74.class_236;
   import package_88.class_1093;
   import package_90.class_316;
   import package_93.class_339;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   
   public final class class_507 extends class_339
   {
      
      public static const name_3:class_507 = new class_507();
       
      
      private var var_646:int = 0;
      
      public var name_9:Vector.<class_618>;
      
      public function class_507(param1:Vector.<class_618> = null)
      {
         super();
         if(param1 == null)
         {
            this.name_9 = new Vector.<class_618>();
         }
         else
         {
            this.name_9 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 3123;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 4;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_618 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 2 % 16 | (65535 & this.var_646) << 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_9.length > 0)
         {
            this.name_9.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_618(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_618 = null;
         param1.writeShort(3123);
         param1.writeShort(65535 & ((65535 & 0) << 2 % 16 | (65535 & 0) >>> 16 - 2 % 16));
         super.method_14(param1);
         param1.writeShort(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
