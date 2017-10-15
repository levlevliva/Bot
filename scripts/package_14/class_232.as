package package_14
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_202;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getMapFieldPoint;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.hslider.HSliderThumbSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.BlueButton;
   import com.bigpoint.seafight.view.popups.common.BorderType2;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
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
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameAssistantModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameGlobalRankingModuleSimple;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameHighStriker;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameScoreScreenModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameShephard;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameSpeedRacer;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemsInventoryGroup;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabButtonListItem;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.component.QuestWindowHeaderBG;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.media.SoundChannel;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IVisualElement;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.graphics.LinearGradient;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_637;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_114.class_430;
   import package_131.class_573;
   import package_152.class_664;
   import package_154.class_842;
   import package_166.class_958;
   import package_17.class_1122;
   import package_17.class_1123;
   import package_17.class_1124;
   import package_17.class_1125;
   import package_17.class_990;
   import package_170.class_979;
   import package_18.class_1521;
   import package_181.class_1448;
   import package_183.class_1121;
   import package_23.class_42;
   import package_26.class_52;
   import package_29.class_143;
   import package_29.class_144;
   import package_29.class_57;
   import package_3.class_26;
   import package_3.class_378;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_48.class_996;
   import package_49.class_880;
   import package_5.class_1012;
   import package_5.class_123;
   import package_5.class_139;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_939;
   import package_5.class_984;
   import package_50.class_141;
   import package_54.class_1089;
   import package_72.class_203;
   import package_9.class_120;
   import package_9.class_17;
   import package_9.class_76;
   import package_9.class_91;
   import package_9.class_994;
   import spark.components.Button;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public final class class_232 extends EventDispatcher
   {
       
      
      private var var_254:class_1121;
      
      private var var_2139:class_990;
      
      private var var_1075:class_1126;
      
      private var var_1346:int;
      
      private var var_2123:String;
      
      private var var_399:int;
      
      private var var_1053:int;
      
      private var var_2004:BitmapData;
      
      private var var_1740:Dictionary;
      
      private var var_2034:Dictionary;
      
      private var var_1303:Vector.<class_120>;
      
      private var var_1699:Point;
      
      private var var_2302:Boolean = false;
      
      private var var_698:class_1122;
      
      public function class_232()
      {
         this.var_1699 = new Point();
         super();
         this.var_254 = new class_1121();
         addEventListener(class_52.const_94,this.method_1737);
         this.method_2284();
      }
      
      public static function method_141(param1:int) : Boolean
      {
         return class_47.method_51.method_141(param1);
      }
      
      public static function method_937(param1:int) : BitmapData
      {
         return class_47.method_51.method_256(param1,method_1101(param1));
      }
      
      private static function method_1101(param1:int) : int
      {
         switch(param1)
         {
            case class_994.const_1230:
               return 43;
            case class_994.const_977:
               return 66;
            default:
               return 0;
         }
      }
      
      public final function method_1064() : void
      {
         if(this.var_698)
         {
            this.var_698.method_1408();
            this.var_698 = null;
         }
         class_47.method_29.method_491();
         class_47.method_267.method_491();
         class_47.method_165.method_491();
         class_47.method_72.method_379();
         class_47.method_29.method_75.method_598(false);
         class_47.method_24.var_12.infoMessageContainer.deleteAllIcons();
         class_47.method_24.var_12.miniMap.method_54();
         class_378.name_3.method_2757();
         class_47.method_24.var_12.miniMap.method_2148();
      }
      
      public final function method_486() : void
      {
         var _loc1_:class_205 = class_47.method_24.var_12.globalActionBtnContainer;
         var _loc2_:class_1089 = _loc1_.method_109("voodooBackChange");
         var _loc3_:class_1089 = _loc1_.method_109("leavemap");
         if(this.var_2302)
         {
            _loc3_.visible = true;
         }
         else if(this.method_141(class_76.const_191))
         {
            _loc2_.visible = true;
         }
         else if(this.method_489())
         {
            _loc3_.visible = true;
         }
         else
         {
            _loc3_.visible = false;
            _loc2_.visible = false;
         }
      }
      
      public final function method_1525(param1:class_17) : void
      {
         this.method_1606(this.var_1303,param1.var_693);
         this.var_1346 = param1.name_11;
         this.var_2123 = class_139.method_27(this.var_1346);
         this.var_399 = param1.name_5;
         this.var_1053 = param1.var_744;
         this.var_1303 = param1.var_693;
         this.var_2302 = param1.var_1273;
         this.var_1699.x = Math.round(param1.var_36 * class_939.const_35 / class_141.const_311);
         this.var_1699.y = Math.round(param1.var_31 * class_939.const_37 / class_141.const_259);
         class_47.method_51.method_486();
         class_47.method_72.method_1088();
         class_47.method_48.method_213();
      }
      
      private final function method_1606(param1:Vector.<class_120>, param2:Vector.<class_120>) : void
      {
         var _loc4_:class_120 = null;
         var _loc5_:Boolean = false;
         var _loc6_:class_120 = null;
         this.var_254.method_1948();
         var _loc3_:String = "";
         for each(_loc4_ in param1)
         {
            _loc5_ = false;
            for each(_loc6_ in param2)
            {
               if(_loc6_.var_235 == _loc4_.var_235)
               {
                  _loc5_ = true;
                  break;
               }
            }
            if(!_loc5_)
            {
               this.var_254.method_1307(_loc4_.var_235);
               _loc3_ = _loc3_ + (_loc4_.var_235 + ",");
            }
         }
         if(_loc3_.length > 0)
         {
            Main.LOG.info(this + ": disposed map-tiles: " + _loc3_);
         }
      }
      
      public final function method_175() : int
      {
         return this.var_1346;
      }
      
      public final function method_2881() : int
      {
         return this.var_1053;
      }
      
      public final function method_2222() : String
      {
         return this.var_2123;
      }
      
      public final function method_699() : String
      {
         var _loc1_:String = null;
         switch(this.var_399)
         {
            case class_76.const_191:
               _loc1_ = "defaultVoodooMapName";
               break;
            case class_76.const_225:
               _loc1_ = "raidmap_name";
         }
         return !!_loc1_?class_47.method_22.method_28(_loc1_):this.var_2123;
      }
      
      public final function method_729() : void
      {
         var _loc1_:class_120 = null;
         if(!this.var_254.method_120())
         {
            this.var_254.method_68(this.method_729);
            return;
         }
         this.var_1075 = new class_1126(this.var_1053,method_937(this.var_1053));
         if(class_26.method_1105())
         {
            this.method_2614();
         }
         for each(_loc1_ in this.var_1303)
         {
            this.var_1075.method_1832(_loc1_.var_235,this.method_256(this.var_1053,_loc1_.var_235));
         }
         this.var_2139 = new class_990(this.var_1303,this.var_1075);
         this.var_2004 = null;
         this.method_2211();
         dispatchEvent(new class_52(class_52.const_94));
         class_47.method_24.var_12.setComponentsVisible(!this.method_141(class_76.const_136));
      }
      
      public final function method_256(param1:int, param2:int) : BitmapData
      {
         return this.var_254.method_256(param1,param2,!!this.var_1075?this.var_1075.method_708():null);
      }
      
      private final function method_1737(param1:class_52) : void
      {
         if(this.var_698)
         {
            return;
         }
         switch(this.var_399)
         {
            case class_76.const_462:
               this.var_698 = new class_1124(this);
               break;
            case class_76.const_236:
               this.var_698 = new class_1125(this);
               break;
            case class_76.const_313:
               this.var_698 = new class_1123(this);
         }
         if(this.var_698)
         {
            this.var_698.method_1401();
         }
      }
      
      private final function method_2284() : void
      {
         this.var_1740 = new Dictionary();
         var _loc1_:String = class_42.method_47("res/blockedcoords/blockedcoords.xml");
         var _loc2_:URLLoader = new URLLoader();
         _loc2_.addEventListener(Event.COMPLETE,this.method_1207);
         Main.LOG.info(this + ": Load => " + _loc1_);
         _loc2_.load(new URLRequest(_loc1_));
      }
      
      private final function method_1207(param1:Event) : void
      {
         var _loc4_:XML = null;
         (param1.target as URLLoader).removeEventListener(Event.COMPLETE,this.method_1207);
         var _loc2_:XML = new XML(param1.target["data"]);
         var _loc3_:XMLList = _loc2_.children();
         for each(_loc4_ in _loc3_)
         {
            this.method_2742(_loc4_.@id,_loc4_.toString());
         }
      }
      
      private final function method_2742(param1:int, param2:String) : void
      {
         var _loc3_:ByteArray = class_202.method_948(param2);
         _loc3_.position = 0;
         if(_loc3_.bytesAvailable % 2 > 0)
         {
            class_144.method_865("tile-" + param1 + ": invalid blocked-coords byte length " + _loc3_.bytesAvailable,class_143.const_1186);
            return;
         }
         var _loc4_:Vector.<int> = new Vector.<int>();
         while(_loc3_.bytesAvailable > 0)
         {
            _loc4_.push(_loc3_.readByte());
            _loc4_.push(_loc3_.readByte());
         }
         this.var_1740[param1] = _loc4_;
      }
      
      private final function method_2211() : void
      {
         var _loc1_:class_120 = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Vector.<int> = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         this.var_2034 = new Dictionary();
         for each(_loc1_ in this.var_1303)
         {
            _loc2_ = _loc1_.var_235;
            _loc3_ = 17 * _loc1_.var_8 + 16 * _loc1_.var_9;
            _loc4_ = -17 * _loc1_.var_8 + 16 * _loc1_.var_9;
            _loc5_ = this.var_1740[_loc2_];
            if(null == _loc5_)
            {
               Main.LOG.error(this + ": missing blocked coordinates for tile " + _loc2_);
            }
            else
            {
               _loc6_ = _loc5_.length;
               _loc7_ = 0;
               while(_loc7_ < _loc6_)
               {
                  this.var_2034[_loc5_[_loc7_] + _loc3_ + "," + (_loc5_[_loc7_ + 1] + _loc4_)] = true;
                  _loc7_++;
                  _loc7_++;
               }
            }
         }
      }
      
      public final function method_362(param1:int, param2:int) : Boolean
      {
         return this.var_2034[param1 + "," + param2];
      }
      
      public final function method_1265(param1:int, param2:int) : Boolean
      {
         var _loc3_:Point = getMapFieldPoint(param1,param2,class_102.method_210());
         return this.method_362(_loc3_.x,_loc3_.y);
      }
      
      public final function method_1909(param1:int) : BitmapData
      {
         return this.method_256(this.var_1053,param1);
      }
      
      private final function method_2614() : void
      {
         var _loc4_:int = 0;
         var _loc5_:Sprite = null;
         var _loc6_:Graphics = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this.var_2004)
         {
            return;
         }
         var _loc1_:BitmapData = new BitmapData(class_141.const_311,class_141.const_259,true,0);
         var _loc2_:int = 0;
         while(_loc2_ < 16)
         {
            _loc4_ = 0;
            while(_loc4_ < 17)
            {
               _loc5_ = new Sprite();
               _loc6_ = _loc5_.graphics;
               _loc7_ = _loc2_ * 40;
               _loc8_ = _loc4_ * 28;
               _loc6_.lineStyle(0,16777215,0.2);
               _loc6_.moveTo(_loc7_ + 20,_loc8_);
               _loc6_.lineTo(_loc7_ + 40,_loc8_ + 14);
               _loc6_.lineTo(_loc7_ + 20,_loc8_ + 28);
               _loc6_.lineTo(_loc7_,_loc8_ + 14);
               _loc6_.lineTo(_loc7_ + 20,_loc8_);
               _loc1_.draw(_loc5_);
               _loc4_++;
            }
            _loc2_++;
         }
         var _loc3_:BitmapData = this.var_1075.var_1308;
         _loc3_.draw(_loc1_);
         this.var_2004 = _loc1_;
      }
      
      public final function method_2845(param1:int) : Vector.<int>
      {
         return this.var_1740[param1] as Vector.<int>;
      }
      
      public final function method_852(param1:int) : class_990
      {
         return this.var_2139;
      }
      
      public final function method_1292() : Boolean
      {
         return this.var_399 == class_76.const_1712 || this.var_399 == class_76.const_733 || this.var_399 == class_76.const_225 || this.var_399 == class_76.const_313;
      }
      
      public final function method_141(param1:int) : Boolean
      {
         return param1 == this.var_399;
      }
      
      public final function method_489() : Boolean
      {
         return this.var_399 == class_76.const_733 || this.var_399 == class_76.const_225 || this.var_399 == class_76.const_191 || this.var_399 == class_76.const_236 || this.var_399 == class_76.const_462;
      }
      
      public final function method_2709() : Point
      {
         return this.var_1699;
      }
   }
}
