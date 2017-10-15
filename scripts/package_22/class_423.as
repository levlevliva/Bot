package package_22
{
   import com.bigpoint.seafight.model.inventory.vo.harpoon.Harpoon_VO;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagDropTarget;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverviewContentMask;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.graphics.GradientEntry;
   import package_108.class_581;
   import package_129.class_630;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_96;
   import package_140.class_540;
   import package_179.class_1064;
   import package_186.class_1137;
   import package_190.class_1181;
   import package_20.class_33;
   import package_23.class_42;
   import package_32.class_64;
   import package_41.class_93;
   import package_43.class_1189;
   import package_5.class_22;
   import package_5.class_984;
   import package_6.class_14;
   import package_93.class_987;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.primitives.Rect;
   
   public final class class_423 extends class_422
   {
      
      public static const name_3:class_423 = new class_423();
       
      
      private var var_646:int = 0;
      
      public var var_89:int = 0;
      
      public function class_423(param1:int = 0)
      {
         super();
         this.var_89 = param1;
      }
      
      override public function method_16() : int
      {
         return 14610;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 4 % 16 | (65535 & this.var_646) << 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_89 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(14610);
         param1.writeShort(65535 & ((65535 & 0) << 4 % 16 | (65535 & 0) >>> 16 - 4 % 16));
         super.method_14(param1);
         param1.writeShort(this.var_89);
      }
   }
}
