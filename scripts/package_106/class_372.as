package package_106
{
   import com.bigpoint.seafight.model.vo.class_1067;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.event.modules.EmptyModule;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.achievement.AchievementModule;
   import com.bigpoint.seafight.view.popups.event.modules.columbus.ColumbusNpcKillsModule;
   import com.bigpoint.seafight.view.popups.event.modules.columbus.ColumbusRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.BossOverviewModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.MiniGameGeneralRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.NpcKillsModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.PlayerRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankPrizesModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingTimeModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.SingleRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.ThresholdRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.clash.ClashRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.eventstatistics.EventStatisticModule;
   import com.bigpoint.seafight.view.popups.event.modules.evilrites.EvilRitesNpcKillsModule;
   import com.bigpoint.seafight.view.popups.event.modules.evilrites.EvilRitesRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.faction.FactionGlobalStats;
   import com.bigpoint.seafight.view.popups.event.modules.faction.FactionPersonalStats;
   import com.bigpoint.seafight.view.popups.event.modules.faction.PersonalCurrencyStats;
   import com.bigpoint.seafight.view.popups.event.modules.halloween.HalloweenNpcKillsModule;
   import com.bigpoint.seafight.view.popups.event.modules.halloween.HalloweenRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.MarauderModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.GroupMapMinigameModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.HireHelperMinigameModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameGlobalRankingModuleSimple;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameHighStriker;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameScoreScreenModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameShephard;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameSpeedRacer;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.GuildRankRightCheckBox;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankItemListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityTriggerEvent;
   import com.greensock.TweenLite;
   import com.greensock.easing.Sine;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import package_107.class_693;
   import package_14.class_1377;
   import package_14.class_47;
   import package_16.class_28;
   import package_171.class_981;
   import package_18.class_1521;
   import package_29.class_565;
   import package_34.class_1499;
   import package_36.class_100;
   import package_41.class_93;
   import package_46.class_1224;
   import package_46.class_1356;
   import package_46.class_1501;
   import package_69.class_978;
   import package_8.class_1315;
   import package_93.class_339;
   import package_93.class_987;
   import spark.components.List;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   
   public final class class_372 extends class_339
   {
      
      public static const name_3:class_372 = new class_372();
       
      
      private var var_646:int = 0;
      
      public var name_9:Vector.<class_783>;
      
      public function class_372(param1:Vector.<class_783> = null)
      {
         super();
         if(param1 == null)
         {
            this.name_9 = new Vector.<class_783>();
         }
         else
         {
            this.name_9 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 31765;
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
         var _loc4_:class_783 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_9.length > 0)
         {
            this.name_9.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_783(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_783 = null;
         param1.writeShort(31765);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         super.method_14(param1);
         param1.writeShort(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
