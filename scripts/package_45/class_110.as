package package_45
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_1371;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.net.events.class_1446;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizableTitleWindow;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.event.MinigamePopupController;
   import com.bigpoint.seafight.view.popups.event.component.MinigamePopup;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.populateLoot;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.target;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.component.RolesList;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.quest.regular.AbstractQuestPopupController;
   import com.bigpoint.seafight.view.popups.reputation.ReputationFavoriteEvent;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.popups.vo.MinigameContentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.media.SoundChannel;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.IFlexDisplayObject;
   import mx.core.IVisualElement;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.graphics.GradientEntry;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_821;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_94;
   import package_152.class_664;
   import package_170.class_979;
   import package_179.class_1064;
   import package_20.class_109;
   import package_30.class_62;
   import package_32.class_64;
   import package_41.class_84;
   import package_42.class_98;
   import package_43.class_272;
   import package_46.class_975;
   import package_48.class_138;
   import package_49.class_137;
   import package_49.class_880;
   import package_5.class_1509;
   import package_51.class_974;
   import package_52.class_167;
   import package_54.class_163;
   import package_57.class_171;
   import package_6.class_14;
   import package_88.class_1093;
   import package_88.class_290;
   import package_88.class_967;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   
   use namespace mx_internal;
   
   public final class class_110 extends class_109
   {
      
      public static const const_571:String = "___";
      
      public static const const_1015:String = "CauldronWindow";
      
      public static const const_769:String = "QuestWindow";
      
      public static const const_809:String = "QuestTrackerWindow";
      
      public static const const_723:String = "NPCQuestWindow";
      
      public static const const_1101:String = "DeathWindow";
      
      public static const const_92:String = "ShipEquipmentWindow";
      
      public static const const_458:String = "EventWindow";
      
      public static const const_1057:String = "MonthlyLoginBonusWindow";
      
      public static const const_394:String = "MinigameWindow";
      
      public static const const_676:String = "LeagueWindow";
      
      public static const const_1542:String = "ShipEquipmentHelpWindow";
      
      public static const const_1283:String = "MinigameRewardWindow";
      
      public static const const_1031:String = "ShipSelectionWindow";
      
      public static const const_1095:String = "TipsWindow";
      
      public static const const_486:String = "NpcConversationWindow";
      
      public static const const_1538:String = "AvatarUploadWindow";
      
      public static const const_1560:String = "MessageUserWindow";
      
      public static const const_284:String = "GroupMapInviteWindow";
      
      public static const const_328:String = "GroupMapQueueWindow";
      
      public static const const_336:String = "GroupMapRoleSelectionWindow";
      
      public static const const_1388:String = "GuildApplyWindow";
      
      public static const const_1067:String = "CalendarWindow";
      
      public static const const_1072:String = "PuzzleWindow";
      
      public static const const_670:String = "MateysWindow";
      
      public static const const_979:String = "LootWindow";
      
      public static const const_189:String = "SafeHavenGuildWindow";
      
      public static const const_131:String = "PlayerGuildWindow";
      
      public static const const_542:String = "GuildIslandWindow";
      
      public static const const_416:String = "GemWindow";
      
      public static const const_333:String = "TeamScoreWindow";
      
      public static const const_1241:String = "CurrencyWindow";
      
      public static const const_472:String = "ScrollCostWindow";
      
      public static const const_862:String = "MultiWindow";
      
      public static const const_144:String = "BoardingWindow";
      
      public static const const_1070:String = "UploadProgressWindow";
      
      public static const const_1000:String = "SpyWindow";
      
      public static const const_480:String = "CastleWindow";
      
      public static const const_396:String = "UpgradeCastleSlotWindow";
      
      public static const const_410:String = "UpgradeCastleBoosterWindow";
      
      public static const const_872:String = "ArenaDominationScoreWindow";
      
      public static const const_488:String = "ReputationWindow";
       
      
      public var var_211:Dictionary;
      
      public var var_620:Dictionary;
      
      public var var_2374:Boolean = false;
      
      public function class_110()
      {
         this.var_211 = new Dictionary(true);
         this.var_620 = new Dictionary(true);
         super();
      }
      
      public final function method_1187(param1:String) : Boolean
      {
         if(!this.var_211.hasOwnProperty(param1))
         {
            return false;
         }
         delete this.var_211[param1];
         return true;
      }
      
      public final function method_2872(param1:Class) : Boolean
      {
         var _loc2_:String = getQualifiedClassName(param1);
         return this.method_1187(_loc2_);
      }
      
      public final function method_2538(param1:String, param2:Object) : Boolean
      {
         if(this.var_211.hasOwnProperty(param1))
         {
            return false;
         }
         this.var_211[param1] = param2;
         return true;
      }
      
      public final function method_45(param1:String) : TitleWindow
      {
         if(this.var_211.hasOwnProperty(param1))
         {
            return this.var_211[param1] as TitleWindow;
         }
         return null;
      }
      
      public final function method_2873(param1:String) : Boolean
      {
         if(this.var_211.hasOwnProperty(param1))
         {
            return true;
         }
         return false;
      }
      
      public final function method_896(param1:String) : WindowController
      {
         if(!this.var_620.hasOwnProperty(param1))
         {
            return null;
         }
         return this.var_620[param1];
      }
      
      public final function method_2974(param1:Class) : WindowController
      {
         var _loc2_:String = null;
         for each(_loc2_ in this.var_620)
         {
            if(param1 is this.var_620[_loc2_])
            {
               return this.var_620[_loc2_];
            }
         }
         return null;
      }
      
      public final function method_1430(param1:Class) : Array
      {
         var _loc3_:* = null;
         var _loc2_:Array = [];
         for(_loc3_ in this.var_211)
         {
            if(this.var_211[_loc3_] is param1)
            {
               _loc2_.push(this.var_211[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      public final function method_3000(param1:Class) : void
      {
         var _loc4_:TitleWindow = null;
         var _loc2_:Array = this.method_1430(param1);
         if(_loc2_.length == 0)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc3_] as TitleWindow;
            _loc4_.dispatchEvent(new CloseEvent(CloseEvent.CLOSE));
            _loc3_++;
         }
      }
      
      public final function method_133(param1:String) : void
      {
         if(!this.var_211[param1])
         {
            return;
         }
         var _loc2_:TitleWindow = this.var_211[param1];
         _loc2_.dispatchEvent(new CloseEvent(CloseEvent.CLOSE));
      }
      
      public final function method_1426() : void
      {
         var _loc1_:Object = null;
         var _loc2_:ResizableTitleWindow = null;
         for each(_loc1_ in this.var_211)
         {
            _loc2_ = _loc1_ as ResizableTitleWindow;
            if(_loc2_)
            {
               if(!_loc2_.locked)
               {
                  this.method_201(_loc2_);
               }
            }
         }
      }
      
      public final function method_2903() : void
      {
         var _loc1_:Object = null;
         var _loc2_:ResizableTitleWindow = null;
         for each(_loc1_ in this.var_211)
         {
            _loc2_ = _loc1_ as ResizableTitleWindow;
            if(_loc2_.locked)
            {
               _loc2_.dispatchEvent(new class_979(class_979.const_32));
               _loc2_.locked = false;
            }
            if(_loc2_)
            {
               this.method_201(_loc2_);
            }
         }
      }
      
      public final function method_2895() : void
      {
         var _loc1_:Sprite = null;
         var _loc2_:TitleWindow = null;
         var _loc3_:class_167 = null;
         for each(_loc1_ in this.var_211)
         {
            _loc2_ = _loc1_ as TitleWindow;
            if(_loc2_)
            {
               _loc1_.dispatchEvent(new CloseEvent(CloseEvent.CLOSE));
            }
            else
            {
               _loc3_ = _loc1_ as class_167;
               if(_loc3_)
               {
                  _loc3_.method_941();
               }
            }
         }
      }
      
      public final function method_813() : void
      {
         var _loc1_:Sprite = null;
         var _loc2_:ResizableTitleWindow = null;
         for each(_loc1_ in this.var_211)
         {
            _loc2_ = _loc1_ as ResizableTitleWindow;
            if(!(null == _loc2_ || _loc2_.lockable || !_loc2_.closeOnMapSwitch))
            {
               _loc2_.dispatchEvent(new CloseEvent(CloseEvent.CLOSE));
            }
         }
      }
      
      public final function method_842(param1:String) : void
      {
         if(!this.var_211[param1])
         {
            return;
         }
         var _loc2_:ResizableTitleWindow = this.var_211[param1] as ResizableTitleWindow;
         if(_loc2_)
         {
            _loc2_.activateBlock = true;
         }
      }
      
      public final function method_905(param1:String) : void
      {
         if(!this.var_211[param1])
         {
            return;
         }
         var _loc2_:ResizableTitleWindow = this.var_211[param1] as ResizableTitleWindow;
         if(_loc2_)
         {
            _loc2_.activateBlock = false;
         }
      }
      
      public final function method_201(param1:IFlexDisplayObject) : void
      {
         var _loc2_:int = (class_47.method_49.stageWidth - param1.width) * 0.5;
         var _loc3_:int = (class_47.method_49.stageHeight - param1.height) * 0.5;
         param1.move(_loc2_,_loc3_);
      }
   }
}
