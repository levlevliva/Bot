package package_67
{
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModuleVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPopupVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.QuestDisplayVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenNPCWindow;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_775;
   import package_11.class_130;
   import package_11.class_20;
   import package_123.class_1032;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_96;
   import package_143.class_542;
   import package_15.class_48;
   import package_170.class_979;
   import package_171.class_1276;
   import package_175.class_1593;
   import package_2.class_9;
   import package_20.class_109;
   import package_213.class_1522;
   import package_26.class_142;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_98;
   import package_46.class_1455;
   import package_47.class_124;
   import package_47.class_128;
   import package_47.class_129;
   import package_47.class_135;
   import package_47.class_136;
   import package_48.class_996;
   import package_49.class_137;
   import package_5.class_1050;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_22;
   import package_5.class_41;
   import package_54.class_163;
   import package_6.class_14;
   import package_69.class_1052;
   import package_69.class_978;
   import package_75.class_277;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public final class class_192 extends class_109
   {
      
      public static const const_853:String = "dataUpdateInit";
      
      public static const const_892:String = "dataUpdate";
      
      public static const const_782:String = "datalistmessage";
       
      
      public var var_680:class_84;
      
      private var var_2356:int = 0;
      
      private var var_254:NpcQuestPopupVo;
      
      private var var_2475:int = 1000;
      
      private var var_720:class_1052;
      
      private var var_1238:class_277;
      
      public function class_192()
      {
         this.var_680 = new class_84();
         this.var_254 = new NpcQuestPopupVo();
         super();
         this.var_254 = new NpcQuestPopupVo();
         var _loc1_:class_87 = class_47.method_22;
         this.var_254.questWindowCommonLoca.actionButtonAccept = _loc1_.method_20("questWindowAccept");
         this.var_254.questWindowCommonLoca.actionButtonRedeem = _loc1_.method_20("questWindowRedeem");
         this.var_254.questWindowCommonLoca.headlineRewards = _loc1_.method_20("questWindowRewardLabel");
         this.var_254.questWindowCommonLoca.headlineTargets = _loc1_.method_20("questWindowTargetLabel");
         this.var_254.questWindowCommonLoca.tooltipRefesh = _loc1_.method_20("questRefreshButton");
         this.var_254.questWindowCommonLoca.tooltipRefesh = _loc1_.method_20("questRefreshButton");
         this.var_1238 = class_48.name_3.var_1261;
         this.method_1356();
      }
      
      public static function method_2177(param1:QuestDisplayVo, param2:QuestDisplayVo) : int
      {
         var _loc3_:class_130 = param1.quest;
         var _loc4_:class_130 = param2.quest;
         if(_loc3_.name_10 < _loc4_.name_10)
         {
            return -1;
         }
         if(_loc3_.name_10 > _loc4_.name_10)
         {
            return 1;
         }
         if(param1.headline < param2.headline)
         {
            return -1;
         }
         if(param1.headline > param2.headline)
         {
            return 1;
         }
         return 0;
      }
      
      public final function method_1356() : void
      {
         this.var_680.name_4 = -1;
         this.var_1238.removeEventListener(Event.CHANGE,this.method_735);
      }
      
      public final function method_1487(param1:class_84) : void
      {
         this.name_64.clearDisplayLists();
         class_177.method_812(param1,this.var_680);
         var _loc2_:class_100 = class_47.method_29.method_44(this.var_680);
         if(_loc2_)
         {
            this.var_254.headline = _loc2_.method_27().toLocaleUpperCase();
            this.var_254.shipVo = _loc2_.method_33;
         }
         if(this.var_720)
         {
            this.var_720.removeEventListener(class_978.const_4,this.method_1128);
            this.var_720.method_36();
            this.var_720 = null;
         }
         this.var_1238.addEventListener(Event.CHANGE,this.method_735);
      }
      
      private final function getNpcId() : int
      {
         var _loc1_:class_100 = class_47.method_29.method_44(this.var_680) as class_100;
         return !!_loc1_?int(_loc1_.method_33.var_16):-1;
      }
      
      public function get method_2274() : Boolean
      {
         if(getTimer() - this.var_2356 > this.var_2475)
         {
            this.var_2356 = getTimer();
            return true;
         }
         return false;
      }
      
      public function get name_64() : NpcQuestPopupVo
      {
         return this.var_254;
      }
      
      public function set name_64(param1:NpcQuestPopupVo) : void
      {
         this.var_254 = param1;
         this.method_1346();
      }
      
      public function get name_85() : class_1052
      {
         return this.var_720;
      }
      
      public final function method_2107() : void
      {
         if(this.var_720)
         {
            return;
         }
         this.var_720 = new class_1052(this.getNpcId());
         this.var_720.addEventListener(class_978.const_4,this.method_1128);
         this.var_720.name_16();
      }
      
      private final function method_1128(param1:Event) : void
      {
         this.method_672();
      }
      
      public final function method_735(param1:Event) : void
      {
         var _loc4_:class_130 = null;
         var _loc5_:QuestDisplayVo = null;
         var _loc2_:Array = this.var_1238.method_1018(class_135.const_140,true);
         var _loc3_:NpcQuestListVo = this.var_254.getDisplayList(NpcQuestListVo.TYPE_QUEST);
         _loc3_.title = class_47.method_22.method_20("questMenu");
         _loc3_.list.length = 0;
         for each(_loc4_ in _loc2_)
         {
            _loc5_ = new QuestDisplayVo();
            _loc5_.quest = _loc4_;
            _loc3_.list.push(_loc5_);
         }
         if(_loc3_.list.length != 0)
         {
            this.method_1346();
         }
      }
      
      private final function method_1346() : void
      {
         var rawDisplayVo:QuestDisplayVo = null;
         var rawQuest:class_130 = null;
         var completedTasks:int = 0;
         var hasTaskDoable:Boolean = false;
         var questDoableCount:int = 0;
         var notasks:Boolean = false;
         var qTask:class_129 = null;
         var hasRedeemDoable:Boolean = false;
         var precon:class_136 = null;
         var qReward:class_137 = null;
         var pcon:NpcQuestPreconditionItemVo = null;
         var tooltip:String = null;
         var bmp:BitmapData = null;
         var amt:int = 0;
         var listVo:NpcQuestListVo = this.var_254.getDisplayList(NpcQuestListVo.TYPE_QUEST);
         var list:Vector.<IContentModuleVo> = listVo.list;
         var len:int = list.length;
         var i:int = 0;
         while(i < len)
         {
            rawDisplayVo = list[i] as QuestDisplayVo;
            rawQuest = rawDisplayVo.quest;
            if(rawQuest)
            {
               rawDisplayVo.headline = class_20.name_3.method_381(rawQuest);
               rawDisplayVo.subheader = class_47.method_22.method_20("txtLevel") + " " + rawQuest.name_10;
               rawDisplayVo.story = class_20.name_3.method_2603(rawQuest);
               completedTasks = 0;
               hasTaskDoable = false;
               questDoableCount = 0;
               notasks = true;
               for each(qTask in rawQuest.var_90)
               {
                  notasks = notasks && qTask.name_17 == class_124.const_62;
                  rawDisplayVo.questTasks.push(class_20.name_3.method_1357(rawQuest,qTask.name_7,true));
                  if(qTask.name_17 == class_124.const_379)
                  {
                     questDoableCount++;
                     hasTaskDoable = true;
                     rawDisplayVo.questTasksDoable.push(true);
                  }
                  else
                  {
                     rawDisplayVo.questTasksDoable.push(false);
                     if(qTask.name_17 == class_124.const_62)
                     {
                        completedTasks++;
                     }
                  }
               }
               hasRedeemDoable = rawQuest.var_325 && rawQuest.var_90 && completedTasks == rawQuest.var_90.length - 1;
               for each(precon in rawQuest.var_419)
               {
                  pcon = new NpcQuestPreconditionItemVo();
                  pcon.condition = class_20.name_3.method_1858(rawQuest,precon.name_7);
                  pcon.complete = false;
                  rawDisplayVo.questPreconditions.push(pcon);
               }
               if(hasTaskDoable)
               {
                  rawDisplayVo.actionButtonText = this.var_254.questWindowCommonLoca.actionButtonAccept;
                  rawDisplayVo.questStatus = class_1051.const_1151;
                  if(questDoableCount == 2)
                  {
                     rawDisplayVo.questStatus = class_1051.const_1458;
                  }
               }
               else if(notasks)
               {
                  rawDisplayVo.actionButtonText = "Already redeemed";
                  rawDisplayVo.actionButtonDisabled = true;
                  rawDisplayVo.questStatus = class_1051.const_1151;
               }
               if(hasRedeemDoable)
               {
                  rawDisplayVo.actionButtonText = this.var_254.questWindowCommonLoca.actionButtonRedeem;
                  rawDisplayVo.questStatus = class_1051.const_1702;
               }
               if(rawQuest.name_17 == class_128.const_78)
               {
                  if(!hasRedeemDoable)
                  {
                     rawDisplayVo.actionButtonDisabled = !this.method_2736(rawQuest);
                     rawDisplayVo.actionButtonText = this.var_254.questWindowCommonLoca.actionButtonRedeem;
                     rawDisplayVo.questStatus = class_1051.const_941;
                  }
                  else
                  {
                     rawDisplayVo.actionButtonDisabled = false;
                  }
               }
               else if(rawQuest.name_17 == class_128.const_412)
               {
                  rawDisplayVo.actionButtonDisabled = true;
                  rawDisplayVo.actionButtonText = this.var_254.questWindowCommonLoca.actionButtonAccept;
                  rawDisplayVo.questStatus = class_1051.const_941;
               }
               for each(qReward in rawQuest.var_144)
               {
                  tooltip = class_133.method_27(qReward.name_5,qReward.var_13);
                  rawDisplayVo.rewardTooltips.push(tooltip);
                  try
                  {
                     bmp = class_1050.method_473(qReward.name_5,qReward.var_13);
                  }
                  catch(e:Error)
                  {
                     bmp = new BitmapData(37,37,false,16711680);
                  }
                  rawDisplayVo.rewardImages.push(bmp);
                  amt = qReward.var_10;
                  rawDisplayVo.rewardValues.push(amt);
               }
            }
            i++;
         }
         list.sort(method_2177);
         this.method_672();
      }
      
      private final function method_2736(param1:class_130) : Boolean
      {
         if(param1.name_17 != class_128.const_276 || param1.name_17 != class_128.const_78 || param1.name_17 != class_128.const_185)
         {
            return false;
         }
         var _loc2_:int = param1.var_90.length;
         return param1.var_90[_loc2_ - 1].name_17 == class_124.const_62;
      }
      
      public final function method_2831() : void
      {
         var _loc1_:class_98 = class_47.method_21().method_392(this.var_680);
         if(_loc1_)
         {
            this.name_64.headline = _loc1_.method_27().toLocaleUpperCase();
         }
         dispatchEvent(new Event(const_853));
      }
      
      public final function method_672() : void
      {
         dispatchEvent(new Event(const_892));
      }
      
      public final function method_2296(param1:int) : void
      {
         var _loc2_:* = this.var_680.name_4 != -1;
         if(_loc2_)
         {
            this.method_2456();
         }
         dispatchEvent(new Event(const_782));
      }
      
      private final function method_2456() : void
      {
         StatelessCMD.invoke(CmdSL_OpenNPCWindow);
      }
   }
}
