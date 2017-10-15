package net.bigpoint.seafight.com.module.minigame
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.display.utils.GrayscaleFilters;
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowSlot;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.common.BorderType4;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.event.EventPopupController;
   import com.bigpoint.seafight.view.popups.event.component.EventPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.GuildMenuVanity;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.spymenu.component.SpyUserStatsWithIconItemRenderer;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatsListItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemConfigFooterVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.gemwindow.CmdSL_OpenGemWindow;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.ToolTipEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.guild.class_552;
   import net.bigpoint.seafight.com.module.ship.class_700;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_103.class_361;
   import package_104.class_448;
   import package_104.class_989;
   import package_14.class_47;
   import package_15.class_273;
   import package_17.class_1318;
   import package_170.class_979;
   import package_216.class_1575;
   import package_30.class_337;
   import package_34.class_116;
   import package_34.class_73;
   import package_41.class_89;
   import package_45.class_110;
   import package_46.class_1224;
   import package_46.class_975;
   import package_5.class_214;
   import package_51.class_974;
   import package_52.class_306;
   import package_54.class_319;
   import package_6.class_14;
   import package_69.class_978;
   import package_72.class_203;
   import package_9.class_347;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public final class class_438 implements class_14
   {
      
      public static const name_3:class_438 = new class_438();
       
      
      private var var_646:int = 0;
      
      public var var_156:class_91;
      
      public var name_23:class_91;
      
      public var name_5:int = 0;
      
      public function class_438(param1:int = 0, param2:class_91 = null, param3:class_91 = null)
      {
         super();
         if(param3 == null)
         {
            this.var_156 = new class_91();
         }
         else
         {
            this.var_156 = param3;
         }
         if(param2 == null)
         {
            this.name_23 = new class_91();
         }
         else
         {
            this.name_23 = param2;
         }
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return 32449;
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
         this.var_156 = new class_91();
         this.var_156.var_8 = param1.readShort();
         this.var_156.var_8 = 65535 & ((65535 & this.var_156.var_8) >>> 16 % 16 | (65535 & this.var_156.var_8) << 16 - 16 % 16);
         this.var_156.var_8 = this.var_156.var_8 > 32767?int(this.var_156.var_8 - 65536):int(this.var_156.var_8);
         this.var_156.var_9 = param1.readShort();
         this.var_156.var_9 = 65535 & ((65535 & this.var_156.var_9) << 15 % 16 | (65535 & this.var_156.var_9) >>> 16 - 15 % 16);
         this.var_156.var_9 = this.var_156.var_9 > 32767?int(this.var_156.var_9 - 65536):int(this.var_156.var_9);
         this.name_23 = new class_91();
         this.name_23.var_8 = param1.readShort();
         this.name_23.var_8 = 65535 & ((65535 & this.name_23.var_8) >>> 16 % 16 | (65535 & this.name_23.var_8) << 16 - 16 % 16);
         this.name_23.var_8 = this.name_23.var_8 > 32767?int(this.name_23.var_8 - 65536):int(this.name_23.var_8);
         this.name_23.var_9 = param1.readShort();
         this.name_23.var_9 = 65535 & ((65535 & this.name_23.var_9) << 15 % 16 | (65535 & this.name_23.var_9) >>> 16 - 15 % 16);
         this.name_23.var_9 = this.name_23.var_9 > 32767?int(this.name_23.var_9 - 65536):int(this.name_23.var_9);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(32449);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
         param1.writeShort(65535 & ((65535 & this.var_156.var_8) << 16 % 16 | (65535 & this.var_156.var_8) >>> 16 - 16 % 16));
         param1.writeShort(65535 & ((65535 & this.var_156.var_9) >>> 15 % 16 | (65535 & this.var_156.var_9) << 16 - 15 % 16));
         param1.writeShort(65535 & ((65535 & this.name_23.var_8) << 16 % 16 | (65535 & this.name_23.var_8) >>> 16 - 16 % 16));
         param1.writeShort(65535 & ((65535 & this.name_23.var_9) >>> 15 % 16 | (65535 & this.name_23.var_9) << 16 - 15 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
