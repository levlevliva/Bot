package package_41
{
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.LogCategoryCheckBox;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.collections.ArrayList;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_220.class_1601;
   import package_6.class_14;
   
   public final class class_89 implements class_14
   {
      
      public static const name_3:class_89 = new class_89();
       
      
      private var var_646:int = 0;
      
      public var var_6:int = 0;
      
      public var name_20:Number = 0;
      
      public function class_89(param1:Number = 0, param2:int = 0)
      {
         super();
         this.var_6 = param2;
         this.name_20 = param1;
      }
      
      public function method_16() : int
      {
         return 14425;
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
         return 10;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_6 = param1.readShort();
         this.var_6 = 65535 & ((65535 & this.var_6) << 11 % 16 | (65535 & this.var_6) >>> 16 - 11 % 16);
         this.var_6 = this.var_6 > 32767?int(this.var_6 - 65536):int(this.var_6);
         this.name_20 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(14425);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         param1.writeShort(65535 & ((65535 & this.var_6) >>> 11 % 16 | (65535 & this.var_6) << 16 - 11 % 16));
         param1.writeDouble(this.name_20);
      }
   }
}
