package net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.popups.groupwindow.OpenGroupWindowCommand;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.class_112;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenCastleWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenCauldronWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenMonthlyLoginBonusWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenQuestWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenReputationWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenSpyWindow;
   import com.bigpoint.services.statelessCommands.commands.boarding.CmdSL_OpenBoardingWindow;
   import com.bigpoint.services.statelessCommands.commands.gemwindow.CmdSL_OpenGemWindow;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindow;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenSafeHavenGuildWindow;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindow;
   import com.bigpoint.services.statelessCommands.commands.mateyswindow.CmdSL_OpenMateysWindow;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.ship.class_700;
   import package_11.class_130;
   import package_14.class_47;
   import package_14.class_96;
   import package_170.class_979;
   import package_174.class_1375;
   import package_20.class_33;
   import package_26.class_101;
   import package_29.class_57;
   import package_34.class_107;
   import package_34.class_115;
   import package_34.class_116;
   import package_41.class_84;
   import package_41.class_93;
   import package_45.class_110;
   import package_47.class_135;
   import package_48.class_999;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_6.class_14;
   import package_7.class_119;
   import package_92.class_336;
   import package_92.class_944;
   import package_93.class_339;
   import spark.components.List;
   import spark.components.supportClasses.ItemRenderer;
   import spark.filters.DropShadowFilter;
   
   public final class class_888 extends class_339
   {
      
      public static const name_3:class_888 = new class_888();
       
      
      private var var_646:int = 0;
      
      public var var_998:Vector.<class_700>;
      
      public function class_888(param1:Vector.<class_700> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_998 = new Vector.<class_700>();
         }
         else
         {
            this.var_998 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -28061;
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
         var _loc4_:class_700 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 4 % 16 | (65535 & this.var_646) << 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_998.length > 0)
         {
            this.var_998.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_700(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_998.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_700 = null;
         param1.writeShort(-28061);
         param1.writeShort(65535 & ((65535 & 0) << 4 % 16 | (65535 & 0) >>> 16 - 4 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_998.length);
         for each(_loc2_ in this.var_998)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
