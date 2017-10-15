package net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams
{
   import com.bigpoint.seafight.model.vo.class_1525;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import mx.binding.BindingManager;
   import mx.core.IUIComponent;
   import mx.events.CloseEvent;
   import mx.events.ToolTipEvent;
   import package_26.class_1102;
   import package_26.class_1523;
   import package_5.class_939;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.effects.Rotate3D;
   import spark.events.IndexChangeEvent;
   import spark.primitives.BitmapImage;
   
   public final class class_712 extends class_602
   {
      
      public static const name_3:class_712 = new class_712();
       
      
      private var var_646:int = 0;
      
      public var var_1831:int = 0;
      
      public function class_712(param1:int = 0)
      {
         super();
         this.var_1831 = param1;
      }
      
      override public function method_16() : int
      {
         return -5605;
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
         return 0;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_1831 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-5605);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         super.method_14(param1);
         param1.writeShort(this.var_1831);
      }
   }
}
