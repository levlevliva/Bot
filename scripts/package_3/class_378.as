package package_3
{
   import com.adobe.serialization.json.JSONEncoder;
   import com.adobe.serialization.json.JSONToken;
   import com.adobe.serialization.json.JSONTokenType;
   import com.adobe.serialization.json.JSONTokenizer;
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.net.events.MapScrollEvent;
   import com.bigpoint.seafight.net.events.class_1305;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_1302;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_82;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.tools.getMapFieldPoint;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.shipcoverflow.components.ShipCoverFlowItem;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.SimpleBlueButtonSkin;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderCheckBoxRenderer;
   import com.bigpoint.seafight.view.popups.event.component.ToggleButtonGroup;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.event.modules.common.clash.ClashRankingList;
   import com.bigpoint.seafight.view.popups.event.modules.common.skins.NpcKillsModuleSkin;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.constants.SocketEmphasisType;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemsInventoryVo;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.MiniHitpointsBarDisplay;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.RankIconComboBoxListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildImage;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tooltips.EligibleUpgradeTooltip;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.WindowNpcRangeChecker;
   import com.bigpoint.seafight.view.popups.quest.npc.events.NpcQuestContentModuleActionEvent;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_1451;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverviewContentMask;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenArenaDominationScoreWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.IVisualElement;
   import mx.events.CollectionEventKind;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.LinearGradient;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_892;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.guild.class_394;
   import net.bigpoint.seafight.com.module.guild.class_408;
   import net.bigpoint.seafight.com.module.guild.class_510;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.ship.class_396;
   import net.bigpoint.seafight.com.module.ship.class_531;
   import net.bigpoint.seafight.com.module.ship.class_700;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_101.class_511;
   import package_103.class_1029;
   import package_103.class_361;
   import package_103.class_437;
   import package_103.class_518;
   import package_103.class_525;
   import package_104.class_448;
   import package_104.class_989;
   import package_107.class_693;
   import package_110.class_390;
   import package_122.class_634;
   import package_127.class_455;
   import package_128.class_716;
   import package_136.class_926;
   import package_14.class_200;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_143.class_933;
   import package_147.class_683;
   import package_147.class_797;
   import package_15.class_48;
   import package_16.class_28;
   import package_167.class_972;
   import package_17.class_325;
   import package_17.class_328;
   import package_17.class_54;
   import package_170.class_979;
   import package_171.class_1275;
   import package_179.class_1282;
   import package_179.class_1284;
   import package_179.class_1288;
   import package_179.class_1293;
   import package_185.class_1136;
   import package_202.class_1238;
   import package_202.class_1301;
   import package_204.class_1279;
   import package_204.class_1280;
   import package_204.class_1281;
   import package_204.class_1285;
   import package_204.class_1286;
   import package_204.class_1289;
   import package_204.class_1290;
   import package_204.class_1291;
   import package_204.class_1292;
   import package_204.class_1294;
   import package_204.class_1295;
   import package_204.class_1297;
   import package_204.class_1299;
   import package_204.class_1300;
   import package_204.class_1303;
   import package_204.class_1304;
   import package_204.class_1306;
   import package_214.class_1559;
   import package_214.class_1604;
   import package_22.class_505;
   import package_23.class_42;
   import package_28.class_56;
   import package_29.class_565;
   import package_32.class_64;
   import package_34.class_107;
   import package_34.class_1499;
   import package_34.class_73;
   import package_36.class_100;
   import package_37.class_75;
   import package_40.class_85;
   import package_41.class_84;
   import package_41.class_89;
   import package_46.class_1224;
   import package_46.class_1356;
   import package_46.class_1457;
   import package_46.class_1500;
   import package_46.class_1501;
   import package_47.class_881;
   import package_49.class_137;
   import package_49.class_880;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_945;
   import package_50.class_1296;
   import package_50.class_141;
   import package_51.class_148;
   import package_54.class_1006;
   import package_54.class_159;
   import package_57.class_171;
   import package_6.class_14;
   import package_7.class_74;
   import package_72.class_203;
   import package_8.class_114;
   import package_88.class_290;
   import package_89.class_1378;
   import package_9.class_404;
   import package_9.class_91;
   import package_91.class_1246;
   import package_92.class_336;
   import package_92.class_944;
   import package_97.class_986;
   import package_99.class_786;
   import spark.components.Button;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.components.TextInput;
   import spark.components.VGroup;
   import spark.effects.easing.Elastic;
   import spark.events.IndexChangeEvent;
   import spark.events.TextOperationEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   public final class class_378 extends class_10
   {
      
      private static var name_55:class_378;
       
      
      private var var_223:class_1285;
      
      private var var_1278:class_1281;
      
      private var var_480:class_1296;
      
      private var var_495:class_1296;
      
      private var var_555:int;
      
      private var var_75:Dictionary;
      
      private var var_112:class_42;
      
      public function class_378(param1:class_28)
      {
         super();
         this.var_75 = new Dictionary();
         name_55 = this;
         this.var_112 = class_42.method_21();
         CentralEventUnit.addEventListener(class_325.const_391,this.method_2150);
         param1.addEventListener(class_56.const_51,this.method_1184);
         method_23(class_518.name_3,this.method_1666);
         method_23(class_74.name_3,this.method_736);
         method_23(class_531.name_3,this.method_2621);
         method_23(class_525.name_3,this.method_2609);
         method_23(class_437.name_3,this.method_1853);
         method_23(class_361.name_3,this.method_2554);
         method_23(class_396.name_3,this.method_1689);
         method_23(class_404.name_3,this.method_1685);
      }
      
      public static function get name_3() : class_378
      {
         return name_55;
      }
      
      private final function method_1689(param1:class_14) : void
      {
         var _loc2_:class_396 = param1 as class_396;
         var _loc3_:class_1299 = this.var_75[_loc2_.name_4] as class_1299;
         if(_loc3_)
         {
            _loc3_.method_893(_loc2_);
         }
      }
      
      private final function method_2554(param1:class_14) : void
      {
         var _loc2_:class_361 = param1 as class_361;
         if(_loc2_.name_28)
         {
            this.method_1758(_loc2_);
         }
         else
         {
            this.method_2770(_loc2_);
         }
      }
      
      private final function method_1758(param1:class_361) : void
      {
         var _loc2_:String = null;
         var _loc3_:class_1279 = null;
         var _loc4_:int = 0;
         switch(param1.var_58)
         {
            case class_1029.const_654:
            case class_1029.const_671:
               _loc2_ = this.method_180(param1.name_4,param1.var_58);
               _loc3_ = this.var_75[_loc2_] as class_1279;
               if(_loc3_)
               {
                  return;
               }
               _loc4_ = param1.var_58 == class_1029.const_654?int(class_123.const_455):int(class_123.const_402);
               _loc3_ = new class_1291(param1.name_6.var_9,param1.name_6.var_8,param1.name_25,_loc4_);
               this.var_75[_loc2_] = _loc3_;
               _loc3_.method_66();
               break;
            case class_1029.const_1133:
               _loc2_ = String(param1.name_4);
               _loc3_ = this.var_75[_loc2_] as class_1279;
               if(_loc3_)
               {
                  return;
               }
               _loc3_ = new class_1299(param1.name_6.var_9,param1.name_6.var_8);
               this.var_75[_loc2_] = _loc3_;
               _loc3_.method_66();
               break;
            default:
               const_3.warn("unhandled effect: " + param1.var_58);
         }
      }
      
      private final function method_2770(param1:class_361) : void
      {
         var _loc2_:String = null;
         var _loc3_:class_1279 = null;
         switch(param1.var_58)
         {
            case class_1029.const_654:
            case class_1029.const_671:
               _loc2_ = this.method_180(param1.name_4,param1.var_58);
               _loc3_ = this.var_75[_loc2_] as class_1279;
               if(null == _loc3_)
               {
                  return;
               }
               _loc3_.method_71();
               delete this.var_75[_loc2_];
               break;
            case class_1029.const_1133:
               _loc2_ = String(param1.name_4);
               _loc3_ = this.var_75[_loc2_] as class_1279;
               if(null == _loc3_)
               {
                  return;
               }
               _loc3_.method_71();
               delete this.var_75[_loc2_];
               break;
            default:
               const_3.warn("unhandled effect: " + param1.var_58);
         }
      }
      
      private final function method_1666(param1:class_14) : void
      {
         var _loc2_:class_518 = param1 as class_518;
         var _loc3_:class_1305 = new class_1305("not_needed_as_event");
         _loc3_.method_236 = _loc2_.var_58;
         _loc3_.method_98 = _loc2_.name_4;
         if(_loc2_.name_28)
         {
            this.method_2438(_loc3_);
         }
         else
         {
            this.method_2442(_loc3_);
         }
      }
      
      protected final function method_2438(param1:class_1305) : void
      {
         var _loc2_:String = null;
         var _loc4_:class_1290 = null;
         var _loc5_:class_84 = null;
         var _loc6_:int = 0;
         var _loc7_:class_171 = null;
         var _loc8_:class_100 = null;
         var _loc9_:class_1023 = null;
         this.var_555 = param1.method_236;
         _loc2_ = this.method_180(param1.method_98,this.var_555);
         var _loc3_:class_100 = class_47.method_29.method_44(param1.method_98);
         switch(this.var_555)
         {
            case class_1029.const_8:
               break;
            case class_1029.const_1711:
               this.method_2572(param1.name_18);
               break;
            case class_1029.const_1451:
               this.method_2026(param1);
               break;
            case class_1029.const_90:
               this.method_1641(param1,"SmokeBomb",class_123.const_90);
               break;
            case class_1029.const_1449:
               this.method_567(param1,class_123.method_27(class_123.const_251),class_123.const_251);
               break;
            case class_1029.const_207:
               this.method_567(param1,"TeleportAnimation",class_123.const_207,0.55,false);
               break;
            case class_1029.const_148:
               this.method_2565(param1,class_1304.name_67,class_123.const_148,200,1500,16,1.5);
               break;
            case class_1029.const_1886:
               this.method_1146(param1,class_123.method_27(class_123.const_316),class_123.const_316);
               break;
            case class_1029.const_788:
               _loc4_ = this.var_75[_loc2_] as class_1290;
               if(_loc4_)
               {
                  _loc4_.method_71();
               }
               _loc4_ = new class_1290(_loc3_);
               this.var_75[_loc2_] = _loc4_;
               _loc4_.method_66();
               break;
            case class_1029.const_301:
               _loc5_ = param1.method_98;
               _loc6_ = class_1023.const_322;
               _loc7_ = class_47.method_29.method_314(_loc5_,class_1023.const_322);
               if(_loc7_)
               {
                  const_3.error("Snowman pet already exists " + _loc7_.method_67);
                  return;
               }
               _loc8_ = class_47.method_29.method_44(_loc5_);
               _loc9_ = new class_1023();
               _loc9_.var_88 = _loc5_;
               _loc9_.var_432 = class_47.method_29.method_44(_loc5_).method_33.var_432;
               _loc9_.var_61 = _loc8_.method_33.var_61;
               _loc9_.var_63 = _loc8_.method_33.var_63;
               _loc9_.var_34 = _loc8_.method_33.var_743;
               _loc9_.var_44 = "Snowman";
               _loc9_.name_5 = _loc6_;
               _loc7_ = class_200.method_802(_loc9_);
               break;
            case class_1029.const_1111:
               _loc3_.method_33.var_1032 = true;
               break;
            case class_1029.const_1071:
               class_47.method_24.method_39.method_683(2,0,0.8);
               class_328.method_21().method_419();
               break;
            case class_1029.const_1324:
               this.method_1146(param1,class_123.method_27(class_123.const_343),class_123.const_343);
               break;
            case class_1029.const_1673:
               this.method_1545(param1.method_98,this.var_555,true);
               break;
            case class_1029.const_112:
               this.method_567(param1,class_123.method_27(class_123.const_112),class_123.const_112,1,false);
               break;
            case class_1029.const_145:
               this.method_1790(param1.method_98,param1.method_236);
               break;
            case class_1029.const_1076:
               this.method_567(param1,class_123.method_27(class_123.const_269),class_123.const_269,1,true);
               break;
            case class_1029.const_673:
               this.method_2299(param1);
               break;
            case class_1029.const_1642:
               this.method_1754(param1);
               break;
            case class_1029.const_1065:
               this.method_345(param1.method_98,_loc3_.method_230(),"deathfights","monsterbuff");
               break;
            case class_1029.const_1098:
               this.method_345(param1.method_98,_loc3_.method_225(),"deathfights","stigmatizedebuff");
               break;
            case class_1029.const_1872:
               this.method_345(param1.method_98,_loc3_.method_230(),"impact-elem-air","impact_elem_air",true);
               break;
            case class_1029.const_1322:
               this.method_345(param1.method_98,_loc3_.method_230(),"impact-elem-fire","impact_elem_fire",true);
               break;
            case class_1029.const_1729:
               this.method_345(param1.method_98,_loc3_.method_230(),"impact-elem-water","impact_elem_water",true);
               break;
            case class_1029.const_1526:
               this.method_345(param1.method_98,_loc3_.method_230(),"impact-elem-earth","impact_elem_earth",true);
               break;
            case class_1029.const_655:
            case class_1029.const_635:
            case class_1029.const_648:
            case class_1029.const_587:
               this.method_1964(param1.method_98);
               break;
            default:
               const_3.warn("unhandled display effect animation id: " + this.var_555);
         }
      }
      
      protected final function method_2442(param1:class_1305) : void
      {
         var _loc2_:int = param1.method_236;
         var _loc3_:class_100 = class_47.method_29.method_44(param1.method_98);
         switch(_loc2_)
         {
            case class_1029.const_90:
               if(class_177.method_52(param1.method_98,class_51.var_21))
               {
                  class_47.method_48.method_2758 = false;
               }
               this.method_71(param1.method_98,param1.method_236);
               break;
            case class_1029.const_673:
               if(_loc3_ && _loc3_.method_33.method_52(class_51.var_21))
               {
                  class_1303.var_1173 = false;
               }
               this.method_71(param1.method_98,param1.method_236);
               break;
            case class_1029.const_301:
               class_47.method_29.method_518(param1.method_98,class_1023.const_322);
               break;
            case class_1029.const_1111:
               _loc3_.method_33.var_1032 = false;
               break;
            case class_1029.const_1071:
               class_47.method_24.method_39.method_683();
               class_328.method_21().method_571();
               break;
            case class_1029.const_1896:
               class_203.name_21(SoundEffectType.HALLOWEEN_NPC_BREAKFREE);
               break;
            default:
               this.method_71(param1.method_98,param1.method_236);
         }
      }
      
      protected final function method_690(param1:MapScrollEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.var_223)
         {
            _loc2_ = class_1285.const_562;
            _loc3_ = Math.ceil(Number(param1.incX * _loc2_) * (1 / this.var_223.scaleX) * class_141.var_99);
            _loc4_ = Math.ceil(Number(param1.incY * _loc2_) * (1 / this.var_223.scaleY) * class_141.var_99);
            this.var_223.method_1412(_loc3_,_loc4_);
         }
      }
      
      protected final function method_1240(param1:MapScrollEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.var_223)
         {
            _loc2_ = param1.x * (1 / this.var_223.scaleX) * class_141.var_99;
            _loc3_ = param1.y * (1 / this.var_223.scaleY) * class_141.var_99;
            this.var_223.method_1412(_loc2_,_loc3_,new Point());
         }
      }
      
      private final function showKrakenInkCloudEffect() : void
      {
         var _loc2_:int = class_51.var_39;
         var _loc3_:int = class_51.var_40;
         var _loc4_:class_141 = class_47.method_24.method_39 as class_141;
         _loc4_.method_2567();
         _loc4_.addChild(this.var_223 = new class_1285(_loc2_ * 0.3,_loc3_ * 0.3));
         this.var_223.width = _loc2_;
         this.var_223.height = _loc3_;
         this.var_223.name_23();
         CentralEventUnit.addEventListener(MapScrollEvent.KEYBOARD_SCROLL,this.method_690);
         CentralEventUnit.addEventListener(MapScrollEvent.SHIP_SCROLL,this.method_690);
         CentralEventUnit.addEventListener(MapScrollEvent.MOUSE_SCROLL,this.method_1240);
      }
      
      private final function method_839() : void
      {
         var _loc1_:class_141 = class_47.method_24.method_39 as class_141;
         _loc1_.method_2227();
         if(this.var_223 == null)
         {
            return;
         }
         this.var_223.addEventListener(Event.COMPLETE,this.method_2014);
         this.var_223.method_64();
         CentralEventUnit.removeEventListener(MapScrollEvent.KEYBOARD_SCROLL,this.method_690);
         CentralEventUnit.removeEventListener(MapScrollEvent.SHIP_SCROLL,this.method_690);
         CentralEventUnit.removeEventListener(MapScrollEvent.MOUSE_SCROLL,this.method_1240);
      }
      
      private final function method_2014(param1:Event) : void
      {
         if(this.var_223.parent)
         {
            this.var_223.parent.removeChild(this.var_223);
         }
         this.var_223.removeEventListener(Event.COMPLETE,arguments["callee"]);
         this.var_223 = null;
      }
      
      private final function method_2572(param1:Array = null) : void
      {
         this.var_1278 = new class_1281(class_123.method_27(class_123.const_215),class_123.const_215,parseInt(param1[2] as String));
         this.var_1278.method_66();
         this.var_1278.name_46.x = parseInt(param1[0] as String);
         this.var_1278.name_46.y = parseInt(param1[1] as String);
         class_47.method_24.method_39.method_61(this.var_1278.name_46);
      }
      
      private final function method_1146(param1:class_1305, param2:String, param3:int) : void
      {
         var effect:class_1289 = null;
         var event:class_1305 = param1;
         var id:String = param2;
         var finisherType:int = param3;
         var userID:class_84 = event.method_98;
         var userKey:String = this.method_180(userID,this.var_555);
         if(this.var_75[userKey])
         {
            return;
         }
         var ship:class_100 = class_47.method_29.method_44(event.method_98);
         if(ship.method_33.name_14 == class_945.const_43)
         {
            return;
         }
         effect = new class_1289(ship.method_225(),id,finisherType,ship.name_6,0);
         effect.method_1716(function():void
         {
            class_47.method_24.method_39.method_61(effect.method_231.method_125,false);
         });
         effect.method_66();
         effect.method_231.var_463 = 90;
         effect.method_231.var_484 = 90;
         effect.method_231.var_1211 = 0;
         effect.method_231.var_1396 = 0;
         effect.method_231.method_279 = 80;
         effect.method_231.name_80 = class_22.const_165;
         this.var_75[userKey] = effect;
      }
      
      private final function method_1545(param1:class_84, param2:int, param3:Boolean) : void
      {
         var _loc4_:String = this.method_180(param1,param2);
         var _loc5_:class_1297 = this.var_75[_loc4_] as class_1297;
         var _loc6_:class_100 = class_47.method_29.method_44(param1);
         if(_loc5_)
         {
            _loc5_.method_66();
            return;
         }
         _loc5_ = new class_1297(this,_loc6_.method_225(),param1,class_123.const_457,param3);
         _loc5_.method_66();
         this.var_75[_loc4_] = _loc5_;
      }
      
      private final function method_775(param1:class_100) : void
      {
         this.method_2805();
         var _loc2_:SWFFinisher = getSWFFinisher(class_123.const_231,this.method_775,param1);
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:MovieClip = _loc2_.getEmbeddedMovieClip("snowflake_1");
         this.var_480 = new class_1296(new Point(0,-5),null,_loc3_,"snowflake_1");
         this.var_480.name_80 = 40;
         this.var_480.method_279 = 50;
         this.var_480.var_463 = 80;
         this.var_480.var_484 = 80;
         this.var_480.name_23();
         param1.method_225().addChild(this.var_480.method_125);
         setTimeout(this.var_480.method_64,1000);
         var _loc4_:SWFFinisher = getSWFFinisher(class_123.const_231,this.method_775,param1);
         if(_loc4_ == null)
         {
            return;
         }
         var _loc5_:MovieClip = _loc4_.getEmbeddedMovieClip("snowflake_2");
         this.var_495 = new class_1296(new Point(0,-5),null,_loc5_,"snowflake_2");
         this.var_495.name_80 = 40;
         this.var_495.method_279 = 50;
         this.var_495.var_463 = 80;
         this.var_495.var_484 = 80;
         this.var_495.name_23();
         param1.method_225().addChild(this.var_495.method_125);
         setTimeout(this.var_495.method_64,1000);
      }
      
      private final function method_2805() : void
      {
         var _loc1_:Sprite = null;
         var _loc2_:Sprite = null;
         if(this.var_480 != null)
         {
            this.var_480.method_64();
            _loc1_ = this.var_480.method_125;
            if(_loc1_ && _loc1_.parent)
            {
               _loc1_.parent.removeChild(_loc1_);
            }
            this.var_480 = null;
         }
         if(this.var_495 != null)
         {
            this.var_495.method_64();
            _loc2_ = this.var_495.method_125;
            if(_loc2_ && _loc2_.parent)
            {
               _loc2_.parent.removeChild(_loc2_);
            }
            this.var_495 = null;
         }
      }
      
      private final function method_2565(param1:class_1305, param2:String, param3:int, param4:int, param5:int = 500, param6:int = -1, param7:Number = 1) : void
      {
         var _loc8_:class_84 = param1.method_98;
         var _loc9_:String = this.method_180(_loc8_,this.var_555);
         var _loc10_:class_100 = class_47.method_29.method_44(_loc8_);
         if(!_loc10_ || this.var_75[_loc9_])
         {
            return;
         }
         var _loc11_:class_1294 = new class_1294(_loc10_.name_6,param2,param3,param4,param5,param6);
         _loc11_.method_890 = param7;
         _loc11_.method_66();
         this.var_75[_loc9_] = _loc11_;
      }
      
      private final function method_180(param1:class_84, param2:int) : String
      {
         var _loc3_:String = class_177.method_90(param1);
         var _loc4_:String = param2.toString();
         return _loc3_ + "_" + _loc4_;
      }
      
      public final function method_71(param1:class_84, param2:int, param3:Boolean = false) : void
      {
         var _loc4_:String = this.method_180(param1,param2);
         var _loc5_:class_1279 = this.var_75[_loc4_] as class_1279;
         if(_loc5_)
         {
            if(!param3)
            {
               _loc5_.method_71();
            }
            delete this.var_75[_loc4_];
         }
      }
      
      private final function method_2299(param1:class_1305) : void
      {
         var _loc2_:class_84 = param1.method_98;
         var _loc3_:String = this.method_180(_loc2_,param1.method_236);
         var _loc4_:class_100 = class_47.method_29.method_44(_loc2_);
         var _loc5_:class_1303 = this.var_75[_loc3_] as class_1303;
         if(_loc5_)
         {
            _loc5_.method_77(_loc4_);
            return;
         }
         _loc5_ = new class_1303(_loc4_);
         _loc5_.method_66();
         this.var_75[_loc3_] = _loc5_;
      }
      
      private final function method_1754(param1:class_1305) : void
      {
         var _loc3_:class_1284 = null;
         var _loc2_:class_100 = class_47.method_29.method_44(param1.method_98);
         if(_loc2_ != null)
         {
            _loc3_ = _loc2_ as class_1284;
            _loc3_.method_59(new class_968(class_1302.const_417,class_1301.const_1169));
         }
      }
      
      private final function method_345(param1:class_84, param2:Sprite, param3:String, param4:String, param5:Boolean = false, param6:int = 12) : void
      {
         var _loc7_:String = this.method_180(param1,this.var_555);
         var _loc8_:class_1280 = this.var_75[_loc7_] as class_1280;
         if(_loc8_)
         {
            return;
         }
         _loc8_ = new class_1286(param2,param3,param4,param6,param5);
         _loc8_.method_66();
         if(!param5)
         {
            this.var_75[_loc7_] = _loc8_;
         }
      }
      
      private final function method_1964(param1:class_84) : void
      {
         var _loc2_:String = this.method_180(param1,this.var_555);
         var _loc3_:class_100 = class_47.method_29.method_44(param1);
         var _loc4_:class_1280 = this.var_75[_loc2_] as class_1280;
         if(_loc4_)
         {
            return;
         }
         _loc4_ = new class_1295(_loc3_.method_230(),class_123.const_334,"elemental_medium",this.var_555);
         _loc4_.method_66();
         this.var_75[_loc2_] = _loc4_;
      }
      
      private final function method_1641(param1:class_1305, param2:String, param3:int) : void
      {
         var _loc4_:class_84 = param1.method_98;
         var _loc5_:String = this.method_180(_loc4_,param1.method_236);
         if(this.var_75[_loc5_])
         {
            return;
         }
         var _loc6_:class_100 = class_47.method_29.method_44(_loc4_);
         var _loc7_:class_1292 = new class_1292(_loc6_.method_225(),param2,param3);
         _loc7_.method_66();
         this.var_75[_loc5_] = _loc7_;
      }
      
      private final function method_2794(param1:class_525) : void
      {
         var _loc2_:class_100 = class_47.method_29.method_44(param1.name_4);
         if(!_loc2_)
         {
            return;
         }
         _loc2_.method_89(_loc2_.method_33.var_101);
         _loc2_.method_331(_loc2_.method_33.var_190);
         this.method_405(_loc2_,param1);
         if(!class_1238.method_421())
         {
            return;
         }
         var _loc3_:Sprite = _loc2_.method_134();
         var _loc4_:String = this.method_180(param1.name_4,param1.var_58);
         var _loc5_:class_1289 = this.var_75[_loc4_] as class_1289;
         if(_loc5_ && !_loc5_.method_280())
         {
            return;
         }
         _loc5_ = new class_1289(_loc3_,class_123.method_27(class_123.const_175),class_123.const_175,_loc2_.name_6,param1.var_588,class_122.method_192(255,255,255,0,255,0),0.7);
         this.var_75[_loc4_] = _loc5_;
         _loc5_.method_66();
         _loc5_.method_231.method_279 = 200;
         _loc5_.method_231.var_463 = 110;
         _loc5_.method_231.var_484 = 100;
         class_47.method_24.method_39.method_61(_loc5_.method_231.method_125,false);
      }
      
      private final function method_567(param1:class_1305, param2:String, param3:int = -1, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = false) : class_1306
      {
         var _loc12_:class_1306 = null;
         var _loc7_:class_84 = param1.method_98;
         var _loc8_:String = this.method_180(_loc7_,param1.method_236);
         var _loc9_:class_100 = class_47.method_29.method_44(_loc7_);
         var _loc10_:Sprite = !!param5?_loc9_.method_225():_loc9_.method_230();
         if(this.var_75[_loc8_])
         {
            _loc12_ = this.var_75[_loc8_] as class_1306;
            if(_loc12_.name_69 == null)
            {
               return _loc12_;
            }
            _loc10_.addChild(_loc12_.name_69);
            _loc12_.name_69.play();
            return _loc12_;
         }
         var _loc11_:class_1306 = new class_1306(_loc10_,param2,param3,param4,param6);
         _loc11_.method_66();
         if(!param6)
         {
            this.var_75[_loc8_] = _loc11_;
         }
         return _loc11_;
      }
      
      private final function method_1013(param1:class_525, param2:String, param3:int = -1, param4:Number = 1.0) : void
      {
         var clip:class_336 = null;
         var timer:Timer = null;
         var m:class_525 = param1;
         var id:String = param2;
         var finisherType:int = param3;
         var alpha:Number = param4;
         var swfFinisher:SWFFinisher = getSWFFinisher(finisherType,this.method_1013,m,id,finisherType,alpha);
         if(swfFinisher == null)
         {
            return;
         }
         var ship:class_100 = class_47.method_29.method_44(m.name_4);
         if(!ship)
         {
            return;
         }
         var effect:MovieClip = swfFinisher.getEmbeddedMovieClip(id,true);
         clip = new class_336(effect,effect.name);
         var damage:int = m.var_139.var_146;
         var voodooShieldDamage:int = m.var_139.var_107;
         timer = new Timer(m.var_588,1);
         clip.name = this.var_555.toString();
         clip.alpha = alpha;
         ship.method_442(clip);
         clip.gotoAndPlay(1);
         timer.addEventListener(TimerEvent.TIMER_COMPLETE,function(param1:TimerEvent):void
         {
            var event:TimerEvent = param1;
            timer.removeEventListener(TimerEvent.TIMER_COMPLETE,arguments["callee"]);
            TweenLite.to(clip,0.5,{
               "alpha":0,
               "onComplete":function():void
               {
                  if(clip.parent)
                  {
                     clip.parent.removeChild(clip);
                  }
               }
            });
         });
         timer.start();
         if(damage > 0 || voodooShieldDamage > 0)
         {
            this.method_405(ship,m);
         }
      }
      
      private final function method_1790(param1:class_84, param2:int) : void
      {
         var _loc3_:String = this.method_180(param1,param2);
         var _loc4_:class_1300 = this.var_75[_loc3_] as class_1300;
         var _loc5_:class_100 = class_47.method_29.method_44(param1);
         if(_loc4_)
         {
            _loc4_.method_66();
            return;
         }
         _loc4_ = new class_1300(this,_loc5_.method_225(),param1,class_123.const_145);
         _loc4_.method_66();
         this.var_75[_loc3_] = _loc4_;
      }
      
      private final function method_405(param1:class_100, param2:class_525, param3:Boolean = true) : void
      {
         var _loc4_:int = param2.var_139.var_146;
         var _loc5_:int = param2.var_139.var_107;
         var _loc6_:class_216 = class_47.method_24.var_12.globalDisplayContainer;
         var _loc7_:Boolean = param1.method_33.method_52(class_51.var_21);
         if(_loc4_ >= 0)
         {
            param1.method_89(param2.var_118.var_146);
            if(_loc7_ && param3)
            {
               _loc6_.method_101(class_290.const_134).method_873 = true;
            }
         }
         if(_loc5_ >= 0)
         {
            param1.method_331(param2.var_118.var_107);
            if(_loc7_ && param3)
            {
               _loc6_.method_101(class_290.const_174).method_873 = true;
            }
         }
         class_1238.method_150(param1,_loc4_,_loc5_);
         if(_loc7_)
         {
            class_47.method_72.method_377();
            class_47.method_72.method_412();
            class_47.method_72.method_379();
         }
      }
      
      private final function method_2026(param1:class_1305) : void
      {
         var action:int = 0;
         var frameAction:int = 0;
         var event:class_1305 = param1;
         var kraken:class_1282 = class_47.method_29.method_44(event.method_98) as class_1282;
         if(kraken == null)
         {
            return;
         }
         if(kraken is class_1293)
         {
            action = class_1293.const_1332;
            frameAction = class_1293.const_1011;
         }
         else
         {
            action = class_1288.const_1751;
            frameAction = class_1288.const_1148;
         }
         kraken.method_500(action,function():void
         {
            class_47.method_24.method_39.method_1167(3,class_22.const_1114);
         },frameAction);
      }
      
      private final function method_2150(param1:Event) : void
      {
         this.method_760();
      }
      
      private final function method_1184(param1:class_56) : void
      {
         this.method_760();
      }
      
      private final function method_760() : void
      {
         this.method_2763();
         this.method_839();
      }
      
      private final function method_1819(param1:class_84) : void
      {
         var _loc3_:* = null;
         var _loc4_:class_1279 = null;
         var _loc2_:* = class_177.method_90(param1) + "_";
         for(_loc3_ in this.var_75)
         {
            if(_loc3_.indexOf(_loc2_) >= 0)
            {
               _loc4_ = this.var_75[_loc3_] as class_1279;
               _loc4_.method_71();
               delete this.var_75[_loc3_];
            }
         }
      }
      
      private final function method_2763() : void
      {
         var _loc1_:* = null;
         var _loc2_:class_1279 = null;
         for(_loc1_ in this.var_75)
         {
            _loc2_ = this.var_75[_loc1_] as class_1279;
            _loc2_.method_71();
            delete this.var_75[_loc1_];
         }
      }
      
      private final function method_1685(param1:class_14) : void
      {
         this.method_2342();
         this.method_839();
      }
      
      private final function method_2342() : void
      {
         var _loc1_:class_1279 = null;
         for each(_loc1_ in this.var_75)
         {
            _loc1_.method_71();
         }
         this.var_75 = new Dictionary();
      }
      
      public final function method_2355(param1:int, param2:class_84 = null) : Boolean
      {
         if(param2 == null)
         {
            param2 = class_51.var_21;
         }
         var _loc3_:String = this.method_180(param2,param1);
         return this.var_75[_loc3_] != null;
      }
      
      private final function method_2621(param1:class_14) : void
      {
         var _loc2_:class_531 = null;
         _loc2_ = param1 as class_531;
         var _loc3_:class_84 = _loc2_.name_4;
         this.method_1819(_loc3_);
      }
      
      private final function method_736(param1:class_14) : void
      {
         this.method_760();
      }
      
      private final function method_2609(param1:class_14) : void
      {
         var _loc2_:class_525 = param1 as class_525;
         var _loc3_:class_100 = class_47.method_29.method_44(_loc2_.name_4);
         if(!_loc3_)
         {
            return;
         }
         var _loc4_:class_173 = _loc3_.method_33;
         _loc4_.var_101 = _loc2_.var_118.var_146;
         _loc4_.var_190 = _loc2_.var_118.var_107;
         switch(_loc2_.var_58)
         {
            case class_1029.const_1289:
               this.method_1013(_loc2_,class_123.method_27(class_123.const_278),class_123.const_278,1);
               break;
            case class_1029.const_1083:
               this.method_2794(_loc2_);
               break;
            case class_1029.const_1007:
               this.method_405(_loc3_,_loc2_);
               this.method_1545(_loc2_.name_4,_loc2_.var_58,false);
               break;
            case class_1029.const_1354:
               this.method_405(_loc3_,_loc2_);
               this.method_775(_loc3_);
               break;
            case class_1029.const_654:
            case class_1029.const_671:
               this.method_405(_loc3_,_loc2_,false);
               break;
            case class_1029.const_1609:
               this.method_405(_loc3_,_loc2_);
               this.method_345(_loc2_.name_4,_loc3_.method_230(),"impact-elem-air","impact_elem_air",true);
               break;
            default:
               class_1238.method_150(_loc3_,_loc2_.var_139.var_146,_loc2_.var_139.var_107);
               const_3.warn("Unhandled effect " + _loc2_.var_58);
         }
      }
      
      private final function method_1853(param1:class_14) : void
      {
         var _loc2_:class_437 = param1 as class_437;
         switch(_loc2_.var_58)
         {
            case class_1029.const_1342:
               if(_loc2_.name_28)
               {
                  class_47.method_24.method_39.method_683(2,11368073,0.8);
                  break;
               }
               class_47.method_24.method_39.method_683();
               break;
            case class_1029.const_1311:
               if(_loc2_.name_28)
               {
                  class_328.method_21().method_892();
                  break;
               }
               class_328.method_21().method_571();
               break;
            case class_1029.const_1454:
               if(_loc2_.name_28)
               {
                  this.showKrakenInkCloudEffect();
                  return;
               }
               this.method_839();
               break;
            default:
               const_3.warn("Unhandled global effect " + _loc2_.var_58);
         }
      }
      
      public final function method_2757() : void
      {
         var _loc1_:* = null;
         var _loc2_:class_1299 = null;
         for(_loc1_ in this.var_75)
         {
            _loc2_ = this.var_75[_loc1_] as class_1299;
            if(_loc2_ != null)
            {
               if(_loc2_)
               {
                  _loc2_.method_71();
                  delete this.var_75[_loc1_];
               }
            }
         }
      }
   }
}
