package package_119
{
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingMenuPetsTabVo;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
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
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.MiniHitpointsBarDisplay;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.GemOverviewListSkin;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.guild.class_1476;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import package_14.class_47;
   import package_16.class_28;
   import package_18.class_1521;
   import package_18.class_571;
   import package_185.class_1136;
   import package_20.class_33;
   import package_204.class_1295;
   import package_214.class_1598;
   import package_26.class_1070;
   import package_41.class_84;
   import package_45.class_110;
   import package_47.class_662;
   import package_47.class_834;
   import package_5.class_123;
   import package_52.class_167;
   import package_6.class_14;
   import package_84.class_270;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.TitleWindow;
   import spark.events.IndexChangeEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Graphic;
   
   public final class class_418 implements class_14
   {
      
      public static const name_3:class_418 = new class_418();
       
      
      private var var_646:int = 0;
      
      public var name_23:Number = 0;
      
      public var var_711:int = 0;
      
      public function class_418(param1:Number = 0, param2:int = 0)
      {
         super();
         this.name_23 = param1;
         this.var_711 = param2;
      }
      
      public function method_16() : int
      {
         return 16731;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_23 = param1.readDouble();
         this.var_711 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(16731);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         param1.writeDouble(this.name_23);
         param1.writeShort(this.var_711);
      }
   }
}
