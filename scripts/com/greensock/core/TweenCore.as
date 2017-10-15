package com.greensock.core
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.vo.class_1372;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_82;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.modules.common.clash.ClashRankingList;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.populateLoot;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildTreasuryLogListItem;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.popups.quest.npc.component.QuestItemBG;
   import com.bigpoint.seafight.view.popups.reputation.ReputationFavoriteEvent;
   import com.bigpoint.seafight.view.popups.spymenu.component.SpyUserStatsItemRenderer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.target;
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_1119;
   import net.bigpoint.seafight.com.module.ship.class_1310;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import package_121.class_773;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_15.class_48;
   import package_158.class_703;
   import package_170.class_979;
   import package_171.class_1270;
   import package_171.class_981;
   import package_178.class_1060;
   import package_18.class_855;
   import package_186.class_1137;
   import package_186.class_1465;
   import package_216.class_1575;
   import package_28.class_56;
   import package_37.class_75;
   import package_40.class_85;
   import package_41.class_93;
   import package_49.class_137;
   import package_49.class_880;
   import package_5.class_1026;
   import package_5.class_123;
   import package_5.class_22;
   import package_53.class_1101;
   import package_58.class_175;
   import package_69.class_978;
   import package_7.class_1039;
   import package_7.class_74;
   import package_7.class_750;
   import package_74.class_256;
   import package_88.class_290;
   import package_92.class_336;
   import package_92.class_944;
   import package_95.class_341;
   import package_97.class_343;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class TweenCore
   {
      
      public static const version:Number = 1.693;
      
      protected static var _classInitted:Boolean;
       
      
      protected var _delay:Number;
      
      protected var _hasUpdate:Boolean;
      
      protected var _rawPrevTime:Number = -1;
      
      public var vars:Object;
      
      public var active:Boolean;
      
      public var gc:Boolean;
      
      public var initted:Boolean;
      
      public var timeline:SimpleTimeline;
      
      public var cachedStartTime:Number;
      
      public var cachedTime:Number;
      
      public var cachedTotalTime:Number;
      
      public var cachedDuration:Number;
      
      public var cachedTotalDuration:Number;
      
      public var cachedTimeScale:Number;
      
      public var cachedPauseTime:Number;
      
      public var cachedReversed:Boolean;
      
      public var nextNode:TweenCore;
      
      public var prevNode:TweenCore;
      
      public var cachedOrphan:Boolean;
      
      public var cacheIsDirty:Boolean;
      
      public var cachedPaused:Boolean;
      
      public var data;
      
      public function TweenCore(param1:Number = 0, param2:Object = null)
      {
         super();
         this.vars = param2 != null?param2:{};
         if(this.vars.isGSVars)
         {
            this.vars = this.vars.vars;
         }
         this.cachedDuration = this.cachedTotalDuration = param1;
         this._delay = !!this.vars.delay?Number(Number(this.vars.delay)):Number(0);
         this.cachedTimeScale = !!this.vars.timeScale?Number(Number(this.vars.timeScale)):Number(1);
         this.active = Boolean(param1 == 0 && this._delay == 0 && this.vars.immediateRender != false);
         this.cachedTotalTime = this.cachedTime = 0;
         this.data = this.vars.data;
         if(!_classInitted)
         {
            if(isNaN(TweenLite.rootFrame))
            {
               TweenLite.initClass();
               _classInitted = true;
            }
            else
            {
               return;
            }
         }
         var _loc3_:SimpleTimeline = this.vars.timeline is SimpleTimeline?this.vars.timeline:!!this.vars.useFrames?TweenLite.rootFramesTimeline:TweenLite.rootTimeline;
         _loc3_.insert(this,_loc3_.cachedTotalTime);
         if(this.vars.reversed)
         {
            this.cachedReversed = true;
         }
         if(this.vars.paused)
         {
            this.paused = true;
         }
      }
      
      public final function play() : void
      {
         this.reversed = false;
         this.paused = false;
      }
      
      public final function pause() : void
      {
         this.paused = true;
      }
      
      public final function resume() : void
      {
         this.paused = false;
      }
      
      public final function restart(param1:Boolean = false, param2:Boolean = true) : void
      {
         this.reversed = false;
         this.paused = false;
         this.setTotalTime(!!param1?Number(-this._delay):Number(0),param2);
      }
      
      public final function reverse(param1:Boolean = true) : void
      {
         this.reversed = true;
         if(param1)
         {
            this.paused = false;
         }
         else if(this.gc)
         {
            this.setEnabled(true,false);
         }
      }
      
      public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function complete(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!param1)
         {
            this.renderTime(this.totalDuration,param2,false);
            return;
         }
         if(this.timeline.autoRemoveChildren)
         {
            this.setEnabled(false,false);
         }
         else
         {
            this.active = false;
         }
         if(!param2)
         {
            if(this.vars.onComplete && this.cachedTotalTime >= this.cachedTotalDuration && !this.cachedReversed)
            {
               this.vars.onComplete.apply(null,this.vars.onCompleteParams);
            }
            else if(this.cachedReversed && this.cachedTotalTime == 0 && this.vars.onReverseComplete)
            {
               this.vars.onReverseComplete.apply(null,this.vars.onReverseCompleteParams);
            }
         }
      }
      
      public function invalidate() : void
      {
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : Boolean
      {
         this.gc = !param1;
         if(param1)
         {
            this.active = Boolean(!this.cachedPaused && this.cachedTotalTime > 0 && this.cachedTotalTime < this.cachedTotalDuration);
            if(!param2 && this.cachedOrphan)
            {
               this.timeline.insert(this,this.cachedStartTime - this._delay);
            }
         }
         else
         {
            this.active = false;
            if(!param2 && !this.cachedOrphan)
            {
               this.timeline.remove(this,true);
            }
         }
         return false;
      }
      
      public final function kill() : void
      {
         this.setEnabled(false,false);
      }
      
      protected final function setDirtyCache(param1:Boolean = true) : void
      {
         var _loc2_:TweenCore = !!param1?this:this.timeline;
         while(_loc2_)
         {
            _loc2_.cacheIsDirty = true;
            _loc2_ = _loc2_.timeline;
         }
      }
      
      protected final function setTotalTime(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.timeline)
         {
            _loc3_ = !!this.cachedPaused?Number(this.cachedPauseTime):Number(this.timeline.cachedTotalTime);
            if(this.cachedReversed)
            {
               _loc4_ = !!this.cacheIsDirty?Number(this.totalDuration):Number(this.cachedTotalDuration);
               this.cachedStartTime = _loc3_ - (_loc4_ - param1) / this.cachedTimeScale;
            }
            else
            {
               this.cachedStartTime = _loc3_ - param1 / this.cachedTimeScale;
            }
            if(!this.timeline.cacheIsDirty)
            {
               this.setDirtyCache(false);
            }
            if(this.cachedTotalTime != param1)
            {
               this.renderTime(param1,param2,false);
            }
         }
      }
      
      public function get delay() : Number
      {
         return this._delay;
      }
      
      public function set delay(param1:Number) : void
      {
         this.startTime = this.startTime + (param1 - this._delay);
         this._delay = param1;
      }
      
      public function get duration() : Number
      {
         return this.cachedDuration;
      }
      
      public function set duration(param1:Number) : void
      {
         var _loc2_:Number = param1 / this.cachedDuration;
         this.cachedDuration = this.cachedTotalDuration = param1;
         this.setDirtyCache(true);
         if(this.active && !this.cachedPaused && param1 != 0)
         {
            this.setTotalTime(this.cachedTotalTime * _loc2_,true);
         }
      }
      
      public function get totalDuration() : Number
      {
         return this.cachedTotalDuration;
      }
      
      public function set totalDuration(param1:Number) : void
      {
         this.duration = param1;
      }
      
      public function get currentTime() : Number
      {
         return this.cachedTime;
      }
      
      public function set currentTime(param1:Number) : void
      {
         this.setTotalTime(param1,false);
      }
      
      public function get totalTime() : Number
      {
         return this.cachedTotalTime;
      }
      
      public function set totalTime(param1:Number) : void
      {
         this.setTotalTime(param1,false);
      }
      
      public function get startTime() : Number
      {
         return this.cachedStartTime;
      }
      
      public function set startTime(param1:Number) : void
      {
         if(this.timeline != null && (param1 != this.cachedStartTime || this.gc))
         {
            this.timeline.insert(this,param1 - this._delay);
         }
         else
         {
            this.cachedStartTime = param1;
         }
      }
      
      public function get reversed() : Boolean
      {
         return this.cachedReversed;
      }
      
      public function set reversed(param1:Boolean) : void
      {
         if(param1 != this.cachedReversed)
         {
            this.cachedReversed = param1;
            this.setTotalTime(this.cachedTotalTime,true);
         }
      }
      
      public function get paused() : Boolean
      {
         return this.cachedPaused;
      }
      
      public function set paused(param1:Boolean) : void
      {
         if(param1 != this.cachedPaused && this.timeline)
         {
            if(param1)
            {
               this.cachedPauseTime = this.timeline.rawTime;
            }
            else
            {
               this.cachedStartTime = this.cachedStartTime + (this.timeline.rawTime - this.cachedPauseTime);
               this.cachedPauseTime = NaN;
               this.setDirtyCache(false);
            }
            this.cachedPaused = param1;
            this.active = Boolean(!this.cachedPaused && this.cachedTotalTime > 0 && this.cachedTotalTime < this.cachedTotalDuration);
         }
         if(!param1 && this.gc)
         {
            this.setEnabled(true,false);
         }
      }
   }
}
