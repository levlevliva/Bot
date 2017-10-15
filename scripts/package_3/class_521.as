package package_3
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.auxconf.AuxConf_VO;
   import com.bigpoint.seafight.model.inventory.vo.auxconf.DefaultAuxConf_VO;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_1067;
   import com.bigpoint.seafight.model.vo.class_1265;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_1020;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentButtonClickEvent;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingMenuPetsTabVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BlueButton;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.common.texteditor.MiniTextEditor;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.event.modules.common.clash.ClashRankingList;
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.RankingKeyValueItem;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuEquipmentTab;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandMenuEquipmentTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.MiniHitpointsBarDisplay;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildTreasuryLogListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.target;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.common.MateysMenuVanity;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentLowerLeft;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentSailsVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.PergamentButtonBarSkinInnerClass0;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bit101.components.Style;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.PerspectiveProjection;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.LocalConnection;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.bitmapclip.BCBitmapData;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_510;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import net.bigpoint.seafight.com.module.ship.class_1327;
   import net.bigpoint.seafight.com.module.ship.class_1328;
   import net.bigpoint.seafight.com.module.ship.class_396;
   import net.bigpoint.seafight.com.module.ship.class_413;
   import net.bigpoint.seafight.com.module.ship.class_417;
   import net.bigpoint.seafight.com.module.ship.class_431;
   import net.bigpoint.seafight.com.module.ship.class_435;
   import net.bigpoint.seafight.com.module.ship.class_531;
   import net.bigpoint.seafight.com.module.ship.class_544;
   import net.bigpoint.seafight.com.module.ship.class_700;
   import org.osflash.signals.Signal;
   import package_10.class_18;
   import package_10.class_38;
   import package_102.class_589;
   import package_104.class_448;
   import package_104.class_989;
   import package_11.class_130;
   import package_111.class_1176;
   import package_114.class_1030;
   import package_114.class_1321;
   import package_114.class_402;
   import package_114.class_406;
   import package_114.class_430;
   import package_114.class_551;
   import package_131.class_492;
   import package_138.class_523;
   import package_138.class_704;
   import package_14.class_1326;
   import package_14.class_1377;
   import package_14.class_200;
   import package_14.class_220;
   import package_14.class_226;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_143.class_1040;
   import package_148.class_820;
   import package_15.class_273;
   import package_15.class_48;
   import package_154.class_677;
   import package_16.class_28;
   import package_161.class_895;
   import package_163.class_843;
   import package_163.class_873;
   import package_167.class_972;
   import package_17.class_54;
   import package_170.class_979;
   import package_171.class_1316;
   import package_175.class_1035;
   import package_179.class_1064;
   import package_179.class_1298;
   import package_181.class_1081;
   import package_181.class_1329;
   import package_185.class_1136;
   import package_19.class_32;
   import package_190.class_1168;
   import package_20.class_33;
   import package_212.class_1537;
   import package_215.class_1600;
   import package_26.class_1070;
   import package_26.class_1086;
   import package_26.class_1319;
   import package_26.class_52;
   import package_28.class_56;
   import package_30.class_1013;
   import package_30.class_62;
   import package_34.class_107;
   import package_34.class_116;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_959;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_1224;
   import package_46.class_1455;
   import package_47.class_757;
   import package_49.class_137;
   import package_49.class_140;
   import package_49.class_880;
   import package_5.class_1028;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_139;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_43;
   import package_51.class_1355;
   import package_51.class_148;
   import package_53.class_1100;
   import package_54.class_162;
   import package_54.class_163;
   import package_56.class_170;
   import package_56.class_502;
   import package_57.class_171;
   import package_6.class_14;
   import package_69.class_1615;
   import package_69.class_978;
   import package_7.class_1039;
   import package_7.class_15;
   import package_7.class_305;
   import package_7.class_360;
   import package_7.class_456;
   import package_7.class_515;
   import package_72.class_1071;
   import package_72.class_1080;
   import package_74.class_253;
   import package_76.class_279;
   import package_84.class_270;
   import package_9.class_17;
   import package_9.class_447;
   import package_9.class_478;
   import package_9.class_91;
   import package_91.class_414;
   import package_92.class_336;
   import package_92.class_944;
   import package_93.class_876;
   import package_93.class_987;
   import package_95.class_341;
   import package_97.class_409;
   import package_97.class_986;
   import package_99.class_828;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.effects.Rotate3D;
   import spark.effects.animation.Animation;
   import spark.events.IndexChangeEvent;
   
   use namespace mx_internal;
   
   public final class class_521 extends class_10
   {
       
      
      public var var_1682:Signal;
      
      public function class_521()
      {
         super();
         this.name_16();
      }
      
      private final function name_16() : void
      {
         class_502.name_3.addEventListener(class_1319.const_1477,this.method_2453);
         class_502.name_3.addEventListener(class_1319.const_641,this.method_2067);
         class_502.name_3.addEventListener(class_1319.const_7,this.method_2673);
         method_23(class_544.name_3,this.method_1659);
         method_23(class_478.name_3,this.method_2846);
         method_23(class_447.name_3,this.method_1667);
         method_23(class_417.name_3,this.method_1984);
         method_23(class_531.name_3,this.method_2621);
         method_23(class_515.name_3,this.method_1870);
         method_23(class_360.name_3,this.method_1931);
         method_23(class_414.name_3,this.method_2277);
         method_23(class_305.name_3,this.method_1952);
         method_23(class_456.name_3,this.method_1937);
         method_23(class_396.name_3,this.method_1689);
         method_23(class_431.name_3,this.method_1845);
         method_23(class_435.name_3,this.method_2613);
         method_23(class_492.name_3,this.method_2192);
         method_23(class_406.name_3,this.method_1824);
         method_23(class_413.name_3,this.method_2497);
         method_23(class_430.name_3,this.method_1775);
         method_23(class_551.name_3,this.method_1481);
         method_23(class_402.name_3,this.method_1481);
         this.var_1682 = new Signal(class_100);
      }
      
      public final function method_1807() : void
      {
         method_23(class_15.name_3,class_47.method_29.method_1839);
         this.method_2668();
      }
      
      private final function method_1689(param1:class_14) : void
      {
         var _loc2_:class_396 = param1 as class_396;
         var _loc3_:class_1298 = class_47.method_29.method_44(_loc2_.name_4) as class_1298;
         if(_loc3_)
         {
            _loc3_.method_893(_loc2_);
         }
      }
      
      private final function method_2668() : void
      {
         var _loc1_:class_253 = class_48.name_3.method_310(class_270.const_99);
         _loc1_.addEventListener(Event.CHANGE,this.method_1172);
         _loc1_.method_68();
      }
      
      private final function method_1172(param1:Event) : void
      {
         var _loc2_:class_253 = param1.target as class_253;
         if(_loc2_.method_343 == null)
         {
            return;
         }
         _loc2_.removeEventListener(Event.CHANGE,this.method_1172);
         class_1168.name_3.addEventListener(class_978.const_869,this.method_779);
         this.method_779();
      }
      
      private final function method_779(param1:Event = null) : void
      {
         if(!class_49.name_3.method_97(class_43.const_537) || !class_1316.method_21().var_25)
         {
            return;
         }
         class_116.name_3.method_1376();
         class_1168.name_3.removeEventListener(class_978.const_869,this.method_779);
      }
      
      private final function method_1937(param1:class_14) : void
      {
         var _loc2_:class_456 = param1 as class_456;
         class_1329.method_21().method_878 = _loc2_.var_858;
         var _loc3_:class_1081 = class_47.method_24.var_12.subMenuContainer.getMenu(class_214.const_101) as class_1081;
         if(!_loc3_)
         {
         }
      }
      
      private final function method_1824(param1:class_14) : void
      {
         var _loc3_:* = false;
         var _loc4_:class_100 = null;
         var _loc2_:class_406 = param1 as class_406;
         if(_loc2_.var_22 == class_1030.const_1855)
         {
            _loc3_ = _loc2_.var_1077 == class_1321.const_401;
            _loc4_ = class_47.method_29.method_44(class_51.var_21);
            (_loc4_.method_33 as class_174).var_2025 = _loc3_;
            _loc4_.method_670(_loc3_);
         }
      }
      
      private final function method_1845(param1:class_14) : void
      {
         var _loc2_:class_431 = param1 as class_431;
         if(_loc2_.name_11 != 0)
         {
            class_170.method_188("admiral_spawned",[class_47.method_113.method_27(_loc2_.var_16),class_139.method_27(_loc2_.name_11)]);
         }
         else
         {
            class_170.method_188("admiral_spawned_no_map",[class_47.method_113.method_27(_loc2_.var_16)]);
         }
      }
      
      private final function method_2613(param1:class_14) : void
      {
         var _loc2_:class_435 = param1 as class_435;
         class_170.method_188("warmap:boardingattacked",[class_47.method_113.method_27(_loc2_.var_16)]);
      }
      
      private final function method_2192(param1:class_14) : void
      {
         var _loc2_:class_492 = param1 as class_492;
         var _loc3_:class_100 = class_47.method_29.method_44(_loc2_.var_16);
         var _loc4_:class_1067 = _loc3_.method_33 as class_1067;
         _loc4_.name_33.name_33 = _loc2_.name_33;
      }
      
      private final function method_1952(param1:class_14) : void
      {
         var _loc6_:class_162 = null;
         var _loc2_:class_305 = param1 as class_305;
         var _loc3_:class_100 = class_47.method_29.method_44(class_51.var_21);
         var _loc4_:class_174 = _loc3_.method_33 as class_174;
         var _loc5_:* = _loc2_.name_5 == class_305.const_1023;
         _loc4_.var_712 = _loc5_;
         _loc3_.method_598(_loc5_);
         if(false == _loc5_)
         {
            _loc6_ = class_47.method_24.var_12.actionsBar.method_69(class_150.const_264);
            _loc6_.method_920 = false;
            _loc6_.method_70(false);
         }
         class_47.method_48.method_213();
      }
      
      private final function method_2673(param1:class_1319) : void
      {
         var _loc2_:Boolean = false;
         if(!class_177.method_52(class_51.var_21,param1.var_88))
         {
            _loc2_ = class_49.method_42(class_43.const_631);
            if(!_loc2_)
            {
               return;
            }
         }
         else
         {
            _loc2_ = class_49.method_42(class_43.const_575);
            if(!_loc2_)
            {
               return;
            }
         }
         var _loc3_:class_1023 = new class_1023();
         _loc3_.var_88 = param1.var_88;
         _loc3_.var_324 = param1.var_324;
         _loc3_.var_44 = param1.var_44;
         _loc3_.name_5 = param1.var_507;
         _loc3_.var_1059 = param1.var_1059;
         _loc3_.var_424 = param1.var_424;
         var _loc4_:class_171 = class_47.method_29.method_314(_loc3_.var_88,_loc3_.name_5);
         if(_loc4_ == null)
         {
            _loc4_ = class_200.method_802(_loc3_);
            _loc4_.method_867();
         }
         else
         {
            _loc4_.method_1197(_loc3_);
            class_47.method_29.method_819(param1.var_507);
            class_47.method_29.method_949(param1.var_507);
         }
      }
      
      private final function method_2453(param1:class_1319) : void
      {
         var _loc2_:class_171 = class_47.method_29.method_314(param1.var_88,param1.var_507);
         var _loc3_:class_100 = class_47.method_29.method_44(param1.var_88);
         var _loc4_:class_1023 = new class_1023();
         _loc4_.var_88 = param1.var_88;
         _loc4_.var_997 = param1.var_997;
         _loc4_.var_324 = param1.var_324;
         _loc4_.var_234 = param1.var_234 < 0?int(-param1.var_234):int(param1.var_234);
         _loc4_.var_1109 = param1.var_1109;
         _loc4_.var_432 = class_47.method_29.method_44(_loc4_.var_88).method_33.var_432;
         if(_loc4_.var_997 != 0)
         {
            _loc4_.var_61 = param1.var_1893;
            _loc4_.var_63 = param1.var_2014;
            _loc4_.var_34 = class_959.const_48;
         }
         else
         {
            _loc4_.var_61 = _loc3_.method_33.var_61;
            _loc4_.var_63 = _loc3_.method_33.var_63;
            _loc4_.var_34 = _loc3_.method_33.var_743;
         }
         _loc4_.var_44 = param1.var_44;
         _loc4_.name_5 = param1.var_507;
         if(_loc2_ == null)
         {
            _loc2_ = class_200.method_802(_loc4_);
         }
         else
         {
            _loc2_.method_1197(_loc4_);
            class_47.method_29.method_819(param1.var_507);
            class_47.method_29.method_949(param1.var_507);
         }
      }
      
      private final function method_2067(param1:class_1319) : void
      {
         class_47.method_29.method_518(param1.var_88,param1.var_507);
      }
      
      private final function method_1931(param1:class_14) : void
      {
         var _loc2_:class_360 = param1 as class_360;
         var _loc3_:class_98 = class_47.method_21().method_392(_loc2_.var_59);
         if(_loc3_ == null || class_177.method_52(_loc2_.var_275,class_47.method_29.method_56.name_4))
         {
            return;
         }
         _loc3_.method_2291(_loc2_.var_275.name_4 != 0);
      }
      
      private final function method_1659(param1:class_14) : void
      {
         var _loc2_:class_544 = param1 as class_544;
         var _loc3_:class_1067 = new class_1067();
         _loc3_.var_182 = _loc2_.var_236.var_146;
         _loc3_.var_356 = _loc2_.var_236.var_107;
         _loc3_.var_545 = true;
         _loc3_.var_2086 = _loc2_.var_1713;
         _loc3_.name_4 = _loc2_.name_4;
         _loc3_.name_14 = _loc2_.name_14;
         _loc3_.var_743 = _loc2_.var_34;
         _loc3_.var_61 = _loc2_.name_6.var_9;
         _loc3_.var_63 = _loc2_.name_6.var_8;
         _loc3_.var_16 = _loc2_.var_16;
         _loc3_.var_44 = class_47.method_113.method_27(_loc2_.var_16);
         _loc3_.var_101 = _loc2_.var_179.var_146;
         _loc3_.var_182 = _loc2_.var_236.var_146;
         _loc3_.var_190 = _loc2_.var_179.var_107;
         _loc3_.var_356 = _loc2_.var_236.var_107;
         _loc3_.var_383 = _loc2_.var_117;
         _loc3_.var_685 = false;
         _loc3_.var_556 = _loc2_.var_556;
         _loc3_.var_169 = _loc2_.var_169;
         _loc3_.var_1222 = this.method_1994(_loc2_.var_169);
         _loc3_.var_198 = _loc2_.var_198;
         _loc3_.var_2023 = _loc2_.var_1497;
         _loc3_.var_1754 = _loc2_.var_499;
         _loc3_.var_957 = _loc2_.var_957;
         _loc3_.name_27 = _loc2_.name_27;
         _loc3_.var_850 = _loc2_.var_850;
         _loc3_.var_154 = _loc2_.var_92;
         _loc3_.var_58 = _loc2_.var_58;
         _loc3_.var_1051 = _loc2_.var_1687;
         _loc3_.name_20 = new class_89();
         _loc3_.name_33 = new class_1326(_loc2_.name_33);
         var _loc4_:class_100 = this.method_740(_loc3_,_loc2_.var_150);
         this.var_1682.dispatch(_loc4_);
      }
      
      private final function method_1994(param1:Vector.<int>) : int
      {
         var _loc2_:int = 0;
         for each(_loc2_ in param1)
         {
            if(_loc2_ == class_1327.const_240)
            {
               return class_1028.const_240;
            }
            if(_loc2_ == class_1327.const_1752 || _loc2_ == class_1327.const_1721)
            {
               return class_1028.const_236;
            }
            if(_loc2_ == class_1327.const_1496)
            {
               return class_1028.const_512;
            }
            if(_loc2_ == class_1327.const_1827)
            {
               return class_1028.const_1245;
            }
         }
         return class_1028.const_181;
      }
      
      private final function method_2497(param1:class_14) : void
      {
         var _loc2_:class_413 = param1 as class_413;
         var _loc3_:class_173 = new class_173();
         _loc3_.var_182 = _loc2_.var_236.var_146;
         _loc3_.var_356 = _loc2_.var_236.var_107;
         _loc3_.var_545 = true;
         _loc3_.name_4 = _loc2_.name_4;
         _loc3_.name_14 = _loc2_.name_14;
         _loc3_.var_61 = _loc2_.name_6.var_9;
         _loc3_.var_63 = _loc2_.name_6.var_8;
         _loc3_.var_44 = class_1064.method_1504(_loc2_.name_14);
         _loc3_.var_154 = _loc2_.var_92;
         _loc3_.var_101 = _loc2_.var_179.var_146;
         _loc3_.var_182 = _loc2_.var_236.var_146;
         _loc3_.var_190 = _loc2_.var_179.var_107;
         _loc3_.var_356 = _loc2_.var_236.var_107;
         _loc3_.var_685 = false;
         _loc3_.var_556 = true;
         _loc3_.name_27 = _loc2_.name_27;
         _loc3_.name_20 = _loc2_.name_20;
         this.method_740(_loc3_,null);
         var _loc4_:class_1064 = class_47.method_29.method_44(_loc3_.name_4) as class_1064;
         if(_loc4_ == null)
         {
            throw new Error("Invalid tower design-id: " + _loc2_.name_14);
         }
         var _loc5_:class_1265 = new class_1265();
         _loc5_.name_6 = _loc2_.var_455;
         _loc4_.method_215 = _loc5_;
      }
      
      private final function method_1984(param1:class_14) : void
      {
         var _loc2_:class_417 = param1 as class_417;
         var _loc3_:class_173 = new class_173();
         _loc3_.name_4 = _loc2_.name_4;
         _loc3_.name_14 = _loc2_.name_14;
         _loc3_.var_743 = _loc2_.var_34;
         _loc3_.var_61 = _loc2_.name_6.var_9;
         _loc3_.var_63 = _loc2_.name_6.var_8;
         _loc3_.var_44 = _loc2_.name_13;
         _loc3_.var_154 = _loc2_.var_92;
         _loc3_.var_983 = _loc2_.var_60;
         _loc3_.var_383 = null;
         _loc3_.var_665 = _loc2_.var_26;
         _loc3_.method_695 = 0;
         _loc3_.var_1032 = false;
         _loc3_.var_685 = false;
         _loc3_.var_556 = true;
         _loc3_.var_169 = _loc2_.var_169;
         _loc3_.name_20 = _loc2_.name_20;
         this.method_740(_loc3_,_loc2_.var_150);
      }
      
      private final function method_740(param1:class_173, param2:Vector.<class_91>) : class_100
      {
         var _loc5_:class_972 = null;
         var _loc6_:Array = null;
         var _loc7_:class_171 = null;
         var _loc8_:Point = null;
         var _loc3_:class_200 = class_47.method_29;
         var _loc4_:class_100 = _loc3_.method_44(param1.name_4);
         param1.method_1654();
         if(_loc4_ != null && _loc4_.method_33.name_14 == param1.name_14)
         {
            param1.var_1190 = _loc3_.method_608(param1.name_20);
            _loc4_.method_749(param1);
            _loc4_.method_1226();
         }
         else
         {
            if(_loc4_ != null)
            {
               _loc4_.suicide(false);
               class_47.method_29.method_602(_loc4_.method_33.name_4);
            }
            _loc4_ = class_200.method_323(param1);
         }
         if(param2 && param2.length > 0)
         {
            _loc5_ = new class_972(param2);
            _loc4_.method_274(_loc5_);
            _loc6_ = class_47.method_29.method_482(param1.name_4);
            for each(_loc7_ in _loc6_)
            {
               try
               {
                  _loc8_ = _loc5_.method_210(_loc5_.method_490.length - 1);
                  _loc7_.method_706(_loc8_.x,_loc8_.y);
               }
               catch(e:TypeError)
               {
                  continue;
               }
            }
         }
         this.method_2197(_loc4_);
         _loc4_.method_184();
         return _loc4_;
      }
      
      private final function method_1775(param1:class_14) : void
      {
         var _loc2_:class_430 = param1 as class_430;
         var _loc3_:class_100 = class_47.method_29.method_44(_loc2_.name_4);
         _loc3_.method_2482(_loc2_);
      }
      
      private final function method_1481(param1:class_14) : void
      {
         var _loc2_:class_100 = null;
         var _loc4_:class_402 = null;
         var _loc3_:class_551 = param1 as class_551;
         if(_loc3_)
         {
            _loc2_ = class_47.method_29.method_44(_loc3_.name_4);
            _loc2_.method_2008(_loc3_);
         }
         else
         {
            _loc4_ = param1 as class_402;
            _loc2_ = class_47.method_29.method_44(_loc4_.name_4);
            if(_loc2_)
            {
               _loc2_.method_1569(_loc4_.var_22);
            }
         }
      }
      
      private final function method_2197(param1:class_100) : void
      {
         if(class_177.method_52(param1.method_104(),class_47.method_48.method_2330))
         {
            class_47.method_48.method_187(param1);
         }
      }
      
      private final function method_1870(param1:class_14) : void
      {
         if(!class_220.method_280(class_220.const_214))
         {
            return;
         }
         var _loc2_:class_515 = param1 as class_515;
         var _loc3_:class_174 = class_47.method_29.method_56;
         _loc3_.var_1483 = _loc2_.var_682;
         _loc3_.var_1553 = _loc2_.var_717;
         _loc3_.var_1501 = _loc2_.var_292;
         _loc3_.var_1736 = _loc2_.var_303;
         _loc3_.var_1245 = int(_loc2_.var_648);
         _loc3_.var_1625 = _loc2_.var_158;
         _loc3_.var_1352 = _loc2_.var_704;
         _loc3_.var_297 = _loc2_.name_10;
         if(_loc2_.name_10 <= 0)
         {
            const_3.error("Invalid level: " + _loc2_.name_10);
            _loc3_.var_297 = 1;
         }
         class_47.method_29.method_1393();
         class_47.method_29.method_75.method_749(class_47.method_29.method_56);
         class_47.method_48.method_767(class_47.method_29.method_75);
         var _loc4_:class_226 = class_47.method_72;
         _loc4_.method_412();
         _loc4_.method_377();
         _loc4_.method_807();
         _loc4_.method_870();
         _loc4_.method_379();
      }
      
      protected final function method_1637(param1:class_84, param2:class_972) : void
      {
         var _loc5_:class_171 = null;
         var _loc6_:Point = null;
         if(class_177.method_52(param1,class_47.method_29.method_56.name_4))
         {
            class_47.method_24.var_12.miniMap.method_1715();
         }
         var _loc3_:class_100 = class_47.method_29.method_44(param1);
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.method_274(param2);
         var _loc4_:Array = class_47.method_29.method_482(param1);
         for each(_loc5_ in _loc4_)
         {
            try
            {
               _loc6_ = param2.method_210(param2.method_490.length - 1);
               _loc5_.method_706(_loc6_.x,_loc6_.y);
            }
            catch(e:TypeError)
            {
               continue;
            }
         }
         if(class_47.method_24.var_12.subMenuContainer.optionsMenu.method_136.method_73(class_54.const_428) == false)
         {
            return;
         }
      }
      
      private final function method_2621(param1:class_14) : void
      {
         var _loc7_:class_171 = null;
         var _loc2_:class_531 = param1 as class_531;
         var _loc3_:class_200 = class_47.method_29;
         var _loc4_:class_100 = _loc3_.method_44(_loc2_.name_4);
         if(!_loc4_)
         {
            return;
         }
         var _loc5_:Boolean = _loc3_.method_602(_loc2_.name_4);
         if(!_loc5_)
         {
            return;
         }
         this.method_2086(_loc4_,_loc2_.var_604 == class_1328.const_1470 || _loc2_.var_604 == class_1328.name_47,_loc2_.var_52);
         var _loc6_:Array = class_47.method_29.method_482(_loc2_.name_4);
         for each(_loc7_ in _loc6_)
         {
            _loc7_.suicide(true);
            _loc3_.method_518(_loc2_.name_4);
         }
      }
      
      private final function method_2086(param1:class_100, param2:Boolean = true, param3:class_84 = null) : void
      {
         if(class_47.method_29.method_44(param3))
         {
            this.method_2130(param1,param3);
         }
         else
         {
            param1.suicide(param2);
         }
      }
      
      private final function method_2130(param1:class_100, param2:class_84) : void
      {
         var expire:Timer = null;
         var killShipEvent:Function = null;
         var ship:class_100 = param1;
         var attacker:class_84 = param2;
         killShipEvent = function(param1:TimerEvent):void
         {
            expire.removeEventListener(TimerEvent.TIMER_COMPLETE,killShipEvent);
            ship.suicide(true);
         };
         expire = new Timer(2500,1);
         expire.addEventListener(TimerEvent.TIMER_COMPLETE,killShipEvent);
         expire.start();
         class_1035.method_2127(attacker,function():void
         {
            ship.suicide(true);
            expire.stop();
            expire.removeEventListener(TimerEvent.TIMER_COMPLETE,killShipEvent);
         });
      }
      
      private final function method_2846(param1:class_14) : void
      {
         var _loc2_:class_478 = param1 as class_478;
         this.method_1637(_loc2_.name_4,new class_972(_loc2_.var_150));
      }
      
      private final function method_1667(param1:class_14) : void
      {
         var _loc2_:class_447 = param1 as class_447;
         var _loc3_:class_100 = class_47.method_29.method_44(_loc2_.name_4);
         if(_loc3_)
         {
            _loc3_.stopRoute(_loc2_.var_391 > 0,_loc2_.name_6.var_9,_loc2_.name_6.var_8,_loc2_.var_391);
         }
      }
      
      private final function method_2277(param1:class_14) : void
      {
         class_47.method_48.method_408();
      }
   }
}
