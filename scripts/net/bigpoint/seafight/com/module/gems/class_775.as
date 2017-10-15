package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.IUIComponent;
   import mx.states.State;
   import package_111.class_696;
   import package_184.class_1135;
   import package_6.class_14;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.RichEditableText;
   import spark.components.VGroup;
   
   public final class class_775 implements class_14
   {
      
      public static const name_3:class_775 = new class_775();
       
      
      private var var_646:int = 0;
      
      public var var_469:int = 0;
      
      public var var_97:int = 0;
      
      public function class_775(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_469 = param2;
         this.var_97 = param1;
      }
      
      public function method_16() : int
      {
         return 15581;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_469 = param1.readShort();
         this.var_469 = 65535 & ((65535 & this.var_469) << 9 % 16 | (65535 & this.var_469) >>> 16 - 9 % 16);
         this.var_469 = this.var_469 > 32767?int(this.var_469 - 65536):int(this.var_469);
         this.var_97 = param1.readShort();
         this.var_97 = 65535 & ((65535 & this.var_97) >>> 2 % 16 | (65535 & this.var_97) << 16 - 2 % 16);
         this.var_97 = this.var_97 > 32767?int(this.var_97 - 65536):int(this.var_97);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(15581);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         param1.writeShort(65535 & ((65535 & this.var_469) >>> 9 % 16 | (65535 & this.var_469) << 16 - 9 % 16));
         param1.writeShort(65535 & ((65535 & this.var_97) << 2 % 16 | (65535 & this.var_97) >>> 16 - 2 % 16));
      }
   }
}
