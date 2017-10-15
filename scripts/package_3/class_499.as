package package_3
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.model.vo.class_1098;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.net.events.class_1097;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.target;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.common.BorderType2;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.TowerListItem;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenDeathWindow;
   import com.greensock.TweenLite;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.GradientEntry;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import package_10.class_18;
   import package_10.class_38;
   import package_102.class_359;
   import package_107.class_693;
   import package_113.class_397;
   import package_113.class_398;
   import package_113.class_487;
   import package_113.class_538;
   import package_14.class_1313;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_152.class_664;
   import package_158.class_703;
   import package_16.class_28;
   import package_17.class_325;
   import package_17.class_37;
   import package_17.class_54;
   import package_175.class_1548;
   import package_186.class_1137;
   import package_186.class_1465;
   import package_20.class_33;
   import package_212.class_1537;
   import package_25.class_295;
   import package_28.class_56;
   import package_30.class_1013;
   import package_30.class_62;
   import package_32.class_64;
   import package_34.class_1241;
   import package_36.class_100;
   import package_41.class_93;
   import package_42.class_959;
   import package_46.class_1224;
   import package_49.class_140;
   import package_5.class_133;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_984;
   import package_51.class_148;
   import package_54.class_1006;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_119;
   import package_7.class_329;
   import package_7.class_74;
   import package_92.class_336;
   import package_92.class_944;
   import package_98.class_777;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_499 extends class_10
   {
      
      private static const const_1386:String = "CONGESTION ERROR !";
       
      
      private var var_1725:Boolean = false;
      
      private var var_125:class_28;
      
      private var var_728:Timer;
      
      public function class_499(param1:class_28)
      {
         super();
         this.var_728 = new Timer(1000);
         this.var_125 = param1;
         this.var_125.addEventListener(class_56.const_500,this.method_2541);
         method_23(class_119.name_3,this.method_2494);
         method_23(class_329.name_3,this.method_2711);
         method_23(class_397.name_3,this.method_2118);
         method_23(class_538.name_3,this.method_1771);
         method_23(class_487.name_3,this.method_2359);
         method_23(class_398.name_3,this.method_2775);
      }
      
      public static function method_923() : void
      {
         class_58.method_21().method_82("LOST CONNECTION !",true);
      }
      
      private final function method_2541(param1:class_56) : void
      {
         this.var_1725 = false;
         this.var_125.addEventListener(class_56.const_51,this.method_1184,false,int.MAX_VALUE);
      }
      
      private final function method_2118(param1:class_14) : void
      {
         class_1313.name_12().method_54();
         class_1313.name_12().var_2046 = param1 as class_397;
         StatelessCMD.invoke(CmdSL_OpenDeathWindow);
      }
      
      private final function method_1771(param1:class_14) : void
      {
         class_1313.name_12().method_54();
         class_1313.name_12().var_1681 = param1 as class_538;
         StatelessCMD.invoke(CmdSL_OpenDeathWindow);
      }
      
      private final function method_2359(param1:class_14) : void
      {
         class_1313.name_12().method_54();
         class_1313.name_12().var_1654 = param1 as class_487;
         StatelessCMD.invoke(CmdSL_OpenDeathWindow);
      }
      
      private final function method_2775(param1:class_14) : void
      {
         class_1313.name_12().method_54();
         class_1313.name_12().var_1499 = param1 as class_398;
         StatelessCMD.invoke(CmdSL_OpenDeathWindow);
      }
      
      private final function method_606(param1:int = -1) : void
      {
         class_325.method_21().method_606(param1);
      }
      
      private final function method_1184(param1:class_56) : void
      {
         var event:class_56 = param1;
         if(!this.var_1725)
         {
            Main.LOG.error("server closed connection without informing client");
            try
            {
               class_325.method_21().method_678();
            }
            catch(e:Error)
            {
               return;
            }
            method_923();
         }
         this.var_1725 = false;
         this.method_1065();
      }
      
      private final function method_1065() : void
      {
         class_33.name_12.method_41.method_813();
         if(class_41.name_3.name_17 == class_41.const_103 || class_41.name_3.name_17 == class_41.const_449)
         {
            class_47.method_51.method_1064();
            class_47.method_24.var_12.infoIconContainer.method_54();
            class_325.method_21().method_910();
         }
         if(class_47.method_29 == null)
         {
            return;
         }
         var _loc1_:class_100 = class_47.method_29.method_75;
         if(null == _loc1_)
         {
            return;
         }
         var _loc2_:class_174 = _loc1_.method_33 as class_174;
         _loc2_.var_2025 = false;
         _loc1_.method_670(false);
      }
      
      private final function method_2711(param1:class_14) : void
      {
         class_325.method_21().method_1479();
      }
      
      private final function method_2494(param1:class_14) : void
      {
         var _loc2_:class_119 = param1 as class_119;
         class_325.method_21().method_2555(_loc2_.var_71);
      }
      
      public final function method_736(param1:class_14) : void
      {
         var module:class_14 = param1;
         this.var_125.removeEventListener(class_56.const_51,this.method_1184);
         var m:class_74 = module as class_74;
         var r:int = m.name_52;
         switch(r)
         {
            case class_74.const_986:
               this.method_606(r);
               break;
            case class_74.const_1474:
               class_58.method_21().method_82("SERVER ERROR !",true);
               break;
            case class_74.const_1853:
               class_58.method_21().method_82("SERVER SHUTDOWN !",true);
               this.method_606(r);
               break;
            case class_74.const_1012:
               this.method_606(r);
               break;
            case class_74.const_1774:
               class_58.method_21().method_82("YOU ARE BANNED !",true);
               break;
            case class_74.const_1832:
               class_58.method_21().method_82("AUTHENTICATION FAILED !",true);
               break;
            case class_74.const_1593:
               class_58.method_21().method_82("YOU WERE KICKED !",true);
               this.method_606(r);
               break;
            case class_74.const_1671:
               class_58.method_21().method_82("SERVER FULL !",true);
               break;
            case class_74.const_1348:
               class_58.method_21().method_82("SERVER UNDERGOING MAINTENANCE !",true);
               break;
            case class_74.const_1295:
               class_58.method_21().method_82("INVALID USER ID !",true);
               break;
            case class_74.const_1637:
               try
               {
                  class_325.method_21().method_678();
               }
               catch(e:Error)
               {
                  var_728.repeatCount = 10;
                  var_728.addEventListener(TimerEvent.TIMER,method_1422);
                  var_728.reset();
                  var_728.start();
                  break;
               }
               break;
            default:
               Main.LOG.error("Unknown disconnect reason: " + m.name_52);
         }
         this.var_1725 = true;
         this.var_125.method_2643();
         this.method_1065();
      }
      
      private final function method_1422(param1:TimerEvent) : void
      {
         var _loc5_:* = null;
         var _loc2_:Timer = param1.target as Timer;
         var _loc3_:int = _loc2_.repeatCount * _loc2_.delay / 1000 - _loc2_.currentCount;
         var _loc4_:String = class_47.method_22.method_20("reconnect");
         class_58.method_21().method_77();
         if(_loc3_ > 0)
         {
            _loc5_ = const_1386 + " ... " + _loc4_ + " " + _loc3_ + "s...";
            class_58.method_21().method_82(_loc5_,true);
         }
         else
         {
            this.var_728.stop();
            this.var_728.removeEventListener(TimerEvent.TIMER,this.method_1422);
            class_1241.name_3.method_853();
            class_58.method_21().method_82(_loc4_);
         }
      }
   }
}
