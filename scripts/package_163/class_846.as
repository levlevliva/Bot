package package_163
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.BoardingMenuAssistantsTab;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.assistants.AssistantsItemRenderer;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.GemsInventoryGroup;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.vo.CraftingMaterialItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemListVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemsInventoryVo;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.text.StyleSheet;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.class_637;
   import package_111.class_696;
   import package_14.class_47;
   import package_17.class_37;
   import package_170.class_979;
   import package_184.class_1135;
   import package_51.class_148;
   import package_52.class_168;
   import package_6.class_14;
   import package_69.class_978;
   import package_72.class_1080;
   import package_90.class_316;
   import package_95.class_341;
   import package_97.class_409;
   import spark.primitives.Rect;
   
   public final class class_846 implements class_14
   {
      
      public static const name_3:class_846 = new class_846();
       
      
      private var var_646:int = 0;
      
      public function class_846()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -9347;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 14 % 16 | (65535 & this.var_646) << 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-9347);
         param1.writeShort(65535 & ((65535 & 0) << 14 % 16 | (65535 & 0) >>> 16 - 14 % 16));
      }
   }
}
