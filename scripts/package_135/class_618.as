package package_135
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.DynamicTabNavigator;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.GuildRankRightCheckBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.events.FlexEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_149.class_579;
   import package_47.class_129;
   import package_52.class_167;
   import package_55.class_1007;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridLayer;
   
   public final class class_618 extends class_579
   {
      
      public static const name_3:class_618 = new class_618();
       
      
      private var var_646:int = 0;
      
      public var var_35:int = 0;
      
      public function class_618(param1:int = 0)
      {
         super();
         this.var_35 = param1;
      }
      
      override public function method_16() : int
      {
         return -3413;
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
         return 2;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 5 % 16 | (65535 & this.var_646) >>> 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_35 = param1.readShort();
         this.var_35 = 65535 & ((65535 & this.var_35) >>> 14 % 16 | (65535 & this.var_35) << 16 - 14 % 16);
         this.var_35 = this.var_35 > 32767?int(this.var_35 - 65536):int(this.var_35);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-3413);
         param1.writeShort(65535 & ((65535 & 0) >>> 5 % 16 | (65535 & 0) << 16 - 5 % 16));
         super.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_35) << 14 % 16 | (65535 & this.var_35) >>> 16 - 14 % 16));
      }
   }
}
