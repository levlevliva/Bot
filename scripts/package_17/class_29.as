package package_17
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.ViewManager;
   import com.bigpoint.seafight.model.inventory.vo.cannon.Cannon_VO;
   import com.bigpoint.seafight.model.inventory.vo.cannon.DefaultCannon_VO;
   import com.bigpoint.seafight.model.vo.KeysVO;
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.net.events.MapScrollEvent;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_127;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingInfoTooltipListItemSubItemVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingInfoTooltipListItemVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingMenuPetsTabVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetStatsComponentVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetTrainerStatsListItemVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.cauldron.vo.CauldronRitualsVo;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
   import com.bigpoint.seafight.view.popups.event.modules.common.skins.NpcKillsModuleSkin;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuVanityComponent;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.popups.shipselection.vo.SelectionVListItemGemVo;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemStatListItemVo;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.events.CollectionEventKind;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.bitmapclip.initCollections;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.minigame.class_470;
   import net.bigpoint.seafight.com.module.minigame.class_535;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_101.class_511;
   import package_105.class_369;
   import package_105.class_529;
   import package_109.class_385;
   import package_109.class_626;
   import package_110.class_903;
   import package_118.class_412;
   import package_125.class_442;
   import package_14.class_165;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_148.class_820;
   import package_156.class_654;
   import package_158.class_703;
   import package_158.class_728;
   import package_16.class_28;
   import package_162.class_835;
   import package_166.class_1502;
   import package_167.class_1024;
   import package_185.class_1136;
   import package_190.class_1181;
   import package_190.class_1469;
   import package_204.class_1279;
   import package_26.class_1070;
   import package_26.class_142;
   import package_26.class_1523;
   import package_29.class_166;
   import package_39.class_973;
   import package_41.class_84;
   import package_45.class_110;
   import package_47.class_881;
   import package_48.class_996;
   import package_5.class_123;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_43;
   import package_51.class_148;
   import package_52.class_153;
   import package_52.class_168;
   import package_53.class_1101;
   import package_54.class_162;
   import package_54.class_163;
   import package_55.class_164;
   import package_58.class_175;
   import package_6.class_14;
   import package_72.class_203;
   import package_84.class_270;
   import package_88.class_290;
   import package_9.class_91;
   import package_92.class_1278;
   import package_92.class_944;
   import package_99.class_810;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.effects.animation.SimpleMotionPath;
   import spark.events.IndexChangeEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Line;
   
   public final class class_29 extends EventDispatcher
   {
      
      private static const const_80:ILogger = Log.getLogger("KeyboardControl");
      
      private static var name_55:class_29;
       
      
      private var var_112:class_87;
      
      private var var_295:Boolean;
      
      private var var_301:Boolean;
      
      private var var_290:Boolean;
      
      private var var_298:Boolean;
      
      private var var_69:KeysVO;
      
      private var var_2130:class_165;
      
      private var var_736:Boolean = false;
      
      private var var_602:class_164;
      
      private var var_908:String;
      
      private var var_1737:Boolean = false;
      
      private var var_2202:Boolean = false;
      
      private var var_2107:Boolean = false;
      
      public function class_29(param1:Function)
      {
         this.var_112 = class_47.method_22;
         this.var_69 = class_47.method_774.var_754;
         this.var_2130 = class_47.method_774;
         super();
         if(param1 !== method_976)
         {
            throw new class_166();
         }
         const_80.info("CONSTRUCTED SINGLETON");
         class_58.method_21().method_82("init keyboard control");
         this.name_16();
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_29
      {
         if(name_55 == null)
         {
            name_55 = new class_29(method_976);
         }
         return name_55;
      }
      
      private final function name_16() : void
      {
         addEventListener(class_148.const_13,class_54.method_21().method_129);
         class_41.name_3.addEventListener(class_142.const_116,this.method_1387);
         class_47.method_49.addEventListener(KeyboardEvent.KEY_DOWN,this.method_2533);
      }
      
      private final function method_1387(param1:class_142) : void
      {
         var _loc2_:Stage = class_47.method_49;
         _loc2_.removeEventListener(KeyboardEvent.KEY_DOWN,this.method_1485);
         _loc2_.removeEventListener(KeyboardEvent.KEY_UP,this.method_1270);
         _loc2_.removeEventListener(KeyboardEvent.KEY_DOWN,this.method_1024);
         switch(class_41.name_3.name_17)
         {
            case class_41.const_103:
               _loc2_.addEventListener(KeyboardEvent.KEY_DOWN,this.method_1485);
               _loc2_.addEventListener(KeyboardEvent.KEY_UP,this.method_1270);
               break;
            case class_41.const_459:
               _loc2_.addEventListener(KeyboardEvent.KEY_DOWN,this.method_1024);
         }
      }
      
      private final function method_1024(param1:KeyboardEvent) : void
      {
         if(this.var_736)
         {
            this.method_946(param1.keyCode);
            return;
         }
         switch(param1.keyCode)
         {
            case class_22.const_163:
               if(class_47.method_49.focus is TextField)
               {
                  break;
               }
               class_47.method_24.var_12.exitConfigMode(true);
               break;
            case class_22.const_1009:
               class_47.method_24.var_12.exitConfigMode(false);
         }
      }
      
      private final function method_2533(param1:KeyboardEvent) : void
      {
         if(this.var_736)
         {
            this.method_946(param1.keyCode);
            return;
         }
         switch(param1.keyCode)
         {
            case this.var_69.reload:
               class_154.method_488();
         }
      }
      
      private final function method_1485(param1:KeyboardEvent) : void
      {
         var _loc4_:class_148 = null;
         this.var_2107 = param1.keyCode == class_22.const_1318;
         if(this.var_736)
         {
            this.method_946(param1.keyCode);
            return;
         }
         if(class_47.method_24.method_364().focus != null)
         {
            return;
         }
         if(class_47.method_24.var_12.subMenuContainer.getSubMenuByName("options").visible == true)
         {
            return;
         }
         if(param1.keyCode == this.var_69.mapScrollKey)
         {
            this.var_1737 = true;
         }
         if(param1.shiftKey)
         {
            if(param1.keyCode == class_22.const_1623 && class_51.method_829())
            {
               class_47.method_24.var_1390.method_2084();
               class_47.method_24.var_1390.method_1864();
            }
            if(param1.keyCode == class_22.const_1628)
            {
            }
            this.var_2202 = true;
         }
         if(param1.ctrlKey)
         {
            if(param1.keyCode == class_22.const_163)
            {
               class_47.method_24.method_364().displayState = StageDisplayState.FULL_SCREEN;
            }
         }
         if(param1.ctrlKey)
         {
            if(param1.keyCode == class_22.const_1543)
            {
               class_47.method_24;
               ViewManager.method_1872();
            }
         }
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         if(!param1.ctrlKey && !param1.altKey && !param1.shiftKey)
         {
            if(param1.keyCode == this.var_69.left && !this.var_301)
            {
               class_37.method_21().method_596();
               this.var_301 = true;
            }
            if(param1.keyCode == this.var_69.up && !this.var_295)
            {
               class_37.method_21().method_651();
               this.var_295 = true;
            }
            if(param1.keyCode == this.var_69.right && !this.var_290)
            {
               class_37.method_21().method_677();
               this.var_290 = true;
            }
            if(param1.keyCode == this.var_69.down && !this.var_298)
            {
               class_37.method_21().method_692();
               this.var_298 = true;
            }
            _loc4_ = null;
            switch(param1.keyCode)
            {
               case class_22.const_1842:
                  _loc4_ = new class_148(class_148.const_13);
                  _loc4_.name_22.name_5 = class_168.name_67;
                  dispatchEvent(_loc4_);
                  break;
               case class_22.const_163:
                  if(class_147.method_21().method_514)
                  {
                     _loc4_ = new class_148(class_148.const_13);
                     _loc4_.name_22.name_5 = "commonMapChange";
                     dispatchEvent(_loc4_);
                     break;
                  }
                  break;
               case this.var_69.attack:
                  this.method_271(class_150.const_786,false);
                  break;
               case this.var_69.attackCancel:
                  this.method_271(class_150.const_868,false);
                  break;
               case this.var_69.cycleTargets:
                  class_47.method_48.method_1333(true,param1.altKey);
                  break;
               case this.var_69.board:
                  this.method_271(class_150.const_615,false);
                  break;
               case this.var_69.toMyShip:
                  _loc4_ = new class_148(class_148.const_13);
                  _loc4_.name_22.name_5 = "toMyShip";
                  dispatchEvent(_loc4_);
                  break;
               case this.var_69.navigate:
                  _loc4_ = new class_148(class_148.const_13);
                  _loc4_.name_22.name_5 = "navigation";
                  dispatchEvent(_loc4_);
                  break;
               case this.var_69.changeBalls:
                  this.method_271(class_150.const_109);
                  break;
               case this.var_69.changeHarps:
                  this.method_271(class_150.const_113);
                  break;
               case this.var_69.changeVoodoo:
                  this.method_271(class_150.const_261);
                  break;
               case this.var_69.changeActItms:
                  this.method_271(class_150.const_128);
                  break;
               case this.var_69.changeFireMenu:
                  this.method_271(class_150.const_124);
            }
            switch(param1.keyCode)
            {
               case this.var_69.quickBelt_0:
                  _loc2_ = 0;
                  break;
               case this.var_69.quickBelt_1:
                  _loc2_ = 1;
                  break;
               case this.var_69.quickBelt_2:
                  _loc2_ = 2;
                  break;
               case this.var_69.quickBelt_3:
                  _loc2_ = 3;
                  break;
               case this.var_69.quickBelt_4:
                  _loc2_ = 4;
                  break;
               case this.var_69.quickBelt_5:
                  _loc2_ = 5;
                  break;
               case this.var_69.quickBelt_6:
                  _loc2_ = 6;
                  break;
               case this.var_69.quickBelt_7:
                  _loc2_ = 7;
                  break;
               case this.var_69.quickBelt_8:
                  _loc2_ = 8;
                  break;
               case this.var_69.quickBelt_9:
                  _loc2_ = 9;
            }
            if(_loc2_ > -1)
            {
               this.method_1508(_loc2_,_loc3_);
            }
         }
         else
         {
            if(param1.altKey)
            {
               _loc3_ = 1;
            }
            if(param1.ctrlKey && param1.altKey)
            {
               _loc3_ = 2;
            }
            switch(param1.keyCode)
            {
               case this.var_69.quickBelt_0:
                  _loc2_ = 0;
                  break;
               case this.var_69.quickBelt_1:
                  _loc2_ = 1;
                  break;
               case this.var_69.quickBelt_2:
                  _loc2_ = 2;
                  break;
               case this.var_69.quickBelt_3:
                  _loc2_ = 3;
                  break;
               case this.var_69.quickBelt_4:
                  _loc2_ = 4;
                  break;
               case this.var_69.quickBelt_5:
                  _loc2_ = 5;
                  break;
               case this.var_69.quickBelt_6:
                  _loc2_ = 6;
                  break;
               case this.var_69.quickBelt_7:
                  _loc2_ = 7;
                  break;
               case this.var_69.quickBelt_8:
                  _loc2_ = 8;
                  break;
               case this.var_69.quickBelt_9:
                  _loc2_ = 9;
            }
            if(_loc2_ > -1)
            {
               this.method_1508(_loc2_,_loc3_);
            }
         }
      }
      
      private final function method_271(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:class_162 = class_47.method_24.var_12.actionsBar.method_69(param1);
         if(_loc3_.name_26 == false || !_loc3_.method_374)
         {
            return;
         }
         var _loc4_:Boolean = _loc3_.method_747;
         var _loc5_:class_148 = new class_148(class_148.const_13);
         _loc5_.name_22.name_5 = !!_loc4_?param1 + "_switchBack":param1;
         if(param2)
         {
            _loc3_.method_70(!_loc4_);
         }
         dispatchEvent(_loc5_);
      }
      
      private final function method_1508(param1:int, param2:int) : void
      {
         var _loc4_:class_155 = null;
         var _loc5_:class_155 = null;
         var _loc6_:class_163 = null;
         var _loc3_:Vector.<class_155> = class_47.method_24.var_12.quickBelt;
         for each(_loc5_ in _loc3_)
         {
            if(_loc5_.var_222 == param2)
            {
               _loc4_ = _loc5_;
               break;
            }
         }
         Log.getLogger("KeyboardControl").error("KeyboardControl------>----------- " + param1 + " : " + param2);
         _loc6_ = _loc4_.method_931(param1);
         if(!_loc6_.method_58() || _loc6_.name_26 == false || !_loc6_.method_374)
         {
            return;
         }
         if(_loc6_.method_58().name_7 == 27 && !class_151.method_21().method_2403())
         {
            return;
         }
         if(_loc6_.method_58().name_7 == 16 && !class_151.method_21().method_2649())
         {
            return;
         }
         _loc6_.method_1902();
      }
      
      private final function method_1270(param1:KeyboardEvent) : void
      {
         this.var_2107 = false;
         if(this.var_736 || class_47.method_24.method_364().focus is TextField)
         {
            return;
         }
         if(param1.keyCode == this.var_69.mapScrollKey)
         {
            this.var_1737 = false;
         }
         if(param1.keyCode == this.var_69.left && this.var_301)
         {
            class_37.method_21().method_570();
            this.var_301 = false;
         }
         if(param1.keyCode == this.var_69.up && this.var_295)
         {
            class_37.method_21().method_648();
            this.var_295 = false;
         }
         if(param1.keyCode == this.var_69.right && this.var_290)
         {
            class_37.method_21().method_652();
            this.var_290 = false;
         }
         if(param1.keyCode == this.var_69.down && this.var_298)
         {
            class_37.method_21().method_583();
            this.var_298 = false;
         }
         if(param1.keyCode == this.var_69.moveToCenter)
         {
            class_47.method_29.method_1753();
         }
         else if(param1.keyCode == this.var_69.repair)
         {
            this.method_271(class_150.const_264);
         }
      }
      
      private final function method_946(param1:int) : void
      {
         if(param1 == 27)
         {
            this.method_446();
            return;
         }
         if(this.var_602 && this.var_908)
         {
            if(this.var_2130.method_1421(this.var_908,param1))
            {
               this.var_602.method_336(this.method_787(param1),param1);
               this.var_602.name_83.method_484(class_153.const_793);
            }
            else
            {
               this.var_602.method_336(this.method_787(this.var_69[this.var_908]),this.var_69[this.var_908]);
               this.var_602.name_83.method_484(class_153.const_1193);
            }
         }
         this.var_736 = false;
      }
      
      private final function method_787(param1:int) : String
      {
         var _loc2_:String = this.var_112.method_28("key_" + param1,false,false);
         if(_loc2_ == null)
         {
            _loc2_ = String.fromCharCode(param1);
         }
         return _loc2_;
      }
      
      public final function method_1789(param1:class_164 = null, param2:String = null) : void
      {
         if(!this.var_736)
         {
            if(param1 && param2)
            {
               this.var_602 = param1;
               this.var_602.method_2720();
               this.var_908 = param2;
               this.var_736 = true;
            }
         }
      }
      
      public final function method_446() : void
      {
         this.var_736 = false;
         if(this.var_602)
         {
            this.var_602.method_336(this.method_787(this.var_69[this.var_908]),this.var_69[this.var_908]);
            this.var_602.name_83.method_484(class_153.const_793);
         }
      }
      
      public function get method_2298() : Boolean
      {
         return this.var_1737;
      }
      
      public function get method_1681() : Boolean
      {
         return this.var_2107;
      }
      
      public final function method_1531() : void
      {
         this.var_1737 = false;
      }
      
      public function get method_2998() : Boolean
      {
         return this.var_2202;
      }
   }
}
