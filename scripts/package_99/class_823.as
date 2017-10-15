package package_99
{
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.DefaultNonPerishable_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.NonPerishableGood_VO;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.GemsInventoryGroup;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.vo.CraftingMaterialItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemListVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemsInventoryVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverview;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SmallScrollBarSkin;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import com.greensock.easing.Quad;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.graphics.SolidColor;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_104.class_628;
   import package_14.class_1377;
   import package_14.class_47;
   import package_16.class_28;
   import package_163.class_846;
   import package_54.class_319;
   import package_6.class_14;
   import package_93.class_987;
   import package_94.class_340;
   import package_94.class_690;
   import package_95.class_341;
   import package_97.class_409;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.primitives.Rect;
   
   public final class class_823 implements class_14
   {
      
      public static const name_3:class_823 = new class_823();
       
      
      private var var_646:int = 0;
      
      public var var_15:class_810;
      
      public var var_438:int = 0;
      
      public function class_823(param1:class_810 = null, param2:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.var_15 = new class_810();
         }
         else
         {
            this.var_15 = param1;
         }
         this.var_438 = param2;
      }
      
      public function method_16() : int
      {
         return -14181;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_15 = new class_810();
         this.var_15.var_16 = param1.readShort();
         this.var_15.var_16 = 65535 & ((65535 & this.var_15.var_16) >>> 13 % 16 | (65535 & this.var_15.var_16) << 16 - 13 % 16);
         this.var_15.var_16 = this.var_15.var_16 > 32767?int(this.var_15.var_16 - 65536):int(this.var_15.var_16);
         this.var_15.var_15 = param1.readInt();
         this.var_15.var_15 = this.var_15.var_15 << 15 % 32 | this.var_15.var_15 >>> 32 - 15 % 32;
         this.var_438 = param1.readShort();
         this.var_438 = 65535 & ((65535 & this.var_438) << 2 % 16 | (65535 & this.var_438) >>> 16 - 2 % 16);
         this.var_438 = this.var_438 > 32767?int(this.var_438 - 65536):int(this.var_438);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-14181);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         param1.writeShort(65535 & ((65535 & this.var_15.var_16) << 13 % 16 | (65535 & this.var_15.var_16) >>> 16 - 13 % 16));
         param1.writeInt(this.var_15.var_15 >>> 15 % 32 | this.var_15.var_15 << 32 - 15 % 32);
         param1.writeShort(65535 & ((65535 & this.var_438) >>> 2 % 16 | (65535 & this.var_438) << 16 - 2 % 16));
      }
   }
}
