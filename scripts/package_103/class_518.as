package package_103
{
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import flash.events.Event;
   import flash.filters.ColorMatrixFilter;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_14.class_94;
   import package_41.class_84;
   import package_41.class_89;
   import package_6.class_14;
   import spark.components.Group;
   
   public final class class_518 implements class_14
   {
      
      public static const name_3:class_518 = new class_518();
       
      
      private var var_646:int = 0;
      
      public var var_58:int = 0;
      
      public var name_28:Boolean = false;
      
      public var name_4:class_84;
      
      public function class_518(param1:int = 0, param2:class_84 = null, param3:Boolean = false)
      {
         super();
         this.var_58 = param1;
         this.name_28 = param3;
         if(param2 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param2;
         }
      }
      
      public function method_16() : int
      {
         return -27401;
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
         return 1;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 13 % 16 | (65535 & this.var_646) << 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_58 = param1.readShort();
         this.name_28 = param1.readBoolean();
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 2 % 16 | (65535 & this.name_4.var_6) << 16 - 2 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-27401);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
         param1.writeShort(this.var_58);
         param1.writeBoolean(this.name_28);
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 2 % 16 | (65535 & this.name_4.var_6) >>> 16 - 2 % 16));
         param1.writeDouble(this.name_4.name_4);
      }
   }
}
