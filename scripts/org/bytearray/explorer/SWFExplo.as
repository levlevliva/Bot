package org.bytearray.explorer
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.BoardingLogListItem;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.common.BadgeLootIcon;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.LootIcon;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
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
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuSearchTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuSearchTabController;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.target;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import net.bigpoint.seafight.com.module.guild.class_1554;
   import net.bigpoint.seafight.com.module.guild.class_701;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import org.bytearray.explorer.events.SWFExplorerErrorEvent;
   import org.bytearray.explorer.events.SWFExplorerEvent;
   import package_109.class_626;
   import package_133.class_595;
   import package_14.class_47;
   import package_14.class_96;
   import package_170.class_979;
   import package_18.class_1521;
   import package_190.class_1168;
   import package_20.class_33;
   import package_41.class_89;
   import package_41.class_93;
   import package_49.class_140;
   import package_5.class_43;
   import package_5.class_984;
   import package_51.class_1355;
   import package_69.class_978;
   import package_89.class_1378;
   import package_89.class_1379;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   import spark.primitives.Graphic;
   
   use namespace mx_internal;
   
   public final class SWFExplo extends EventDispatcher
   {
      
      private static const NOT_COMPRESSED:int = 70;
      
      private static const COMPRESSED:int = 67;
      
      private static const FULL:int = 63;
      
      private static const SYMBOLCLASS:int = 76;
      
      private static const FILEATTRIBUTES:int = 69;
      
      public static const CLASSES:String = "classes";
      
      public static const ACCELERATION:String = "acceleration";
      
      public static const NONE:int = 0;
      
      public static const DIRECT:int = 1;
      
      public static const GPU:int = 2;
       
      
      private var stream:ByteArray;
      
      private var compressed:int;
      
      private var nBits:int;
      
      private var version:int;
      
      private var length:int;
      
      private var swf:ByteArray;
      
      private var frameRate:int;
      
      private var frameCount:int;
      
      private var dictionary:Array;
      
      private var arrayClasses:Array;
      
      private var accelerationType:int;
      
      private var criteria:int;
      
      private var currentByte:int;
      
      private var bitPosition:int;
      
      private var buffer:uint = 0;
      
      private var pointer:uint = 0;
      
      private var source:uint;
      
      public function SWFExplo()
      {
         super();
         this.arrayClasses = new Array();
         addEventListener(Event.COMPLETE,this.complete);
      }
      
      private final function complete(param1:Event) : void
      {
      }
      
      public final function parse(param1:ByteArray, param2:String = "classes", param3:String = "") : Array
      {
         var _loc15_:Array = null;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:String = null;
         this.stream = param1;
         this.arrayClasses = new Array();
         this.stream.position = 0;
         this.compressed = this.stream.readUnsignedByte();
         this.stream.position = this.stream.position + 2;
         this.version = this.stream.readUnsignedByte();
         this.stream.endian = Endian.LITTLE_ENDIAN;
         this.length = this.stream.readUnsignedInt();
         this.stream.endian = Endian.BIG_ENDIAN;
         this.swf = new ByteArray();
         this.stream.readBytes(this.swf,0);
         if(this.compressed == SWFExplo.COMPRESSED)
         {
            this.swf.uncompress();
         }
         var _loc4_:uint = this.swf.readUnsignedByte();
         var _loc5_:uint = _loc4_ >> 3;
         var _loc6_:uint = _loc5_ - 3;
         var _loc7_:uint = _loc4_ & 7;
         this.source = this.swf.readUnsignedByte();
         var _loc8_:uint = this.readBits(_loc6_) | (_loc7_ << _loc6_) / 20;
         var _loc9_:uint = this.readBits(_loc5_) / 20;
         var _loc10_:uint = this.readBits(_loc5_) / 20;
         var _loc11_:uint = this.readBits(_loc5_) / 20;
         var _loc12_:uint = this.swf.readShort() & 255;
         var _loc13_:uint = this.swf.readShort();
         var _loc14_:uint = _loc13_ >> 8 & 255 | (_loc13_ & 255) << 8;
         this.swf.endian = Endian.LITTLE_ENDIAN;
         this.dictionary = this.browseTables();
         if(param2 == SWFExplorer.CLASSES)
         {
            this.criteria = SWFExplo.SYMBOLCLASS;
            _loc15_ = this.dictionary.filter(this.filter);
            if(_loc15_.length > 0)
            {
               this.swf.position = _loc15_[0].offset;
               _loc17_ = this.swf.readUnsignedShort();
               _loc16_ = 0;
               while(_loc16_ < _loc17_)
               {
                  this.swf.readUnsignedShort();
                  _loc18_ = this.swf.readByte();
                  _loc19_ = new String();
                  while(_loc18_ != 0)
                  {
                     _loc19_ = _loc19_ + String.fromCharCode(_loc18_);
                     _loc18_ = this.swf.readByte();
                  }
                  this.arrayClasses.push(_loc19_);
                  _loc16_++;
               }
            }
            else
            {
               dispatchEvent(new SWFExplorerErrorEvent(SWFExplorerErrorEvent.NO_DEFINITIONS));
            }
            dispatchEvent(new SWFExplorerEvent(SWFExplorerEvent.COMPLETE,this.arrayClasses,param3,this));
         }
         else if(param2 == SWFExplorer.ACCELERATION)
         {
            this.criteria = SWFExplo.FILEATTRIBUTES;
            _loc15_ = this.dictionary.filter(this.filter);
            if(_loc15_.length > 0)
            {
               this.swf.position = _loc15_[0].offset;
               this.accelerationType = (this.swf.readByte() & 224) >> 5;
            }
         }
         return this.arrayClasses;
      }
      
      private final function readBits(param1:uint) : uint
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         this.buffer = 0;
         var _loc4_:uint = 0;
         while(_loc4_ < param1)
         {
            _loc2_ = 1 << 7 >> this.pointer++;
            _loc3_ = uint((this.source & _loc2_) != 0);
            this.buffer = this.buffer | _loc3_ << param1 - 1 - _loc4_;
            if(this.pointer == 8)
            {
               this.source = this.swf.readUnsignedByte();
               this.pointer = 0;
            }
            _loc4_++;
         }
         return this.buffer;
      }
      
      private final function filter(param1:TagInfos_3111, param2:int, param3:Array) : Boolean
      {
         return param1.tag == this.criteria;
      }
      
      private final function browseTables() : Array
      {
         var _loc1_:int = 0;
         var _loc2_:* = 0;
         var _loc4_:TagInfos_3111 = null;
         var _loc3_:Array = new Array();
         while(_loc1_ = this.swf.readShort() >> 6 & 1023)
         {
            _loc4_ = new TagInfos_3111();
            _loc4_.tag = _loc1_;
            _loc4_.offset = this.swf.position;
            this.swf.position = this.swf.position - 2;
            _loc2_ = this.swf.readShort() & 63;
            if(_loc2_ < SWFExplo.FULL)
            {
               this.swf.position = this.swf.position + _loc2_;
            }
            else
            {
               _loc2_ = int(this.swf.readUnsignedInt());
               _loc4_.offset = this.swf.position;
               this.swf.position = this.swf.position + _loc2_;
            }
            _loc4_.endOffset = this.swf.position;
            _loc3_.push(_loc4_);
         }
         return _loc3_;
      }
      
      public final function getDefinitions() : Array
      {
         return this.arrayClasses;
      }
      
      public final function getTotalDefinitions() : uint
      {
         return this.arrayClasses.length;
      }
      
      public function get acceleration() : int
      {
         return this.accelerationType;
      }
   }
}

final class TagInfos_3111
{
    
   
   public var offset:int;
   
   public var endOffset:int;
   
   public var tag:int;
   
   function TagInfos_3111()
   {
      super();
   }
}
