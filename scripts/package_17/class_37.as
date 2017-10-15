package package_17
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsConf_VO;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsItemStub;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.DefaultAmsConf_VO;
   import com.bigpoint.seafight.model.vo.class_1048;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.net.events.MapScrollEvent;
   import com.bigpoint.seafight.tools.class_1466;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_46;
   import com.bigpoint.seafight.tools.dragging.DragInteraction;
   import com.bigpoint.seafight.tools.dragging.DragManager;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getMapFieldPoint;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.cauldron.vo.CauldronRitualsVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.table.Table;
   import com.bigpoint.seafight.view.popups.common.texteditor.MiniTextEditor;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
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
   import com.bigpoint.seafight.view.popups.event.modules.common.clash.ClashRankingListItem;
   import com.bigpoint.seafight.view.popups.event.modules.common.clash.ClashRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.eventstatistics.EventStatisticModule;
   import com.bigpoint.seafight.view.popups.event.modules.evilrites.EvilRitesNpcKillsModule;
   import com.bigpoint.seafight.view.popups.event.modules.evilrites.EvilRitesRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.faction.FactionGlobalStats;
   import com.bigpoint.seafight.view.popups.event.modules.faction.FactionPersonalStats;
   import com.bigpoint.seafight.view.popups.event.modules.faction.PersonalCurrencyStats;
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.RankingKeyValueItem;
   import com.bigpoint.seafight.view.popups.event.modules.halloween.HalloweenNpcKillsModule;
   import com.bigpoint.seafight.view.popups.event.modules.halloween.HalloweenRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.MarauderModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.GroupMapMinigameModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.HireHelperMinigameModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.LootGroup;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameGlobalRankingModuleSimple;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameHighStriker;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameScoreScreenModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameShephard;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameSpeedRacer;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.vo.GemConfigTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.target;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuRanksTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuRanksTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRanksTabVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.ShipEquipmentStorageTab;
   import com.bigpoint.seafight.view.popups.shipequipment.tabs.ShipEquipmentStorageTabController;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.storage.StorageTextVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.storage.StorageVo;
   import com.bigpoint.seafight.view.popups.shipselection.vo.SelectionVListItemGemVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemConfigFooterVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.bit101.components.Style;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.media.Sound;
   import flash.net.LocalConnection;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.containers.Form;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_584;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.guild.class_461;
   import net.bigpoint.seafight.com.module.guild.class_901;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import net.bigpoint.seafight.com.module.minigame.class_470;
   import net.bigpoint.seafight.com.module.minigame.class_535;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import package_101.class_511;
   import package_105.class_369;
   import package_105.class_529;
   import package_108.class_581;
   import package_121.class_841;
   import package_130.class_1143;
   import package_132.class_605;
   import package_14.class_102;
   import package_14.class_1377;
   import package_14.class_199;
   import package_14.class_200;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_140.class_540;
   import package_158.class_703;
   import package_158.class_728;
   import package_16.class_28;
   import package_161.class_895;
   import package_162.class_835;
   import package_163.class_843;
   import package_167.class_972;
   import package_170.class_979;
   import package_171.class_981;
   import package_174.class_1374;
   import package_18.class_1521;
   import package_18.class_392;
   import package_28.class_198;
   import package_34.class_1499;
   import package_36.class_100;
   import package_39.class_1367;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_98;
   import package_43.class_105;
   import package_45.class_110;
   import package_46.class_1224;
   import package_46.class_1455;
   import package_46.class_975;
   import package_47.class_662;
   import package_47.class_834;
   import package_48.class_996;
   import package_5.class_1047;
   import package_5.class_123;
   import package_5.class_22;
   import package_51.class_1355;
   import package_52.class_1227;
   import package_53.class_1101;
   import package_57.class_171;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_915;
   import package_88.class_1093;
   import package_9.class_17;
   import package_9.class_91;
   import package_9.class_917;
   import package_93.class_876;
   import package_93.class_987;
   import package_94.class_732;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.events.IndexChangeEvent;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_37 extends EventDispatcher
   {
      
      private static const const_80:ILogger = Log.getLogger("CameraControl");
      
      private static var name_55:class_37;
      
      private static var var_633:Number = 1;
       
      
      private var var_668:class_199;
      
      private var var_301:Boolean = false;
      
      private var var_298:Boolean;
      
      private var var_295:Boolean;
      
      private var var_290:Boolean;
      
      private var var_750:Point;
      
      private var var_2140:int = 1500;
      
      private var var_367:ICameraHandler;
      
      private var var_1551:Boolean;
      
      private var var_1172:Point;
      
      public function class_37(param1:Function)
      {
         var _loc2_:String = null;
         this.var_668 = class_47.name_37;
         this.var_1172 = new Point();
         super();
         if(param1 !== method_976)
         {
            _loc2_ = "CameraControl is a Singleton and can only be accessed through CameraControl.getInstance()";
            const_80.error("ERROR " + _loc2_);
            throw new Error(_loc2_);
         }
         const_80.info("CONSTRUCTED SINGLETON");
         class_58.method_21().method_82("init camera control");
         class_47.method_49.addEventListener(FocusEvent.MOUSE_FOCUS_CHANGE,this.method_2034);
         class_47.method_49.addEventListener(Event.DEACTIVATE,this.method_1761);
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_37
      {
         if(name_55 == null)
         {
            name_55 = new class_37(method_976);
         }
         return name_55;
      }
      
      public static function method_1461(param1:Number) : void
      {
         var_633 = param1;
         try
         {
            if(name_55.var_367)
            {
               name_55.var_367.killTween();
            }
            name_55.method_665();
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      private function get method_1840() : ICameraHandler
      {
         if(this.var_367 == null)
         {
            this.method_1341();
         }
         return this.var_367;
      }
      
      public final function method_1341() : void
      {
         var _loc1_:Boolean = class_47.method_24.var_12.subMenuContainer.optionsMenu.method_136.method_73(class_54.const_1558);
         if(_loc1_)
         {
            if(!(this.var_367 is SmoothCameraHandler))
            {
               this.var_367 = new SmoothCameraHandler(this.var_668.var_120,this.method_495);
            }
         }
         else if(!(this.var_367 is HardCameraHandler))
         {
            this.var_367 = new HardCameraHandler(this.var_668.var_120,this.method_495);
         }
      }
      
      public final function method_2684(param1:int) : void
      {
         this.var_2140 = 15 * param1;
      }
      
      private final function method_2034(param1:FocusEvent) : void
      {
         if(param1.relatedObject is TextField)
         {
            this.method_818();
         }
      }
      
      private final function method_1761(param1:Event) : void
      {
         this.method_818();
      }
      
      public final function method_525(param1:Point) : void
      {
         this.method_466();
         this.var_1551 = true;
         this.var_750 = param1;
         class_47.method_49.addEventListener(Event.ENTER_FRAME,this.method_1470);
      }
      
      public final function method_466() : void
      {
         if(this.var_1551)
         {
            this.reset();
         }
         this.var_1551 = false;
         if(this.var_367)
         {
            this.var_367.killTween();
         }
         class_47.method_49.removeEventListener(Event.ENTER_FRAME,this.method_1470);
      }
      
      private final function method_1470(param1:Event = null) : void
      {
         this.method_2312(this.var_750.x,this.var_750.y);
      }
      
      protected final function method_2312(param1:int, param2:int) : void
      {
         var _loc3_:int = Math.floor(param1 - class_51.var_39 * 0.5 / var_633);
         var _loc4_:int = Math.floor(param2 - class_51.var_40 * 0.5 / var_633);
         this.method_1840.handle(_loc3_,_loc4_);
      }
      
      public final function method_913(param1:int, param2:int, param3:Boolean = true) : void
      {
         var _loc9_:MapScrollEvent = null;
         var _loc4_:Point = this.name_37.var_120;
         var _loc6_:int = Math.floor(param1 - class_51.var_39 * 0.5 / var_633);
         var _loc7_:int = Math.floor(param2 - class_51.var_40 * 0.5 / var_633);
         var _loc8_:Boolean = this.method_495(_loc6_,_loc7_,param3);
         if(_loc8_)
         {
            _loc9_ = new MapScrollEvent(MapScrollEvent.MOUSE_SCROLL);
            _loc9_.x = _loc4_.x;
            _loc9_.y = _loc4_.y;
            CentralEventUnit.dispatchEvent(_loc9_);
         }
      }
      
      public final function method_495(param1:int, param2:int, param3:Boolean = true) : Boolean
      {
         var _loc4_:Boolean = false;
         this.var_1172.x = param1;
         this.var_1172.y = param2;
         this.method_1312(this.var_1172);
         param1 = this.var_1172.x;
         param2 = this.var_1172.y;
         if(this.var_668.var_120.x != param1 || this.var_668.var_120.y != param2)
         {
            this.var_668.var_120.x = param1;
            this.var_668.var_120.y = param2;
            if(param3 && this.var_367)
            {
               this.var_367.setCurrentTargetPivotPos(param1,param2);
            }
            _loc4_ = true;
            dispatchEvent(new class_198(class_198.const_1033));
         }
         return _loc4_;
      }
      
      private final function reset() : void
      {
         if(this.var_367 == null)
         {
            return;
         }
         this.var_367.setCurrentTargetPivotPos(0,0);
      }
      
      private final function method_574() : void
      {
         this.method_466();
         class_47.method_49.addEventListener(Event.ENTER_FRAME,this.method_1560);
      }
      
      private final function method_2860() : void
      {
         class_47.method_49.removeEventListener(Event.ENTER_FRAME,this.method_1560);
      }
      
      private final function method_1560(param1:Event) : void
      {
         var _loc8_:MapScrollEvent = null;
         var _loc2_:Number = Number(class_47.method_430) * this.var_2140 / 1000;
         var _loc3_:Number = _loc2_;
         var _loc4_:Point = this.var_668.var_120;
         var _loc5_:int = _loc4_.x;
         var _loc6_:int = _loc4_.y;
         if(this.var_301)
         {
            _loc2_ = -_loc2_;
            _loc5_ = _loc5_ + _loc2_;
         }
         else if(this.var_290)
         {
            _loc5_ = _loc5_ + _loc2_;
         }
         else
         {
            _loc2_ = 0;
         }
         if(this.var_295)
         {
            _loc3_ = -_loc3_;
            _loc6_ = _loc6_ + _loc3_;
         }
         else if(this.var_298)
         {
            _loc6_ = _loc6_ + _loc3_;
         }
         else
         {
            _loc3_ = 0;
         }
         var _loc7_:Boolean = this.method_495(_loc5_,_loc6_);
         this.method_1312(_loc4_);
         if(_loc7_)
         {
            _loc8_ = new MapScrollEvent(MapScrollEvent.KEYBOARD_SCROLL);
            _loc8_.x = _loc4_.x;
            _loc8_.y = _loc4_.y;
            _loc8_.incX = _loc2_ * int(_loc4_.x == _loc5_);
            _loc8_.incY = _loc3_ * int(_loc4_.y == _loc6_);
            CentralEventUnit.dispatchEvent(_loc8_);
         }
      }
      
      private final function method_1312(param1:Point) : void
      {
         var _loc2_:int = class_51.var_548 - class_51.var_39 / var_633;
         var _loc3_:int = class_51.var_526 - class_51.var_40 / var_633;
         if(param1.x < 0)
         {
            param1.x = 0;
         }
         if(param1.x > _loc2_)
         {
            param1.x = _loc2_;
         }
         if(param1.y < 0)
         {
            param1.y = 0;
         }
         if(param1.y > _loc3_)
         {
            param1.y = _loc3_;
         }
      }
      
      private final function method_463() : void
      {
         if(!this.var_301 && !this.var_290 && !this.var_295 && !this.var_298)
         {
            this.method_2860();
         }
      }
      
      public final function method_596() : void
      {
         this.var_301 = true;
         this.method_574();
      }
      
      public final function method_677() : void
      {
         this.var_290 = true;
         this.method_574();
      }
      
      public final function method_651() : void
      {
         this.var_295 = true;
         this.method_574();
      }
      
      public final function method_692() : void
      {
         this.var_298 = true;
         this.method_574();
      }
      
      public final function method_570() : void
      {
         this.var_301 = false;
         this.method_463();
      }
      
      public final function method_652() : void
      {
         this.var_290 = false;
         this.method_463();
      }
      
      public final function method_648() : void
      {
         this.var_295 = false;
         this.method_463();
      }
      
      public final function method_583() : void
      {
         this.var_298 = false;
         this.method_463();
      }
      
      public final function method_818() : void
      {
         this.var_301 = false;
         this.var_290 = false;
         this.var_295 = false;
         this.var_298 = false;
         this.method_463();
      }
      
      public final function method_2156() : Point
      {
         var _loc1_:Number = class_47.method_24.method_39.method_117;
         var _loc2_:Point = class_47.name_37.var_120;
         var _loc3_:int = _loc2_.x + class_51.var_39 * 0.5 / _loc1_;
         var _loc4_:int = _loc2_.y + class_51.var_40 * 0.5 / _loc1_;
         return getMapFieldPoint(_loc3_,_loc4_);
      }
      
      public function get name_37() : class_199
      {
         return this.var_668;
      }
      
      public final function method_665() : void
      {
         if(this.var_1551)
         {
            this.method_466();
            this.method_913(name_55.var_750.x,name_55.var_750.y);
            this.method_525(this.var_750);
         }
         else
         {
            this.method_913(name_55.var_750.x,name_55.var_750.y);
         }
      }
   }
}

interface ICameraHandler
{
    
   
   function handle(param1:int, param2:int) : void;
   
   function setCurrentTargetPivotPos(param1:int, param2:int) : void;
   
   function killTween() : void;
}

import com.bigpoint.seafight.control.ceu.CentralEventUnit;
import com.bigpoint.seafight.net.events.MapScrollEvent;
import com.greensock.TweenMax;
import flash.geom.Point;

class SmoothCameraHandler implements ICameraHandler
{
    
   
   private var tweenedPivotPos:Point;
   
   private var targetPivotPos:Point;
   
   private var cameraTween:TweenMax;
   
   private var camPoint:Point;
   
   private var updateHandler:Function;
   
   function SmoothCameraHandler(param1:Point, param2:Function)
   {
      this.tweenedPivotPos = new Point();
      this.targetPivotPos = new Point();
      super();
      this.updateHandler = param2;
      this.camPoint = param1;
   }
   
   public function handle(param1:int, param2:int) : void
   {
      var newPivotX:int = param1;
      var newPivotY:int = param2;
      if(this.targetPivotPos.x == newPivotX && this.targetPivotPos.y == newPivotY)
      {
         return;
      }
      this.targetPivotPos.x = newPivotX;
      this.targetPivotPos.y = newPivotY;
      this.tweenedPivotPos.x = this.camPoint.x;
      this.tweenedPivotPos.y = this.camPoint.y;
      TweenMax.to(this.tweenedPivotPos,1,{
         "x":newPivotX,
         "y":newPivotY,
         "delay":0.005,
         "onUpdate":function():void
         {
            var _loc1_:* = camPoint.x;
            var _loc2_:* = camPoint.y;
            updateHandler(tweenedPivotPos.x,tweenedPivotPos.y,false);
            var _loc3_:* = new MapScrollEvent(MapScrollEvent.SHIP_SCROLL);
            _loc3_.x = tweenedPivotPos.x;
            _loc3_.y = tweenedPivotPos.y;
            _loc3_.incX = camPoint.x - _loc1_;
            _loc3_.incY = camPoint.y - _loc2_;
            CentralEventUnit.dispatchEvent(_loc3_);
         }
      });
   }
   
   public function setCurrentTargetPivotPos(param1:int, param2:int) : void
   {
      if(param1 == 0 && 0 == param2 && this.cameraTween != null)
      {
         this.cameraTween = null;
      }
      this.targetPivotPos.x = param1;
      this.targetPivotPos.y = param2;
   }
   
   public function killTween() : void
   {
      TweenMax.killTweensOf(this.tweenedPivotPos);
   }
}

import com.bigpoint.seafight.control.ceu.CentralEventUnit;
import com.bigpoint.seafight.net.events.MapScrollEvent;
import flash.geom.Point;

class HardCameraHandler implements ICameraHandler
{
    
   
   private var updateHandler:Function;
   
   private var camPoint:Point;
   
   function HardCameraHandler(param1:Point, param2:Function)
   {
      super();
      this.updateHandler = param2;
      this.camPoint = param1;
   }
   
   public function handle(param1:int, param2:int) : void
   {
      var _loc3_:int = this.camPoint.x;
      var _loc4_:int = this.camPoint.y;
      this.updateHandler(param1,param2);
      var _loc5_:MapScrollEvent = new MapScrollEvent(MapScrollEvent.SHIP_SCROLL);
      _loc5_.x = this.camPoint.x;
      _loc5_.y = this.camPoint.y;
      _loc5_.incX = this.camPoint.x - _loc3_;
      _loc5_.incY = this.camPoint.y - _loc4_;
      CentralEventUnit.dispatchEvent(_loc5_);
   }
   
   public function setCurrentTargetPivotPos(param1:int, param2:int) : void
   {
   }
   
   public function killTween() : void
   {
   }
}
