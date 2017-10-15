package package_46
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
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
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import package_14.class_47;
   import package_15.class_273;
   import package_171.class_981;
   import package_18.class_1521;
   import package_20.class_982;
   import spark.components.Label;
   import spark.components.VGroup;
   
   public class class_113
   {
       
      
      private var var_1068:Dictionary;
      
      private var var_1363:Vector.<class_982>;
      
      public function class_113()
      {
         super();
         this.var_1068 = new Dictionary();
         this.var_1363 = new Vector.<class_982>();
      }
      
      public static function method_40() : int
      {
         return class_981.method_40();
      }
      
      public final function method_63(param1:class_982) : void
      {
         this.var_1068[param1] = param1;
      }
      
      public final function method_85(param1:class_982) : void
      {
         delete this.var_1068[param1];
      }
      
      protected final function method_34(param1:int = -1) : void
      {
         var _loc2_:class_982 = null;
         this.method_1147();
         for each(_loc2_ in this.var_1363)
         {
            this.method_1600(_loc2_,param1);
         }
      }
      
      protected function method_1600(param1:class_982, param2:int) : void
      {
         param1.method_34(param2);
      }
      
      public final function method_116(param1:int) : void
      {
         var _loc2_:class_982 = null;
         this.method_1147();
         for each(_loc2_ in this.var_1363)
         {
            _loc2_.method_116(param1);
         }
      }
      
      protected final function method_1147() : void
      {
         var _loc1_:class_982 = null;
         this.var_1363.length = 0;
         for each(_loc1_ in this.var_1068)
         {
            this.var_1363.push(_loc1_);
         }
      }
   }
}
