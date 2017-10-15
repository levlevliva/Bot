package package_54
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.net.events.class_1446;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.DeathWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.BoardingLogListItem;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.common.CheckBoxGroup;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.deathpopup.DeathPopupController;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopup;
   import com.bigpoint.seafight.view.popups.deathpopup.vo.DeathPopupVo;
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
   import com.bigpoint.seafight.view.popups.shipselection.vo.SelectionVListItemGemVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityTriggerEvent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.OverwriteManager;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import com.greensock.events.TweenEvent;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.GradientEntry;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.useraction.class_364;
   import package_108.class_647;
   import package_113.class_397;
   import package_113.class_398;
   import package_113.class_487;
   import package_113.class_538;
   import package_14.class_1313;
   import package_14.class_1377;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_166.class_1352;
   import package_166.class_1589;
   import package_17.class_37;
   import package_170.class_979;
   import package_171.class_1275;
   import package_171.class_981;
   import package_179.class_1064;
   import package_18.class_1521;
   import package_185.class_1136;
   import package_20.class_33;
   import package_210.class_1364;
   import package_210.class_1474;
   import package_26.class_1061;
   import package_29.class_57;
   import package_32.class_338;
   import package_32.class_64;
   import package_41.class_84;
   import package_41.class_93;
   import package_45.class_110;
   import package_46.class_1224;
   import package_48.class_996;
   import package_49.class_137;
   import package_49.class_140;
   import package_5.class_1050;
   import package_5.class_123;
   import package_5.class_139;
   import package_5.class_22;
   import package_5.class_43;
   import package_51.class_974;
   import package_6.class_14;
   import package_69.class_978;
   import package_92.class_336;
   import package_92.class_944;
   import package_93.class_987;
   import package_99.class_786;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.Scroller;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.filters.GlowFilter;
   
   use namespace mx_internal;
   
   public class class_160 extends class_159
   {
      
      public static const const_146:int = 0;
      
      public static const const_233:int = 1;
      
      public static const const_271:int = 2;
      
      public static const const_563:int = 3;
      
      public static const const_831:int = 4;
      
      public static const const_808:int = 5;
      
      public static const const_2071:int = 6;
      
      public static const const_1361:int = 7;
       
      
      private var var_660:Number;
      
      private var var_701:int;
      
      private var var_734:Number;
      
      private var var_700:Number;
      
      private var var_2285:Boolean = false;
      
      private var var_1300:int;
      
      private var var_2067:int = 7;
      
      private var var_1936:Boolean;
      
      private var var_370:TweenMax;
      
      public function class_160(param1:MovieClip)
      {
         super(param1);
         method_916();
         this.method_659();
         this.method_167(const_146);
      }
      
      public final function method_659() : void
      {
         if(!this.hasEventListener(MouseEvent.MOUSE_OVER))
         {
            this.addEventListener(MouseEvent.MOUSE_OVER,this.method_914);
         }
         if(!this.hasEventListener(MouseEvent.MOUSE_OUT))
         {
            this.addEventListener(MouseEvent.MOUSE_OUT,this.method_882);
         }
      }
      
      public final function method_251() : void
      {
         if(this.hasEventListener(MouseEvent.MOUSE_OVER))
         {
            this.removeEventListener(MouseEvent.MOUSE_OVER,this.method_914);
         }
         if(this.hasEventListener(MouseEvent.MOUSE_OUT))
         {
            this.removeEventListener(MouseEvent.MOUSE_OUT,this.method_882);
         }
      }
      
      public final function method_333(param1:String, param2:String = null) : void
      {
         var _loc3_:class_338 = class_64.method_21().method_901(this);
         if(_loc3_ != null)
         {
            _loc3_.method_257(param1,param2);
         }
         else
         {
            class_64.method_21().method_1039(this,param1,param2);
         }
      }
      
      public final function method_2962() : void
      {
         var _loc1_:class_338 = class_64.method_21().method_901(this);
         if(_loc1_ != null)
         {
            _loc1_.method_2220();
         }
      }
      
      public function set method_920(param1:Boolean) : void
      {
         var _loc2_:class_338 = class_64.method_21().method_901(this);
         if(_loc2_ != null)
         {
            _loc2_.method_543 = param1;
         }
      }
      
      public final function method_167(param1:int) : void
      {
         this.var_1300 = param1;
         switch(param1)
         {
            case const_146:
               this.var_701 = 16777215;
               this.var_734 = 0.6;
               this.var_700 = 1.5;
               this.var_660 = 0.6;
               break;
            case const_233:
               this.var_701 = 16711680;
               this.var_734 = 0.6;
               this.var_700 = 2;
               this.var_660 = 0.9;
               break;
            case const_271:
               this.var_701 = 0;
               this.var_734 = 0.6;
               this.var_700 = 2;
               this.var_660 = 0;
               break;
            case const_563:
               this.var_701 = 0;
               this.var_734 = 0;
               this.var_700 = 1;
               this.var_660 = 0;
               break;
            case const_831:
               this.var_701 = 16777215;
               this.var_734 = 1;
               this.var_700 = 1.5;
               this.var_660 = 0.3;
               break;
            case const_808:
               this.var_701 = 16777215;
               this.var_734 = 1;
               this.var_700 = 1.5;
               this.var_660 = 0.3;
         }
      }
      
      private final function method_914(param1:MouseEvent) : void
      {
         this.method_191();
      }
      
      private final function method_882(param1:MouseEvent) : void
      {
         this.method_246();
      }
      
      public final function method_837(param1:Boolean) : void
      {
         this.var_2285 = param1;
         if(!param1)
         {
            this.method_246();
            this.var_370 = TweenMax.to(var_130,0,{"colorMatrixFilter":{
               "colorize":this.var_701,
               "amount":this.var_734,
               "brightness":this.var_700
            }});
         }
      }
      
      public final function method_191() : void
      {
         if(!this.var_2285)
         {
            if(this.var_1300 == this.var_2067)
            {
               return;
            }
            this.var_2067 = this.var_1300;
            switch(this.var_1300)
            {
               case const_271:
                  if(this.var_370)
                  {
                     this.var_370.kill();
                  }
                  this.var_370 = TweenMax.to(var_130,this.var_660,{"colorMatrixFilter":{
                     "colorize":this.var_701,
                     "amount":this.var_734,
                     "brightness":this.var_700
                  }});
                  break;
               case const_563:
                  if(this.var_370)
                  {
                     this.var_370.kill();
                  }
                  this.var_370 = TweenMax.to(var_130,0,{"colorMatrixFilter":{"amount":0}});
                  break;
               case const_233:
                  this.method_167(const_233);
                  this.retrigger();
                  break;
               case const_146:
               case const_831:
                  if(this.var_660 <= 0)
                  {
                     return;
                  }
                  this.method_246();
                  this.retrigger();
                  break;
               case const_808:
                  this.method_246();
                  this.retrigger();
                  break;
               default:
                  this.method_246();
            }
         }
      }
      
      private final function retrigger() : void
      {
         if(this.var_370)
         {
            this.var_370.kill();
         }
         if(this.var_1936)
         {
            return;
         }
         this.var_370 = TweenMax.fromTo(var_130,this.var_660,{"colorMatrixFilter":{"amount":0}},{
            "colorMatrixFilter":{
               "colorize":this.var_701,
               "amount":this.var_734,
               "brightness":this.var_700
            },
            "repeat":-1,
            "yoyo":true
         });
         this.var_1936 = true;
      }
      
      public final function method_246() : void
      {
         this.var_2067 = const_1361;
         if(this.var_370)
         {
            this.var_370.kill();
         }
         this.var_370 = TweenMax.to(var_130,0,{"colorMatrixFilter":{"amount":0}});
         class_181.method_1153([var_130]);
         this.var_1936 = false;
         this.var_370 = null;
      }
      
      public function get method_471() : int
      {
         return this.var_1300;
      }
      
      public function method_119() : void
      {
         if(this.hasEventListener(MouseEvent.MOUSE_OVER))
         {
            removeEventListener(MouseEvent.MOUSE_OVER,this.method_914);
         }
         if(this.hasEventListener(MouseEvent.MOUSE_OUT))
         {
            removeEventListener(MouseEvent.MOUSE_OUT,this.method_882);
         }
         super.method_916();
      }
   }
}
