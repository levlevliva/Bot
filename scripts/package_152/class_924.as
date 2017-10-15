package package_152
{
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import package_111.class_696;
   import package_14.class_102;
   import package_14.class_47;
   import package_184.class_1135;
   import package_23.class_42;
   import package_89.class_1138;
   import package_89.class_1378;
   
   public final class class_924 extends class_611
   {
      
      public static const name_3:class_924 = new class_924();
       
      
      private var var_646:int = 0;
      
      public var var_1589:String = "";
      
      public var var_15:String = "";
      
      public function class_924(param1:String = "", param2:String = "")
      {
         super();
         this.var_1589 = param1;
         this.var_15 = param2;
      }
      
      override public function method_16() : int
      {
         return 6572;
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
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_1589 = param1.readUTF();
         this.var_15 = param1.readUTF();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(6572);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         super.method_14(param1);
         param1.writeUTF(this.var_1589);
         param1.writeUTF(this.var_15);
      }
   }
}
