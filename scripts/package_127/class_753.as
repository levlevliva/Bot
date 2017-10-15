package package_127
{
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.DefaultNonPerishable_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.NonPerishableGood_VO;
   import com.bigpoint.seafight.model.nonpersistent.GroupQueueModel;
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.common.table.CommonHListSkin;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameAssistantModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameSpeedRacer;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.groupwindow.OpenGroupWindowCommand;
   import com.bigpoint.seafight.view.popups.reputation.ReputationData;
   import com.bigpoint.seafight.view.userInterface.class_112;
   import com.bigpoint.seafight.view.userInterface.widgets.submenus.charactermenu.DesignBonusPopUp;
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
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.CloseEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_496;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_104.class_448;
   import package_104.class_628;
   import package_104.class_803;
   import package_104.class_989;
   import package_14.class_200;
   import package_14.class_220;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_88;
   import package_16.class_28;
   import package_20.class_33;
   import package_210.class_1527;
   import package_23.class_42;
   import package_26.class_101;
   import package_29.class_57;
   import package_30.class_1013;
   import package_30.class_62;
   import package_34.class_107;
   import package_34.class_115;
   import package_34.class_116;
   import package_40.class_83;
   import package_45.class_110;
   import package_46.class_1493;
   import package_48.class_996;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_984;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_1039;
   import package_7.class_119;
   import package_72.class_203;
   import package_92.class_336;
   import package_92.class_944;
   import package_94.class_340;
   import package_94.class_690;
   import spark.components.List;
   import spark.components.RichEditableText;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   
   public final class class_753 implements class_14
   {
      
      public static const name_3:class_753 = new class_753();
       
      
      private var var_646:int = 0;
      
      public var var_517:Boolean = false;
      
      public var var_809:int = 0;
      
      public var var_65:int = 0;
      
      public function class_753(param1:int = 0, param2:int = 0, param3:Boolean = false)
      {
         super();
         this.var_517 = param3;
         this.var_809 = param2;
         this.var_65 = param1;
      }
      
      public function method_16() : int
      {
         return 20175;
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
         return 5;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_517 = param1.readBoolean();
         this.var_809 = param1.readInt();
         this.var_809 = this.var_809 << 9 % 32 | this.var_809 >>> 32 - 9 % 32;
         this.var_65 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(20175);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         param1.writeBoolean(this.var_517);
         param1.writeInt(this.var_809 >>> 9 % 32 | this.var_809 << 32 - 9 % 32);
         param1.writeShort(this.var_65);
      }
   }
}
