package package_94
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.component.EventModuleFactory;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.IGemsInventory;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColorStroke;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import package_14.class_47;
   import package_14.class_51;
   import package_18.class_571;
   import package_18.class_855;
   import package_23.class_42;
   import package_26.class_1354;
   import package_42.class_959;
   import package_50.class_141;
   import package_69.class_978;
   import package_9.class_91;
   import package_92.class_944;
   import package_92.class_962;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.ToggleButton;
   import spark.effects.animation.SimpleMotionPath;
   
   public final class class_732 extends class_690
   {
      
      public static const name_3:class_732 = new class_732();
       
      
      private var var_646:int = 0;
      
      public var var_400:int = 0;
      
      public var var_434:int = 0;
      
      public function class_732(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_400 = param2;
         this.var_434 = param1;
      }
      
      override public function method_16() : int
      {
         return -30957;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 13 % 16 | (65535 & this.var_646) << 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_400 = param1.readShort();
         this.var_400 = 65535 & ((65535 & this.var_400) << 9 % 16 | (65535 & this.var_400) >>> 16 - 9 % 16);
         this.var_400 = this.var_400 > 32767?int(this.var_400 - 65536):int(this.var_400);
         this.var_434 = param1.readShort();
         this.var_434 = 65535 & ((65535 & this.var_434) >>> 16 % 16 | (65535 & this.var_434) << 16 - 16 % 16);
         this.var_434 = this.var_434 > 32767?int(this.var_434 - 65536):int(this.var_434);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-30957);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
         super.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_400) >>> 9 % 16 | (65535 & this.var_400) << 16 - 9 % 16));
         param1.writeShort(65535 & ((65535 & this.var_434) << 16 % 16 | (65535 & this.var_434) >>> 16 - 16 % 16));
      }
   }
}
