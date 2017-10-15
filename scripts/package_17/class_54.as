package package_17
{
   import com.adobe.serialization.json.JSONToken;
   import com.adobe.serialization.json.JSONTokenType;
   import com.adobe.serialization.json.JSONTokenizer;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_1092;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_317;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.common.components.ShipSelectionWindow;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.target;
   import com.bigpoint.seafight.view.popups.common.BadgeLootIcon;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.LootIcon;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.event.EventPopupController;
   import com.bigpoint.seafight.view.popups.event.component.EventPopup;
   import com.bigpoint.seafight.view.popups.event.component.ToggleButtonGroup;
   import com.bigpoint.seafight.view.popups.event.modules.common.skins.NpcKillsModuleSkin;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.SaveInvalidReason;
   import com.bigpoint.seafight.view.popups.guildmenu.player.skins.GuildMenuIslandTowerListSkin;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.MemberRankAssignationVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.npcconversationpopup.vo.NpcConversationVo;
   import com.bigpoint.seafight.view.popups.reputation.ReputationPopup;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import com.bit101.components.ColorChooser;
   import com.greensock.TweenLite;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.describeType;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.effects.Parallel;
   import mx.events.CollectionEventKind;
   import mx.graphics.SolidColorStroke;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1475;
   import net.bigpoint.seafight.com.module.guild.class_476;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_10.class_18;
   import package_10.class_38;
   import package_103.class_525;
   import package_104.class_448;
   import package_105.class_369;
   import package_105.class_529;
   import package_118.class_1445;
   import package_118.class_539;
   import package_131.class_573;
   import package_14.class_118;
   import package_14.class_200;
   import package_14.class_220;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_157.class_896;
   import package_16.class_28;
   import package_166.class_963;
   import package_184.class_1135;
   import package_190.class_1168;
   import package_20.class_33;
   import package_20.class_982;
   import package_202.class_1238;
   import package_204.class_1289;
   import package_28.class_301;
   import package_28.class_311;
   import package_29.class_166;
   import package_3.class_324;
   import package_30.class_337;
   import package_32.class_64;
   import package_34.class_107;
   import package_34.class_169;
   import package_34.class_73;
   import package_36.class_100;
   import package_39.class_973;
   import package_41.class_330;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_1224;
   import package_46.class_975;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_214;
   import package_5.class_300;
   import package_5.class_43;
   import package_5.class_984;
   import package_51.class_148;
   import package_51.class_974;
   import package_52.class_168;
   import package_52.class_303;
   import package_52.class_306;
   import package_52.class_309;
   import package_52.class_310;
   import package_52.class_312;
   import package_52.class_313;
   import package_52.class_314;
   import package_52.class_327;
   import package_54.class_162;
   import package_54.class_319;
   import package_56.class_170;
   import package_6.class_14;
   import package_7.class_305;
   import package_7.class_329;
   import package_72.class_203;
   import package_89.class_1378;
   import package_89.class_1379;
   import package_9.class_76;
   import package_9.class_91;
   import package_90.class_308;
   import package_90.class_318;
   import package_91.class_321;
   import package_95.class_341;
   import package_98.class_346;
   import package_98.class_777;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.effects.Rotate3D;
   import spark.events.IndexChangeEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Line;
   
   use namespace mx_internal;
   
   public final class class_54 extends EventDispatcher
   {
      
      private static const const_3:ILogger = Log.getLogger("GlobalActionsControl");
      
      public static const const_40:String = "_switchBack";
      
      public static const const_700:String = "switchOnOffRepairInfo";
      
      public static const const_877:String = const_700 + const_40;
      
      public static const const_1105:String = "switchOnOffReload";
      
      public static const const_1558:String = "switchOnOffSmoothMap";
      
      public static const const_883:String = const_1105 + const_40;
      
      public static const const_622:String = "snd_effects";
      
      public static const const_771:String = const_622 + const_40;
      
      public static const const_479:String = "snd_ambient";
      
      public static const const_734:String = const_479 + const_40;
      
      public static const const_2729:String = "switchOnOffBadMapPreLoad";
      
      public static const const_949:String = "openBallBuyMenu";
      
      public static const const_1574:String = "buyBall";
      
      public static const const_1592:String = "openBuyInvItem";
      
      public static const const_1267:String = "buyInvItem";
      
      public static const const_1003:String = "openHarpoonBuyMenu";
      
      public static const const_1491:String = "buyHarpoon";
      
      public static const const_1467:String = "openFireworkBuyMenu";
      
      public static const const_1758:String = "buyFirework";
      
      public static const const_1310:String = "openActionItemBuyMenu";
      
      public static const const_1564:String = "buyActionItem";
      
      public static const const_227:String = "switchOnOffEffectShip";
      
      public static const const_617:String = "onWeaponsMateClick";
      
      public static const const_651:String = "onSailMakerClick";
      
      public static const const_656:String = "onRocketMasterClick";
      
      private static var name_55:class_54;
      
      private static const const_1495:String = "skipTutorial";
      
      public static const const_1156:String = "openRegistration";
      
      public static const const_855:String = "switchOnOffMonsterAnimation";
      
      public static const const_1583:String = "closeCustomMessageBox";
      
      public static const const_428:String = "switchOnOffMyPet";
      
      public static const const_585:String = "switchOnOffTheirPet";
      
      public static const const_1256:String = "switchOnOffWaves";
      
      public static const const_1131:String = "switchOnOffClouds";
      
      public static const const_1084:String = "switchOnOffBirds";
      
      public static const const_1025:String = "switchOnOffFish";
      
      public static const const_939:String = "switchOnOffDolphins";
      
      public static const const_978:String = "switchOnOffWater";
      
      public static const const_1167:String = "settingsLoaded";
      
      private static var var_125:class_28;
       
      
      private var var_2238:class_322;
      
      public function class_54(param1:Function)
      {
         super();
         if(param1 !== method_976)
         {
            throw new class_166();
         }
         class_58.method_21().method_82("init global actions control");
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_54
      {
         if(name_55 == null)
         {
            name_55 = new class_54(method_976);
            name_55.var_2238 = new class_322();
         }
         return name_55;
      }
      
      public final function method_877(param1:class_28) : void
      {
         var_125 = param1;
      }
      
      public final function method_129(param1:class_148) : void
      {
         var _loc4_:Array = null;
         var _loc5_:class_328 = null;
         var _loc6_:class_100 = null;
         var _loc7_:Object = null;
         var _loc8_:class_100 = null;
         var _loc9_:Object = null;
         var _loc10_:ShipSelectionWindow = null;
         var _loc11_:ShipSelectionWindow = null;
         var _loc12_:class_100 = null;
         var _loc13_:class_100 = null;
         if(class_47.method_51.method_141(class_76.const_136))
         {
            return;
         }
         var _loc2_:UserInterface = class_47.method_24.var_12;
         var _loc3_:String = param1.name_22.name_5;
         switch(_loc3_)
         {
            case const_949:
               _loc2_.subMenuContainer.switchMenu(class_214.const_69,true);
               _loc2_.actionsBar.method_69(class_150.const_109).method_70(false);
               _loc2_.subMenuContainer.switchMenu(class_214.const_149);
               break;
            case const_1574:
               _loc2_.subMenuContainer.switchMenu(class_214.const_149,true);
               (_loc2_.subMenuContainer.getMenu(class_214.const_149) as class_314).method_487(param1);
               break;
            case const_1003:
               _loc2_.subMenuContainer.switchMenu(class_214.const_17,true);
               _loc2_.actionsBar.method_69(class_150.const_113).method_70(false);
               _loc2_.subMenuContainer.switchMenu(class_214.const_135);
               break;
            case const_1491:
               _loc2_.subMenuContainer.switchMenu(class_214.const_135,true);
               (_loc2_.subMenuContainer.getMenu(class_214.const_135) as class_312).method_487(param1);
               break;
            case const_1467:
               _loc2_.subMenuContainer.switchMenu(class_214.const_26,true);
               _loc2_.actionsBar.method_69(class_150.const_124).method_70(false);
               _loc2_.subMenuContainer.switchMenu(class_214.const_132);
               break;
            case const_1758:
               _loc2_.subMenuContainer.switchMenu(class_214.const_132,true);
               (_loc2_.subMenuContainer.getMenu(class_214.const_132) as class_327).method_487(param1);
               break;
            case const_1592:
               _loc2_.subMenuContainer.switchMenu(class_214.const_72,true);
               _loc2_.actionsBar.method_69(class_150.const_319).method_70(false);
               _loc2_.subMenuContainer.switchMenu(class_214.const_229);
               break;
            case const_1267:
               _loc2_.subMenuContainer.switchMenu(class_214.const_229,true);
               (_loc2_.subMenuContainer.getMenu(class_214.const_229) as class_303).method_487(param1);
               break;
            case const_1310:
               _loc2_.subMenuContainer.switchMenu(class_214.const_23,true);
               _loc2_.actionsBar.method_69(class_150.const_128).method_70(false);
               _loc2_.subMenuContainer.switchMenu(class_214.const_147);
               break;
            case const_1564:
               _loc2_.subMenuContainer.switchMenu(class_214.const_147,true);
               (_loc2_.subMenuContainer.getMenu(class_214.const_147) as class_309).method_487(param1);
               break;
            case const_883:
               if(class_47.method_29.method_75)
               {
                  class_47.method_29.method_75.method_527();
                  break;
               }
               break;
            case "options":
               class_47.method_24.var_12.subMenuContainer.switchSubMenu("options");
               break;
            case "options_switchBack":
               class_29.method_21().method_446();
               class_47.method_24.var_12.subMenuContainer.switchSubMenu("options");
               break;
            case "toMyShip":
               class_37.method_21().method_525(class_47.method_29.method_75.name_6);
               class_47.method_49.focus = null;
               this.dispatchEvent(new Event("toMyShip"));
               break;
            case "commonMapChange":
               class_147.method_21().method_843(class_47.method_72.var_1974);
               break;
            case "abortLogout":
               class_325.method_21().method_1479();
               var_125.method_31(class_329.name_3);
               break;
            case "voodooBackChange":
            case "leavemap":
               this.method_1687();
               break;
            case "abortVoodooJump":
               class_304.method_21().method_987();
               break;
            case "abortBossMapChange":
               break;
            case "attack":
            case "attack_switchBack":
               class_47.method_48.method_572();
               break;
            case "attackStop":
            case "attackStop_switchBack":
               class_47.method_48.method_1159();
               break;
            case class_150.const_615:
               this.method_1713();
               break;
            case "board_switchBack":
               class_47.method_48.method_1159();
               break;
            case class_150.const_109:
               this.method_420(class_214.const_69,_loc3_);
               break;
            case "changeCannonBalls_switchBack":
               _loc2_.subMenuContainer.switchMenu(class_214.const_69,true);
               break;
            case class_150.const_113:
               this.method_420(class_214.const_17,_loc3_);
               break;
            case "changeHarpoons_switchBack":
               _loc2_.subMenuContainer.switchMenu(class_214.const_17,true);
               break;
            case class_150.const_124:
               this.method_420(class_214.const_26,_loc3_);
               break;
            case "fireworks_switchBack":
               _loc2_.subMenuContainer.switchMenu(class_214.const_26,true);
               break;
            case class_150.const_261:
               this.method_420(class_214.const_38,_loc3_);
               break;
            case "voodoo_switchBack":
               _loc2_.subMenuContainer.switchMenu(class_214.const_38,true);
               break;
            case class_150.const_128:
               this.method_420(class_214.const_23,_loc3_);
               break;
            case "actionItems_switchBack":
               _loc2_.subMenuContainer.switchMenu(class_214.const_23,true);
               break;
            case class_150.const_319:
               this.method_420(class_214.const_72,_loc3_);
               break;
            case "inventory_switchBack":
               _loc2_.subMenuContainer.switchMenu(class_214.const_72,true);
               break;
            case "repair":
               this.method_1699();
               break;
            case "repair_switchBack":
               class_305.name_3.name_5 = class_305.const_1353;
               var_125.method_31(class_305.name_3);
               class_47.method_24.var_12.actionsBar.method_69(class_150.const_264).method_920 = false;
               break;
            case "changeBallTo":
               this.method_2414(param1.name_22);
               break;
            case "changeHarpTo":
               this.method_2573(param1.name_22);
               break;
            case "doFireworks":
               this.method_1852(param1.name_22);
               break;
            case "useActItm":
               this.method_2753(param1.name_22);
               break;
            case "useItemOnTarget":
               this.method_2618(param1.name_22);
               break;
            case "voodooMapChangeTo":
               if(class_47.method_51.method_489())
               {
                  return;
               }
               if(class_47.method_29.method_56.var_712)
               {
                  class_170.method_188("maat_noaction",[]);
                  break;
               }
               this.method_1802(param1.name_22);
               break;
            case "changeActItmTo_switchBack":
               this.method_1298(param1.name_22,false);
               break;
            case "changeActItmTo":
               this.method_1298(param1.name_22,true);
               break;
            case "showRanges":
               class_318.name_3.name_5 = class_317.const_1174;
               var_125.method_31(class_318.name_3);
               class_47.method_24.var_12.actionsBar.method_69(class_150.const_124).method_70(false);
               class_47.method_24.var_12.subMenuContainer.switchSubMenu("all");
               break;
            case const_651:
               var_125.method_31(new class_330(class_300.const_546,false));
               break;
            case const_651 + "_switchBack":
               var_125.method_31(new class_330(class_300.const_546,true));
               break;
            case const_656:
               var_125.method_31(new class_330(class_300.const_608,false));
               break;
            case const_656 + "_switchBack":
               var_125.method_31(new class_330(class_300.const_608,true));
               break;
            case const_617:
               var_125.method_31(new class_330(class_300.const_740,false));
               break;
            case const_617 + "_switchBack":
               var_125.method_31(new class_330(class_300.const_740,true));
               break;
            case "showGlity":
            case "showGlity_switchBack":
               class_47.method_24.var_12.miniMap.method_768(false);
               break;
            case "showShips":
            case "showShips_switchBack":
               class_47.method_24.var_12.miniMap.method_768(true);
               break;
            case "showWorldMap":
            case "showWorldMap_switchBack":
               class_47.method_24.var_12.miniMap.method_1303();
               break;
            case "navigation":
            case "navigation_switchBack":
               class_47.method_24.var_12.miniMap.method_632.method_1034();
               break;
            case "navigationTo":
               this.method_1185();
               break;
            case "swapToGeneral":
               (class_47.method_24.var_12.subMenuContainer.getSubMenuByName("options") as class_168).method_553("general");
               break;
            case "swapToControls":
               (class_47.method_24.var_12.subMenuContainer.getSubMenuByName("options") as class_168).method_553("controls");
               break;
            case "swapToSound":
               (class_47.method_24.var_12.subMenuContainer.getSubMenuByName("options") as class_168).method_553("sounds");
               break;
            case "swapToGraphics":
               (class_47.method_24.var_12.subMenuContainer.getSubMenuByName("options") as class_168).method_553("graphics");
               break;
            case "switchConfigMode":
               class_47.method_24.var_12.enterConfigMode();
               break;
            case "setUIDefault":
               class_29.method_21().method_446();
               class_47.method_24.method_122.method_1289();
               class_47.method_24.var_12.subMenuContainer.switchSubMenu("options");
               class_47.method_112.method_1588();
               class_47.method_24.var_12.restoreDefaultUIConfig();
               _loc4_ = class_33.name_12.method_41.method_1430(ShipSelectionWindow);
               for each(_loc10_ in _loc4_)
               {
                  if(_loc10_)
                  {
                     _loc11_ = _loc10_ as ShipSelectionWindow;
                     _loc11_.enforceUnlocking();
                  }
               }
               class_33.name_12.method_41.method_1426();
               break;
            case "storeOptions":
               class_47.method_112.method_2674();
               class_29.method_21().method_446();
               class_203.name_21(SoundEffectType.MENU_CLOSE);
               class_47.method_24.var_12.subMenuContainer.switchSubMenu("options",true);
               class_37.method_21().method_1341();
               class_47.method_48.var_1979 = class_49.method_42(class_43.const_599);
               _loc5_ = class_328.method_21();
               if(_loc5_.var_1449)
               {
                  _loc5_.method_419();
                  break;
               }
               break;
            case "closeOptMen":
               class_29.method_21().method_446();
               class_47.method_24.var_12.subMenuContainer.switchSubMenu("options");
               break;
            case const_700:
            case const_877:
               class_47.method_72.method_379();
               break;
            case "switchTooltips":
               class_64.method_21().var_1927 = true;
               break;
            case "switchTooltips_switchBack":
               class_64.method_21().var_1927 = false;
               break;
            case "switchScrollBars":
               class_47.method_24.var_12.mapScroll.method_467(true);
               break;
            case "switchScrollBars_switchBack":
               class_47.method_24.var_12.mapScroll.method_467(false);
               break;
            case class_326.const_875:
               class_326.method_696 = true;
               break;
            case class_326.const_875 + const_40:
               class_326.method_696 = false;
               break;
            case class_326.const_1229:
               class_326.method_808 = true;
               break;
            case class_326.const_1229 + const_40:
               class_326.method_808 = false;
               break;
            case class_326.const_811:
               class_326.method_577 = true;
               break;
            case class_326.const_811 + const_40:
               class_326.method_577 = false;
               break;
            case class_326.const_830:
               class_326.method_557 = true;
               break;
            case class_326.const_830 + const_40:
               class_326.method_557 = false;
               break;
            case class_326.const_870:
               class_326.method_674 = true;
               break;
            case class_326.const_870 + const_40:
               class_326.method_674 = false;
               break;
            case class_326.const_828:
               class_326.method_625 = true;
               break;
            case class_326.const_828 + const_40:
               class_326.method_625 = false;
               break;
            case const_227:
               if(!class_220.method_280(class_220.const_214))
               {
                  return;
               }
               _loc6_ = class_47.method_29.method_75;
               _loc7_ = class_47.method_29.method_282();
               for each(_loc12_ in _loc7_)
               {
                  _loc12_.method_184();
               }
               _loc6_.method_184();
               break;
            case const_227 + const_40:
               if(!class_220.method_280(class_220.const_214))
               {
                  return;
               }
               _loc8_ = class_47.method_29.method_75;
               _loc9_ = class_47.method_29.method_282();
               for each(_loc13_ in _loc9_)
               {
                  _loc13_.method_184(true);
               }
               _loc8_.method_184(true);
               break;
            case const_585:
               class_47.method_29.method_949();
               break;
            case const_585 + const_40:
               class_47.method_29.method_2037();
               break;
            case const_428:
               class_47.method_29.method_819();
               break;
            case const_428 + const_40:
               class_47.method_29.method_1640();
               break;
            case const_855:
               class_326.var_433 = false;
               break;
            case const_855 + const_40:
               class_326.var_433 = true;
               break;
            case const_978:
               class_307.method_21().var_1134 = true;
               class_307.method_21().method_238();
               break;
            case const_978 + const_40:
               class_307.method_21().var_1134 = false;
               class_307.method_21().method_238();
               break;
            case const_1256:
               class_307.method_21().var_1195 = true;
               class_307.method_21().method_238();
               break;
            case const_1256 + const_40:
               class_307.method_21().var_1195 = false;
               class_307.method_21().method_238();
               break;
            case const_1131:
               class_307.method_21().var_1443 = true;
               class_307.method_21().method_731();
               break;
            case const_1131 + const_40:
               class_307.method_21().var_1443 = false;
               class_307.method_21().method_1480();
               break;
            case const_1084:
               class_307.method_21().var_1305 = true;
               class_307.method_21().method_238();
               break;
            case const_1084 + const_40:
               class_307.method_21().var_1305 = false;
               class_307.method_21().method_238();
               break;
            case const_1025:
               class_307.method_21().var_1407 = true;
               class_307.method_21().method_238();
               break;
            case const_1025 + const_40:
               class_307.method_21().var_1407 = false;
               class_307.method_21().method_238();
               break;
            case const_939:
               class_307.method_21().var_1806 = true;
               class_307.method_21().method_238();
               break;
            case const_939 + const_40:
               class_307.method_21().var_1806 = false;
               class_307.method_21().method_238();
               break;
            case const_622:
               class_203.name_12.method_516((class_47.method_24.var_12.subMenuContainer.getMenu(class_214.const_252) as class_168).method_633.method_1283());
               break;
            case const_771:
               class_203.name_12.method_516(0);
               break;
            case const_479:
               class_203.name_12.method_517((class_47.method_24.var_12.subMenuContainer.getMenu(class_214.const_252) as class_168).method_633.method_1320());
               break;
            case const_734:
               class_203.name_12.method_517(0);
               break;
            case const_1495:
               class_323.method_21().method_547(class_323.const_1079);
               break;
            case const_1156:
               break;
            case const_1583:
               class_47.method_24.var_12.messageBoxContainer.method_348((param1.currentTarget as DisplayObject).parent,class_310);
               break;
            case const_1167:
               class_307.method_21().method_2356();
               break;
            default:
               const_3.warn("Unhandled action:" + _loc3_ + " id: " + param1.name_22.name_7);
         }
      }
      
      protected final function method_420(param1:int, param2:String) : void
      {
         var _loc3_:UserInterface = class_47.method_24.var_12;
         var _loc4_:class_150 = _loc3_.actionsBar;
         _loc4_.method_69(class_150.const_109).method_70(false);
         _loc4_.method_69(class_150.const_113).method_70(false);
         _loc4_.method_69(class_150.const_261).method_70(false);
         _loc4_.method_69(class_150.const_128).method_70(false);
         _loc4_.method_69(class_150.const_319).method_70(false);
         _loc4_.method_69(class_150.const_124).method_70(false);
         _loc4_.method_69(param2).method_70(true);
         _loc3_.subMenuContainer.switchMenu(param1);
      }
      
      public final function method_3027(param1:String) : void
      {
         var _loc2_:class_148 = new class_148(class_148.const_13);
         _loc2_.name_22.name_5 = param1;
         this.method_129(_loc2_);
      }
      
      private final function method_1713() : void
      {
         var _loc1_:class_98 = class_47.method_48.method_143;
         if(_loc1_ == null || !(_loc1_ is class_100))
         {
            return;
         }
         class_321.name_3.name_4 = class_47.method_48.method_143.method_104();
         var_125.method_31(class_321.name_3);
      }
      
      private final function method_2618(param1:class_320) : void
      {
         var _loc7_:class_319 = null;
         var _loc2_:UserInterface = class_47.method_24.var_12;
         var _loc3_:class_306 = _loc2_.subMenuContainer.getMenu(class_214.const_23) as class_306;
         var _loc4_:Vector.<class_319> = _loc3_.method_502;
         var _loc5_:int = _loc4_.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc7_ = _loc4_[_loc6_] as class_319;
            if(!(_loc7_.method_58().name_7 != param1.name_7 || !_loc7_.method_374))
            {
               class_47.method_48.method_996(param1.name_7);
               _loc2_.subMenuContainer.switchMenu(class_214.const_23,true);
               _loc2_.actionsBar.method_69(class_150.const_128).method_70(false);
            }
            _loc6_++;
         }
      }
      
      private final function method_1852(param1:class_320) : void
      {
         var _loc6_:class_319 = null;
         var _loc2_:UserInterface = class_47.method_24.var_12;
         var _loc3_:class_313 = _loc2_.subMenuContainer.getMenu(class_214.const_26) as class_313;
         var _loc4_:Vector.<class_319> = _loc3_.method_502;
         var _loc5_:int = _loc4_.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc5_)
         {
            _loc6_ = _loc4_[_loc7_] as class_319;
            if(_loc6_.method_58().name_7 == param1.name_7 && _loc6_.method_374)
            {
               class_47.method_48.method_996(int(param1.name_7));
               _loc2_.subMenuContainer.switchMenu(class_214.const_26,true);
               _loc2_.actionsBar.method_69(class_150.const_124).method_70(false);
            }
            _loc7_++;
         }
      }
      
      private final function method_2753(param1:class_320) : void
      {
         var _loc2_:UserInterface = class_47.method_24.var_12;
         _loc2_.subMenuContainer.switchMenu(class_214.const_26,true);
         _loc2_.actionsBar.method_69(class_150.const_124).method_70(false);
         class_318.name_3.name_5 = param1.name_7;
         var_125.method_31(class_318.name_3);
      }
      
      private final function method_2414(param1:class_320) : void
      {
         this.var_2238.method_2549(param1,this.changeCannonBallsDelayed);
      }
      
      private final function changeCannonBallsDelayed(param1:class_320) : void
      {
         var _loc2_:UserInterface = class_47.method_24.var_12;
         class_47.method_72.method_689(param1.name_7);
         _loc2_.subMenuContainer.switchMenu(class_214.const_69,true);
         _loc2_.actionsBar.method_69(class_150.const_109).method_70(false);
         class_107.name_3.method_95(class_43.const_742,param1.name_7);
         dispatchEvent(new class_301());
      }
      
      private final function method_2573(param1:class_320) : void
      {
         var _loc2_:UserInterface = class_47.method_24.var_12;
         class_47.method_72.method_682(param1.name_7);
         _loc2_.subMenuContainer.switchMenu(class_214.const_17,true);
         _loc2_.actionsBar.method_69(class_150.const_113).method_70(false);
         class_107.name_3.method_95(class_43.const_847,param1.name_7);
         dispatchEvent(new class_311());
      }
      
      private final function method_1298(param1:class_320, param2:Boolean = true) : void
      {
         var action:class_320 = param1;
         var activate:Boolean = param2;
         var ui:UserInterface = class_47.method_24.var_12;
         var itemId:int = action.name_7;
         ui.subMenuContainer.switchMenu(class_214.const_23,true);
         ui.actionsBar.method_69(class_150.const_128).method_70(false);
         switch(itemId)
         {
            case class_317.const_1099:
               class_47.method_24.var_12.miniMap.method_1160(function(param1:int):void
               {
                  class_308.name_3.name_11 = param1;
                  var_125.method_31(class_308.name_3);
               });
               return;
            case class_317.const_690:
               if(activate)
               {
                  class_324.method_1803(itemId,3000);
                  break;
               }
         }
         class_318.name_3.name_5 = itemId;
         var_125.method_31(class_318.name_3);
      }
      
      private final function method_1802(param1:class_320) : void
      {
         var _loc2_:UserInterface = class_47.method_24.var_12;
         _loc2_.subMenuContainer.switchMenu(class_214.const_38,true);
         _loc2_.actionsBar.method_69(class_150.const_261).method_70(false);
         if(class_47.method_51.method_141(class_76.const_191))
         {
            return;
         }
         class_147.method_21().method_843(int(param1.name_7));
      }
      
      private final function method_1687() : void
      {
         class_47.method_51.method_486();
         class_147.method_21().method_843(class_47.method_51.method_175());
      }
      
      public final function method_1185() : void
      {
         var _loc1_:Array = class_47.method_24.var_12.miniMap.method_632.method_2007();
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:String = _loc1_[1];
         if(_loc2_.length < 2)
         {
            return;
         }
         var _loc3_:Array = class_118.method_2381(_loc1_[0],_loc1_[1]);
         class_169.name_3.method_627(_loc3_[0],_loc3_[1]);
         class_47.method_24.var_12.miniMap.method_632.method_1034();
      }
      
      private final function method_1699() : void
      {
         var _loc1_:class_174 = class_47.method_29.method_56;
         var _loc2_:int = _loc1_.var_101;
         if(_loc2_ > _loc1_.var_182)
         {
            return;
         }
         class_305.name_3.name_5 = class_305.const_1023;
         var_125.method_31(class_305.name_3);
         class_47.method_24.var_12.actionsBar.method_69(class_150.const_264).method_920 = true;
         class_47.method_48.method_213();
      }
   }
}
