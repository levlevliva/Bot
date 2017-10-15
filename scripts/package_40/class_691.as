package package_40
{
   import com.bigpoint.seafight.model.vo.class_1371;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialSocket;
   import com.bigpoint.seafight.view.userInterface.widgets.timer.TimerComponent;
   import com.greensock.TweenLite;
   import com.greensock.core.TweenCore;
   import com.greensock.events.TweenEvent;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.media.SoundChannel;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_590;
   import net.bigpoint.seafight.com.module.ship.class_1119;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import org.apache.flex.collections.VectorCollection;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_96;
   import package_15.class_48;
   import package_170.class_979;
   import package_174.class_1592;
   import package_32.class_64;
   import package_41.class_93;
   import package_42.class_959;
   import package_5.class_12;
   import package_5.class_22;
   import package_6.class_14;
   import package_69.class_978;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.effects.animation.SimpleMotionPath;
   import spark.filters.GlowFilter;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Graphic;
   import spark.primitives.Line;
   
   public final class class_691 implements class_14
   {
      
      public static const name_3:class_691 = new class_691();
       
      
      private var var_646:int = 0;
      
      public function class_691()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 23349;
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
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 13 % 16 | (65535 & this.var_646) >>> 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(23349);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
      }
   }
}
