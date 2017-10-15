package package_9
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.SearchTextInputSkin;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagDropTarget;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   
   public final class class_91 implements class_14
   {
      
      public static const name_3:class_91 = new class_91();
       
      
      private var var_646:int = 0;
      
      public var var_8:int = 0;
      
      public var var_9:int = 0;
      
      public function class_91(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_8 = param2;
         this.var_9 = param1;
      }
      
      public function method_16() : int
      {
         return 26314;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 5 % 16 | (65535 & this.var_646) >>> 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_8 = param1.readShort();
         this.var_8 = 65535 & ((65535 & this.var_8) >>> 14 % 16 | (65535 & this.var_8) << 16 - 14 % 16);
         this.var_8 = this.var_8 > 32767?int(this.var_8 - 65536):int(this.var_8);
         this.var_9 = param1.readShort();
         this.var_9 = 65535 & ((65535 & this.var_9) >>> 16 % 16 | (65535 & this.var_9) << 16 - 16 % 16);
         this.var_9 = this.var_9 > 32767?int(this.var_9 - 65536):int(this.var_9);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(26314);
         param1.writeShort(65535 & ((65535 & 0) >>> 5 % 16 | (65535 & 0) << 16 - 5 % 16));
         param1.writeShort(65535 & ((65535 & this.var_8) << 14 % 16 | (65535 & this.var_8) >>> 16 - 14 % 16));
         param1.writeShort(65535 & ((65535 & this.var_9) << 16 % 16 | (65535 & this.var_9) >>> 16 - 16 % 16));
      }
   }
}
