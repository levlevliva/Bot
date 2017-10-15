package package_91
{
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.itemrenderers.MateyNameItemRenderer;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bit101.components.Style;
   import com.greensock.TweenLite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.IUIComponent;
   import mx.events.ToolTipEvent;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_96;
   import package_153.class_931;
   import package_170.class_979;
   import package_171.class_1057;
   import package_54.class_319;
   import package_56.class_368;
   import package_6.class_14;
   import package_90.class_316;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   
   public final class class_891 implements class_14
   {
      
      public static const name_3:class_891 = new class_891();
       
      
      private var var_646:int = 0;
      
      public var var_183:int = 0;
      
      public function class_891(param1:int = 0)
      {
         super();
         this.var_183 = param1;
      }
      
      public function method_16() : int
      {
         return 15277;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 9 % 16 | (65535 & this.var_646) >>> 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_183 = param1.readShort();
         this.var_183 = 65535 & ((65535 & this.var_183) << 5 % 16 | (65535 & this.var_183) >>> 16 - 5 % 16);
         this.var_183 = this.var_183 > 32767?int(this.var_183 - 65536):int(this.var_183);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(15277);
         param1.writeShort(65535 & ((65535 & 0) >>> 9 % 16 | (65535 & 0) << 16 - 9 % 16));
         param1.writeShort(65535 & ((65535 & this.var_183) >>> 5 % 16 | (65535 & this.var_183) << 16 - 5 % 16));
      }
   }
}
