package package_85
{
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.tools.class_1244;
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
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import package_108.class_596;
   import package_108.class_755;
   import package_14.class_47;
   import package_15.class_273;
   import package_15.class_78;
   import package_18.class_1521;
   import package_200.class_1222;
   import package_5.class_214;
   
   public final class class_276 extends class_78
   {
      
      private static const const_538:Vector.<int> = new Vector.<int>();
       
      
      private var var_2032:class_1222;
      
      public function class_276(param1:class_273)
      {
         super();
         method_35(this.var_2032 = param1.var_2032);
      }
      
      override protected function method_1182() : Object
      {
         var _loc3_:class_596 = null;
         var _loc4_:Vector.<int> = null;
         var _loc1_:class_755 = this.var_2032.name_8;
         if(this.var_2032.name_8 == null)
         {
            return null;
         }
         var _loc2_:Dictionary = new Dictionary();
         for each(_loc3_ in _loc1_.name_9)
         {
            _loc4_ = _loc2_[_loc3_.name_7] as Vector.<int>;
            if(_loc4_ == null)
            {
               _loc2_[_loc3_.name_7] = _loc4_ = new Vector.<int>();
            }
            _loc4_.push(_loc3_.var_16);
         }
         return _loc2_;
      }
      
      public final function method_2639(param1:int) : Vector.<int>
      {
         var _loc2_:Dictionary = method_38() as Dictionary;
         var _loc3_:Vector.<int> = !!_loc2_?_loc2_[param1] as Vector.<int>:const_538;
         return !!_loc3_?_loc3_:const_538;
      }
   }
}
