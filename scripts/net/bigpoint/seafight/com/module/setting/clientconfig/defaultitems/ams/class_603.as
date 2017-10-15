package net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams
{
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.tools.getMapFieldPoint;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTipContent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_104.class_448;
   import package_104.class_641;
   import package_118.class_1445;
   import package_118.class_539;
   import package_14.class_47;
   import package_14.class_51;
   import package_152.class_937;
   import package_154.class_632;
   import package_185.class_1136;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.Label;
   import spark.components.VGroup;
   
   public final class class_603 extends class_602
   {
      
      public static const name_3:class_603 = new class_603();
       
      
      private var var_646:int = 0;
      
      public function class_603()
      {
         super();
      }
      
      override public function method_16() : int
      {
         return -11935;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-11935);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         super.method_14(param1);
      }
   }
}
