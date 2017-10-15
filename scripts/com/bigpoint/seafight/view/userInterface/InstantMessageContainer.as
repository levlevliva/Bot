package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.net.events.class_1021;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
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
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.QuestWindowHeaderBG;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.greensock.TweenMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Bitmap;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.seafight.com.module.event.EventType;
   import net.bigpoint.seafight.com.module.guild.class_394;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_94;
   import package_152.class_934;
   import package_18.class_1521;
   import package_2.class_65;
   import package_20.class_33;
   import package_206.class_1357;
   import package_39.class_973;
   import package_41.class_93;
   import package_45.class_110;
   import package_46.class_1356;
   import package_49.class_880;
   import package_5.class_12;
   import package_56.class_170;
   import package_69.class_978;
   import package_72.class_1080;
   import package_72.class_1442;
   import package_84.class_270;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class InstantMessageContainer extends Group
   {
      
      public static const COMMON_PLACEING:int = 0;
      
      public static const COUNTER_PLACEING:int = 1;
       
      
      private var _1674510632_textHolder:UIComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _ui:UserInterface;
      
      private var _configXML:XML;
      
      private var _timer:Timer;
      
      private var _styleSheet:StyleSheet;
      
      private var _originalPos:Point;
      
      private var _maxShowedMessages:int;
      
      private var _msgQueueArr:Array;
      
      private var _style:Object;
      
      private var _currentPositionMode:int = 0;
      
      public function InstantMessageContainer()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._InstantMessageContainer_UIComponent1_i()];
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public final function init(param1:UserInterface) : void
      {
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this._ui = param1;
         this._configXML = this._ui.getUIConfig().instantMessages[0];
         this._styleSheet = this._ui.getStyleSheet();
         this._style = this._styleSheet.getStyle(this._configXML.@style);
         this._maxShowedMessages = this._configXML.@maxShowedMsg;
         this._originalPos = new Point(this._configXML.@xPos,this._configXML.@yPos);
         this._msgQueueArr = new Array();
         var _loc2_:int = new Number(this._configXML.@clearDelay) * 1000;
         this._timer = new Timer(_loc2_,1);
         this._timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.handleTimerCompleted);
         this.rePosition();
         this.scaleX = this._style.scale;
         this.scaleY = this._style.scale;
         this.alpha = this._style.alpha;
         this.visible = this._style.visible == "true";
         this.mouseEnabled = this._style.mouseEnabled == "true";
         if(class_170.name_3)
         {
            class_170.name_3.addEventListener(class_1021.var_1578,this.handleDisplayMessage);
         }
      }
      
      private final function buildInstantMessageBox() : TextField
      {
         var _loc1_:TextField = null;
         _loc1_ = new TextField();
         _loc1_.blendMode = BlendMode.LAYER;
         _loc1_.width = this._configXML.@width;
         this.width = _loc1_.width;
         _loc1_.autoSize = this._style.autoSize;
         _loc1_.multiline = this._style.multiline == "true";
         _loc1_.selectable = this._style.selectable == "false";
         _loc1_.mouseEnabled = this._style.mouseEnabled == "false";
         _loc1_.wordWrap = this._style.wordWrap == "true";
         _loc1_.alpha = 0;
         _loc1_.defaultTextFormat = this._styleSheet.transform(this._style);
         return _loc1_;
      }
      
      private final function handleDisplayMessage(param1:class_1021) : void
      {
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc2_:String = param1.var_2293;
         if(_loc2_ == "warmap:actionitemused" && param1.name_18)
         {
            _loc2_ = class_47.method_22.method_20(_loc2_);
            _loc2_ = _loc2_.replace("%1",class_47.method_37.method_32(class_88.const_2 + param1.name_18[1],param1.name_18[2]));
            this.update(_loc2_);
            return;
         }
         if(_loc2_ == "warmap:battlepointsrankup" && param1.name_18)
         {
            _loc4_ = param1.name_18[0];
            _loc2_ = class_47.method_22.method_20(_loc2_);
            _loc2_ = _loc2_.replace("%1",_loc4_);
            _loc2_ = _loc2_.replace("%RANK%",class_47.method_37.method_32(class_88.const_884,_loc4_));
            this.update(_loc2_);
            return;
         }
         if(_loc2_ == "warmap:weaponsreward" && param1.name_18)
         {
            _loc2_ = class_47.method_22.method_20(_loc2_);
            _loc2_ = _loc2_.replace("%2",class_47.method_37.method_32(class_88.const_93,param1.name_18[1]));
            _loc2_ = _loc2_.replace("%1",param1.name_18[0] as String);
            this.update(_loc2_);
            return;
         }
         if(_loc2_ == "warmap:harpoonsreward" && param1.name_18)
         {
            _loc2_ = class_47.method_22.method_20(_loc2_);
            _loc2_ = _loc2_.replace("%2",class_47.method_37.method_32(class_88.const_65,param1.name_18[1]));
            _loc2_ = _loc2_.replace("%1",param1.name_18[0] as String);
            this.update(_loc2_);
            return;
         }
         if(_loc2_ == "warmap:actionitemreward" && param1.name_18)
         {
            _loc2_ = class_47.method_22.method_20(_loc2_);
            _loc2_ = _loc2_.replace("%2",class_47.method_37.method_32(class_88.const_153,param1.name_18[1]));
            _loc2_ = _loc2_.replace("%1",param1.name_18[0] as String);
            this.update(_loc2_);
            return;
         }
         if(_loc2_ == "warmap:ammunitionreward" && param1.name_18)
         {
            _loc2_ = class_47.method_22.method_20(_loc2_);
            _loc2_ = _loc2_.replace("%2",class_47.method_37.method_32(class_88.const_50,param1.name_18[1]));
            _loc2_ = _loc2_.replace("%1",param1.name_18[0] as String);
            this.update(_loc2_);
            return;
         }
         if(_loc2_ == "warmap:eventcurrencyreward" && param1.name_18)
         {
            _loc2_ = class_47.method_22.method_20(_loc2_);
            _loc2_ = _loc2_.replace("%2",class_47.method_37.method_32(class_88.const_19,param1.name_18[1]));
            _loc2_ = _loc2_.replace("%1",param1.name_18[0] as String);
            this.update(_loc2_);
            return;
         }
         if(_loc2_ == "warmap:npcstrategy" && param1.name_18)
         {
            _loc5_ = parseInt(param1.name_18[0]);
            _loc2_ = class_47.method_22.method_20(_loc2_);
            _loc2_ = _loc2_.replace("%1",class_47.method_113.method_27(_loc5_));
            this.update(_loc2_);
            return;
         }
         if(_loc2_ == "warmap:reward" && param1.name_18)
         {
            if(param1.name_18[1] == "labels")
            {
               _loc6_ = class_47.method_37.method_32(class_88.const_2 + param1.name_18[2],param1.name_18[3]);
            }
            else
            {
               _loc7_ = "rewardtype" + param1.name_18[1];
               _loc6_ = class_47.method_22.method_20(_loc7_);
            }
            _loc2_ = class_47.method_22.method_20(_loc2_);
            _loc2_ = _loc2_.replace("%2",_loc6_);
            _loc2_ = _loc2_.replace("%1",param1.name_18[0] as String);
            this.update(_loc2_);
            return;
         }
         if(_loc2_ == "warmap:rewardLevel" && param1.name_18)
         {
            _loc8_ = class_47.method_37.method_32(class_88.const_2 + param1.name_18[2],param1.name_18[3]);
            _loc2_ = class_47.method_22.method_20(_loc2_);
            _loc2_ = _loc2_.replace("%2",_loc8_);
            _loc2_ = _loc2_.replace("%1",param1.name_18[0] as String);
            this.update(_loc2_);
            return;
         }
         this.update(class_13.method_78(_loc2_,param1.name_18));
         var _loc3_:String = "";
         if(param1.name_18 != null)
         {
            if(param1.name_18.length > 0)
            {
               _loc3_ = param1.name_18.join(",");
            }
         }
      }
      
      public final function update(param1:String) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:TextField = this.buildInstantMessageBox();
         _loc2_.htmlText = param1;
         this._msgQueueArr.unshift(this._textHolder.addChild(_loc2_));
         this.placeMessageBoxes();
      }
      
      private final function placeMessageBoxes() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc1_:Number = 1 / this._maxShowedMessages;
         if(this._msgQueueArr.length == 1)
         {
            this._msgQueueArr[0].alpha = 1;
            this._msgQueueArr[0].y = 0;
         }
         else
         {
            _loc2_ = 1;
            while(_loc2_ < this._msgQueueArr.length)
            {
               this._msgQueueArr[0].y = 0;
               this._msgQueueArr[0].alpha = 1;
               _loc3_ = _loc2_ - 1;
               this._msgQueueArr[_loc2_].y = this._msgQueueArr[_loc3_].y + this._msgQueueArr[_loc3_].height + 3;
               _loc4_ = new Number(this._msgQueueArr[_loc3_].alpha) - _loc1_;
               this._msgQueueArr[_loc2_].alpha = _loc4_;
               if(_loc4_ <= 0)
               {
                  this._textHolder.removeChild(this._msgQueueArr.splice(_loc2_,1)[0]);
               }
               _loc2_++;
            }
         }
         this.setPos(COMMON_PLACEING);
         this._timer.start();
      }
      
      private final function handleTimerCompleted(param1:TimerEvent) : void
      {
         if(this._msgQueueArr.length > 0)
         {
            this.fadeOut();
            if(this._msgQueueArr.length == 0)
            {
               return;
            }
            this.placeMessageBoxes();
         }
      }
      
      private final function fadeOut() : void
      {
         var dsp:DisplayObject = null;
         dsp = this._msgQueueArr.pop() as DisplayObject;
         if(!dsp)
         {
            return;
         }
         TweenMax.to(dsp,0.6,{
            "alpha":0,
            "onComplete":function():void
            {
               if(dsp)
               {
                  _textHolder.removeChild(dsp);
               }
            }
         });
      }
      
      public final function setPos(param1:int) : void
      {
         this._currentPositionMode = param1;
         var _loc2_:int = this._originalPos.x;
         var _loc3_:int = this._originalPos.y;
         switch(this._currentPositionMode)
         {
            case COMMON_PLACEING:
               break;
            case COUNTER_PLACEING:
               _loc3_ = _loc3_ + (this._ui.globalCntTxt.height + 5);
         }
         _loc2_ = _loc2_ + class_47.method_24.method_122.x;
         _loc3_ = _loc3_ + class_47.method_24.method_122.y;
         if(this.x != _loc2_)
         {
            this.x = _loc2_;
         }
         if(this.y != _loc3_)
         {
            this.y = _loc3_;
         }
         if(class_12.var_104 == class_12.const_15)
         {
            this.x = (class_47.method_49.stageWidth - this.width) * 0.5;
         }
      }
      
      public final function rePosition() : void
      {
         this.setPos(this._currentPositionMode);
      }
      
      private final function _InstantMessageContainer_UIComponent1_i() : UIComponent
      {
         var _loc1_:UIComponent = new UIComponent();
         _loc1_.id = "_textHolder";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._textHolder = _loc1_;
         BindingManager.executeBindings(this,"_textHolder",this._textHolder);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _textHolder() : UIComponent
      {
         return this._1674510632_textHolder;
      }
      
      public function set _textHolder(param1:UIComponent) : void
      {
         var _loc2_:Object = this._1674510632_textHolder;
         if(_loc2_ !== param1)
         {
            this._1674510632_textHolder = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_textHolder",_loc2_,param1));
            }
         }
      }
   }
}
