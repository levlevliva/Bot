package net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams
{
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
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
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import package_104.class_641;
   import package_14.class_47;
   import package_14.class_88;
   import package_18.class_1521;
   import package_46.class_1455;
   import package_54.class_319;
   import package_6.class_14;
   import package_69.class_978;
   import spark.components.Group;
   import spark.layouts.VerticalLayout;
   
   public final class class_590 implements class_14
   {
      
      public static const name_3:class_590 = new class_590();
       
      
      private var var_646:int = 0;
      
      public var var_631:int = 0;
      
      public var var_175:int = 0;
      
      public var var_109:int = 0;
      
      public var var_1441:int = 0;
      
      public var var_1487:String = "";
      
      public var name_7:int = 0;
      
      public var var_413:int = 0;
      
      public var name_19:Number = 0;
      
      public function class_590(param1:int = 0, param2:int = 0, param3:String = "", param4:int = 0, param5:int = 0, param6:Number = 0, param7:int = 0, param8:int = 0)
      {
         super();
         this.var_631 = param2;
         this.var_175 = param7;
         this.var_109 = param5;
         this.var_1441 = param4;
         this.var_1487 = param3;
         this.name_7 = param1;
         this.var_413 = param8;
         this.name_19 = param6;
      }
      
      public function method_16() : int
      {
         return -5708;
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
         return 26;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_631 = param1.readInt();
         this.var_631 = this.var_631 << 14 % 32 | this.var_631 >>> 32 - 14 % 32;
         this.var_175 = param1.readInt();
         this.var_175 = this.var_175 >>> 14 % 32 | this.var_175 << 32 - 14 % 32;
         this.var_109 = param1.readShort();
         this.var_1441 = param1.readShort();
         this.var_1487 = param1.readUTF();
         this.name_7 = param1.readInt();
         this.name_7 = this.name_7 << 1 % 32 | this.name_7 >>> 32 - 1 % 32;
         this.var_413 = param1.readInt();
         this.var_413 = this.var_413 << 3 % 32 | this.var_413 >>> 32 - 3 % 32;
         this.name_19 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-5708);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeInt(this.var_631 >>> 14 % 32 | this.var_631 << 32 - 14 % 32);
         param1.writeInt(this.var_175 << 14 % 32 | this.var_175 >>> 32 - 14 % 32);
         param1.writeShort(this.var_109);
         param1.writeShort(this.var_1441);
         param1.writeUTF(this.var_1487);
         param1.writeInt(this.name_7 >>> 1 % 32 | this.name_7 << 32 - 1 % 32);
         param1.writeInt(this.var_413 >>> 3 % 32 | this.var_413 << 32 - 3 % 32);
         param1.writeDouble(this.name_19);
      }
   }
}
