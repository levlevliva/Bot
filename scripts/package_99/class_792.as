package package_99
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialSocket;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.vo.CraftingMaterialItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.IGemsInventory;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.reputation.ReputationFavoriteEvent;
   import com.bit101.components.PushButton;
   import com.bit101.components.Slider;
   import com.bit101.components.Style;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.logging.Log;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.class_775;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_104.class_641;
   import package_14.class_47;
   import package_166.class_971;
   import package_34.class_116;
   import package_72.class_203;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   
   public final class class_792 extends class_786
   {
      
      public static const name_3:class_792 = new class_792();
       
      
      private var var_646:int = 0;
      
      public var var_65:int = 0;
      
      public function class_792(param1:int = 0)
      {
         super();
         this.var_65 = param1;
      }
      
      override public function method_16() : int
      {
         return 21340;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_65 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(21340);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         super.method_14(param1);
         param1.writeShort(this.var_65);
      }
   }
}
