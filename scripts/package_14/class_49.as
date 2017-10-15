package package_14
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.display.utils.onCooldownToolTip;
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.vo.KeysVO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.event.modules.faction.getFactionTeamName;
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.FactionPhaseRankingItem;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.GroupMapIcon;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMenuMembersTabVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.MateysListItemVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPresetsVo;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_112;
   import com.bigpoint.seafight.view.userInterface.class_149;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.class_207;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.presets.PresetComboBoxData;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.inventory.GemLevelsComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.timer.TimerItem;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import com.greensock.TweenLite;
   import com.greensock.easing.Sine;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.net.LocalConnection;
   import flash.system.Capabilities;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.events.ToolTipEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.gems.class_775;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import net.bigpoint.seafight.com.module.guild.class_739;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_107.class_693;
   import package_110.class_390;
   import package_110.class_856;
   import package_111.class_742;
   import package_116.class_405;
   import package_119.class_1511;
   import package_121.class_841;
   import package_123.class_1032;
   import package_123.class_837;
   import package_15.class_48;
   import package_152.class_668;
   import package_16.class_28;
   import package_17.class_54;
   import package_171.class_1316;
   import package_20.class_33;
   import package_205.class_1353;
   import package_208.class_1585;
   import package_209.class_1363;
   import package_210.class_1364;
   import package_210.class_1527;
   import package_216.class_1575;
   import package_23.class_42;
   import package_28.class_56;
   import package_29.class_166;
   import package_3.class_514;
   import package_34.class_107;
   import package_40.class_285;
   import package_41.class_93;
   import package_45.class_110;
   import package_47.class_522;
   import package_48.class_1534;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_984;
   import package_50.class_1120;
   import package_50.class_141;
   import package_51.class_148;
   import package_52.class_153;
   import package_52.class_167;
   import package_52.class_168;
   import package_52.class_287;
   import package_52.class_288;
   import package_52.class_289;
   import package_55.class_1009;
   import package_6.class_14;
   import package_72.class_203;
   import package_8.class_114;
   import package_89.class_1011;
   import package_92.class_336;
   import package_92.class_944;
   import package_95.class_341;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Image;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   public final class class_49 extends EventDispatcher
   {
      
      public static const const_3:ILogger = Log.getLogger("SettingsManager");
      
      public static const const_157:Boolean = false;
      
      public static const const_1001:String = "SettingsInit";
      
      public static const const_1107:String = "SettingsInitComplete";
      
      private static var name_55:class_49;
       
      
      private var var_1387:Dictionary;
      
      private var var_127:Dictionary;
      
      private var var_1038:Vector.<int>;
      
      private var var_609:Vector.<int>;
      
      public function class_49()
      {
         this.var_1038 = new Vector.<int>();
         this.var_609 = new Vector.<int>();
         super();
         if(name_55)
         {
            throw new class_166();
         }
         this.var_1387 = new Dictionary();
         this.var_127 = new Dictionary();
      }
      
      public static function method_42(param1:int) : Boolean
      {
         return Boolean(!!name_55.method_97(param1)?name_55.method_46(param1):name_55.method_103(param1));
      }
      
      public static function method_46(param1:int) : int
      {
         return !!name_55.method_97(param1)?int(name_55.method_46(param1)):int(name_55.method_103(param1));
      }
      
      public static function get name_3() : class_49
      {
         if(!name_55)
         {
            name_55 = new class_49();
         }
         return name_55;
      }
      
      public final function method_50(param1:int, param2:int) : void
      {
         if(const_157)
         {
            const_3.info("set default setting " + param1 + " => " + param2);
         }
         if(!this.method_97(param1))
         {
            this.var_127[param1] = param2;
         }
         this.var_1387[param1] = param2;
      }
      
      private final function method_422(param1:int) : void
      {
         if(param1 <= 0)
         {
            if(const_157)
            {
               const_3.error("invalid setting: \'" + param1 + "\'");
            }
         }
      }
      
      public final function method_263(param1:int) : Boolean
      {
         this.method_422(param1);
         return this.var_1387[param1] != null;
      }
      
      public final function method_103(param1:int) : int
      {
         this.method_422(param1);
         if(this.var_1387[param1] == null && const_157)
         {
            const_3.warn("Default setting \'" + param1 + "\' is not defined");
         }
         return this.var_1387[param1];
      }
      
      public final function method_95(param1:int, param2:int) : void
      {
         this.method_422(param1);
         if(const_157)
         {
            const_3.info("set setting " + param1 + " => " + param2);
         }
         this.var_127[param1] = param2;
      }
      
      public final function method_102(param1:int) : void
      {
         var _loc2_:int = 0;
         this.method_422(param1);
         if(param1 == 0)
         {
            return;
         }
         if(this.method_263(param1))
         {
            _loc2_ = this.method_103(param1);
            if(const_157)
            {
               const_3.info("reset setting to default: " + param1 + " => " + _loc2_);
            }
            this.var_127[param1] = _loc2_;
         }
         else if(this.var_127[param1] != null)
         {
            if(const_157)
            {
               const_3.info("clear setting \'" + param1 + "\'");
            }
            delete this.var_127[param1];
         }
         else if(const_157)
         {
            const_3.warn("nothing to clear for: " + param1);
         }
      }
      
      public final function method_46(param1:int) : int
      {
         this.method_422(param1);
         if(!this.method_97(param1) && const_157)
         {
            const_3.warn("Setting \'" + param1 + "\' is not defined");
         }
         return this.var_127[param1];
      }
      
      public final function method_97(param1:int) : Boolean
      {
         this.method_422(param1);
         return this.var_127[param1] != null;
      }
      
      public final function method_1647(param1:XML) : void
      {
         this.method_1878(param1);
         this.method_2289(param1);
         this.method_1856(param1);
         this.method_1796(param1);
         this.method_2646();
      }
      
      private final function method_1878(param1:XML) : void
      {
         var mapConfig:String = null;
         var zoom:String = null;
         var axnBar:String = null;
         var chat:String = null;
         var vertical:String = null;
         var info:String = null;
         var battle:String = null;
         var target:String = null;
         var slider:String = null;
         var dxml:XMLList = null;
         var vpxml:XMLList = null;
         var epxml:XMLList = null;
         var bpxml:XMLList = null;
         var gxml:XMLList = null;
         var config:XML = param1;
         mapConfig = "mapConfig";
         zoom = "zoomMenu";
         axnBar = "actionsBar";
         chat = "chat";
         vertical = "vertical";
         info = "infoIconContainer";
         battle = "battleInfoContainer";
         target = "targetInfoContainer";
         slider = "slider";
         this.method_50(class_43.const_114,int(config[mapConfig][0][zoom][slider][0].@orientation == vertical));
         this.method_50(class_43.const_381,config[mapConfig][0][zoom][slider][0].@slideDefault);
         this.method_50(class_43.const_531,int(config[axnBar][0].@vertical == vertical));
         this.method_50(class_43.const_548,config[info][0].@xPos);
         this.method_50(class_43.const_490,config[info][0].@yPos);
         this.method_50(class_43.const_549,config[target][0].@xPos);
         this.method_50(class_43.const_489,config[target][0].@yPos);
         this.method_50(class_43.const_597,config[battle][0].@xPos);
         this.method_50(class_43.const_589,config[battle][0].@yPos);
         this.method_50(class_43.const_539,0);
         this.method_50(class_43.const_535,0);
         this.method_50(class_43.const_107,config[chat][0].@width);
         this.method_50(class_43.const_192,config[chat][0].@height);
         this.method_50(class_43.const_353,0);
         this.method_50(class_43.const_232,0);
         this.method_50(class_43.const_295,0);
         this.method_50(class_43.const_337,0);
         if(class_12.var_104 == class_12.const_15)
         {
            return;
         }
         this.method_50(class_43.const_188,182);
         this.method_50(class_43.const_161,490);
         this.method_50(class_43.const_279,182);
         this.method_50(class_43.const_317,390);
         this.method_50(class_43.const_436,182);
         this.method_50(class_43.const_371,590);
         dxml = config["globalDisplays"]["globalDisplay"];
         var hpxml:XMLList = dxml.(@label == class_290.const_134);
         vpxml = dxml.(@label == class_290.const_174);
         epxml = dxml.(@label == class_290.const_206);
         bpxml = dxml.(@label == class_290.const_250);
         this.method_50(class_43.const_503,hpxml.@xPos);
         this.method_50(class_43.const_495,hpxml.@yPos);
         this.method_50(class_43.const_596,vpxml.@xPos);
         this.method_50(class_43.const_579,vpxml.@yPos);
         this.method_50(class_43.const_610,epxml.@xPos);
         this.method_50(class_43.const_578,epxml.@yPos);
         this.method_50(class_43.const_606,bpxml.@xPos);
         this.method_50(class_43.const_653,bpxml.@yPos);
         gxml = config["globalActionBtnContainer"]["globalActionBtn"].(@onAction == KeysVO.NAME_KEY_MAP_CENTER_SHIP);
         this.method_50(class_43.const_526,gxml.@xPos);
         this.method_50(class_43.const_601,gxml.@yPos);
         this.method_50(class_43.const_637,config[mapConfig][0][zoom][0].@xPos);
         this.method_50(class_43.const_580,config[mapConfig][0][zoom][0].@yPos);
         this.method_50(class_43.const_473,650);
         this.method_50(class_43.const_536,-10);
         this.method_50(class_43.const_532,config[axnBar][0].@xPos);
         this.method_50(class_43.const_465,config[axnBar][0].@yPos);
         this.method_50(class_43.const_569,config[chat][0].@xPos);
         this.method_50(class_43.const_675,config[chat][0].@yPos);
      }
      
      private final function method_2289(param1:XML) : void
      {
         var _loc2_:XMLList = param1["subMenuContainer"]["optionsMenu"]["controls"];
         this.method_152(_loc2_,class_43.const_800,KeysVO.NAME_KEY_UP);
         this.method_152(_loc2_,class_43.const_813,KeysVO.NAME_KEY_DOWN);
         this.method_152(_loc2_,class_43.const_785,KeysVO.NAME_KEY_LEFT);
         this.method_152(_loc2_,class_43.const_893,KeysVO.NAME_KEY_RIGHT);
         this.method_152(_loc2_,class_43.const_696,KeysVO.NAME_KEY_ATTACK);
         this.method_152(_loc2_,class_43.const_815,KeysVO.NAME_KEY_ABORT_ATTACK);
         this.method_152(_loc2_,class_43.const_838,KeysVO.NAME_KEY_SWITCH_ENEMY);
         this.method_152(_loc2_,class_43.const_730,KeysVO.NAME_KEY_SET_COURSE);
         this.method_152(_loc2_,class_43.const_716,KeysVO.NAME_KEY_BOARD);
         this.method_152(_loc2_,class_43.const_910,KeysVO.NAME_KEY_MAP_CENTER_SHIP);
         this.method_152(_loc2_,class_43.const_746,KeysVO.NAME_KEY_REPAIR);
         this.method_152(_loc2_,class_43.const_866,KeysVO.NAME_KEY_NAVIGATE);
         this.method_152(_loc2_,class_43.const_936,KeysVO.NAME_KEY_MENU_CANNONBALLS);
         this.method_152(_loc2_,class_43.const_921,KeysVO.NAME_KEY_MENU_HARPOONS);
         this.method_152(_loc2_,class_43.const_663,KeysVO.NAME_KEY_MENU_BONUSMAPS);
         this.method_152(_loc2_,class_43.const_873,KeysVO.NAME_KEY_MENU_ACTIONITEMS);
         this.method_152(_loc2_,class_43.const_914,KeysVO.NAME_KEY_MENU_FIREWORKS);
         this.method_152(_loc2_,class_43.const_694,KeysVO.NAME_KEY_PULL_MAP);
      }
      
      private final function method_152(param1:XMLList, param2:int, param3:String) : void
      {
         var knode:XMLList = null;
         var value:int = 0;
         var kxml:XMLList = param1;
         var setting:int = param2;
         var kname:String = param3;
         knode = kxml["keyAssignScrap"].(@id == kname);
         value = knode.@defaultKey;
         this.method_50(setting,value);
      }
      
      private final function method_1856(param1:XML) : void
      {
         var sxml:XMLList = null;
         var config:XML = param1;
         var strue:String = "true";
         sxml = config["subMenuContainer"]["optionsMenu"]["sounds"];
         var sliders:XMLList = sxml["slider"];
         var checks:XMLList = sxml["checkBox"];
         this.method_50(class_43.const_618,int(checks.(@onAction == "snd_effects").@defaultChecked == strue));
         this.method_50(class_43.const_590,sliders.(@target == "effects").@slideDefault);
         this.method_50(class_43.const_494,int(checks.(@onAction == "snd_ambient").@defaultChecked == strue));
         this.method_50(class_43.const_520,sliders.(@target == "ambient").@slideDefault);
      }
      
      private final function method_1796(param1:XML) : void
      {
         var chkbx:String = null;
         var gxml:XMLList = null;
         var config:XML = param1;
         chkbx = "checkBox";
         gxml = config["subMenuContainer"]["optionsMenu"]["graphics"];
         var sliders:XMLList = gxml["display"]["slider"];
         var echks:XMLList = gxml["elements"][chkbx];
         var achks:XMLList = gxml["animations"][chkbx];
         var nchks:XMLList = gxml["environment"][chkbx];
         this.method_50(class_43.const_376,class_286.const_105);
         this.method_50(class_43.const_737,1);
         this.method_50(class_43.const_781,1);
         this.method_50(class_43.const_848,sliders.(@target == class_168.const_756).@slideDefault);
         this.method_50(class_43.const_821,sliders.(@target == class_168.const_658).@slideDefault);
         this.method_146(echks,class_43.const_822,class_168.const_698);
         this.method_146(echks,class_43.const_749,class_168.const_741);
         this.method_146(echks,class_43.const_841,class_168.const_907);
         this.method_146(echks,class_43.const_712,class_168.const_874);
         this.method_146(achks,class_43.const_318,class_168.const_719);
         this.method_146(achks,class_43.const_682,class_168.const_857);
         this.method_146(achks,class_43.const_818,class_168.const_736);
         this.method_146(achks,class_43.const_839,class_168.const_714);
         this.method_146(achks,class_43.const_826,class_168.const_753);
         this.method_146(achks,class_43.const_647,class_168.const_795);
         this.method_146(achks,class_43.const_844,class_168.const_876);
         this.method_146(achks,class_43.const_575,class_168.const_678);
         this.method_146(achks,class_43.const_631,class_168.const_722);
         this.method_146(achks,class_43.const_253,class_168.const_885);
         this.method_146(nchks,class_43.const_524,class_168.const_820);
         this.method_146(nchks,class_43.const_584,class_168.const_668);
         this.method_146(nchks,class_43.const_476,class_168.const_926);
         this.method_146(nchks,class_43.const_501,class_168.const_728);
         this.method_146(nchks,class_43.const_600,class_168.const_687);
      }
      
      private final function method_146(param1:XMLList, param2:int, param3:String) : void
      {
         var chks:XMLList = param1;
         var s:int = param2;
         var id:String = param3;
         this.method_50(s,int(chks.(@onAction == id).@defaultChecked != "false"));
      }
      
      private final function method_2646() : void
      {
         this.method_50(class_43.const_351,0);
         this.method_50(class_43.const_623,0);
         this.method_50(class_43.const_384,0);
         this.method_50(class_43.const_599,1);
         this.method_50(class_43.const_370,1);
         this.method_50(class_43.const_742,0);
         this.method_50(class_43.const_847,0);
         this.method_50(class_43.const_550,1);
         this.method_50(class_43.const_397,1);
         this.method_50(class_43.const_688,1);
         this.method_50(class_43.const_902,1);
         this.method_50(class_43.const_710,1);
         this.method_50(class_43.const_888,1);
         this.method_50(class_43.const_922,1);
         this.method_50(class_43.const_1106,class_207.method_2158());
      }
      
      public final function method_1726(param1:class_155, param2:int) : void
      {
         var _loc3_:Vector.<int> = this.method_1576(param2);
         param1.method_2004(_loc3_);
      }
      
      public final function method_1576(param1:int) : Vector.<int>
      {
         var _loc3_:int = 0;
         var _loc2_:Vector.<int> = new Vector.<int>();
         switch(param1)
         {
            case 1:
               _loc3_ = class_43.const_119;
               while(_loc3_ <= class_43.const_1726)
               {
                  _loc2_.push(!!this.method_97(_loc3_)?this.method_46(_loc3_):0);
                  _loc3_++;
               }
               break;
            case 2:
               _loc3_ = class_43.const_180;
               while(_loc3_ <= class_43.const_1528)
               {
                  _loc2_.push(!!this.method_97(_loc3_)?this.method_46(_loc3_):0);
                  _loc3_++;
               }
               break;
            default:
               _loc3_ = class_43.const_477;
               while(_loc3_ <= class_43.const_1411)
               {
                  _loc2_.push(!!this.method_97(_loc3_)?this.method_46(_loc3_):0);
                  _loc3_++;
               }
         }
         return _loc2_;
      }
      
      public final function method_3022(param1:int) : Vector.<int>
      {
         var _loc2_:Vector.<int> = new Vector.<int>();
         switch(param1)
         {
            case 1:
               _loc2_.push(class_43.const_232);
               _loc2_.push(class_43.const_188);
               _loc2_.push(class_43.const_161);
               break;
            case 2:
               _loc2_.push(class_43.const_295);
               _loc2_.push(class_43.const_279);
               _loc2_.push(class_43.const_317);
               break;
            default:
               _loc2_.push(class_43.const_353);
               _loc2_.push(class_43.const_436);
               _loc2_.push(class_43.const_371);
         }
         return _loc2_;
      }
      
      private final function restoreSavedOptionSettings() : void
      {
         var _loc1_:UserInterface = class_47.method_24.var_12;
         var _loc2_:class_168 = _loc1_.subMenuContainer.getMenu(class_214.const_252) as class_168;
         var _loc3_:class_288 = _loc2_.method_1180;
         var _loc4_:class_153 = _loc2_.name_83;
         var _loc5_:class_289 = _loc2_.method_633;
         var _loc6_:class_287 = _loc2_.method_136;
         _loc3_.method_87(class_168.const_997,method_42(class_43.const_351),false);
         _loc3_.method_87(class_168.const_790,method_42(class_43.const_623),false);
         _loc3_.method_87(class_168.const_1048,method_42(class_43.const_384),false);
         _loc4_.method_87(class_168.const_1128,method_42(class_43.const_599),false);
         _loc4_.method_149(KeysVO.NAME_KEY_UP,this.method_46(class_43.const_800));
         _loc4_.method_149(KeysVO.NAME_KEY_DOWN,this.method_46(class_43.const_813));
         _loc4_.method_149(KeysVO.NAME_KEY_LEFT,this.method_46(class_43.const_785));
         _loc4_.method_149(KeysVO.NAME_KEY_RIGHT,this.method_46(class_43.const_893));
         _loc4_.method_149(KeysVO.NAME_KEY_ATTACK,this.method_46(class_43.const_696));
         _loc4_.method_149(KeysVO.NAME_KEY_ABORT_ATTACK,this.method_46(class_43.const_815));
         _loc4_.method_149(KeysVO.NAME_KEY_SWITCH_ENEMY,this.method_46(class_43.const_838));
         _loc4_.method_149(KeysVO.NAME_KEY_SET_COURSE,this.method_46(class_43.const_730));
         _loc4_.method_149(KeysVO.NAME_KEY_BOARD,this.method_46(class_43.const_716));
         _loc4_.method_149(KeysVO.NAME_KEY_MAP_CENTER_SHIP,this.method_46(class_43.const_910));
         _loc4_.method_149(KeysVO.NAME_KEY_REPAIR,this.method_46(class_43.const_746));
         _loc4_.method_149(KeysVO.NAME_KEY_NAVIGATE,this.method_46(class_43.const_866));
         _loc4_.method_149(KeysVO.NAME_KEY_MENU_CANNONBALLS,this.method_46(class_43.const_936));
         _loc4_.method_149(KeysVO.NAME_KEY_MENU_HARPOONS,this.method_46(class_43.const_921));
         _loc4_.method_149(KeysVO.NAME_KEY_MENU_BONUSMAPS,this.method_46(class_43.const_663));
         _loc4_.method_149(KeysVO.NAME_KEY_MENU_ACTIONITEMS,this.method_46(class_43.const_873));
         _loc4_.method_149(KeysVO.NAME_KEY_MENU_FIREWORKS,this.method_46(class_43.const_914));
         _loc4_.method_149(KeysVO.NAME_KEY_PULL_MAP,this.method_46(class_43.const_694));
         _loc5_.method_2283(method_42(class_43.const_494));
         _loc5_.method_1993(method_42(class_43.const_618));
         _loc5_.method_2209(this.method_46(class_43.const_590));
         _loc5_.method_1876(this.method_46(class_43.const_520));
         _loc6_.method_2525(this.method_46(class_43.const_247));
         _loc6_.method_2490(this.method_46(class_43.const_376));
         _loc6_.method_176(class_168.const_756).method_174(this.method_46(class_43.const_848));
         _loc6_.method_176(class_168.const_658).method_174(this.method_46(class_43.const_821));
         _loc6_.method_87(class_168.const_1228,method_42(class_43.const_737),false);
         _loc6_.method_87(class_168.const_1017,method_42(class_43.const_781),false);
         _loc6_.method_87(class_168.const_698,method_42(class_43.const_822));
         _loc6_.method_87(class_168.const_741,method_42(class_43.const_749));
         _loc6_.method_87(class_168.const_907,method_42(class_43.const_841),false);
         _loc6_.method_87(class_168.const_874,method_42(class_43.const_712));
         _loc6_.method_87(class_168.const_719,method_42(class_43.const_318));
         _loc6_.method_87(class_168.const_857,method_42(class_43.const_682));
         _loc6_.method_87(class_168.const_736,method_42(class_43.const_818));
         _loc6_.method_87(class_168.const_714,method_42(class_43.const_839));
         _loc6_.method_87(class_168.const_753,method_42(class_43.const_826));
         _loc6_.method_87(class_168.const_795,method_42(class_43.const_647));
         _loc6_.method_87(class_168.const_876,method_42(class_43.const_844));
         _loc6_.method_87(class_168.const_678,method_42(class_43.const_575));
         _loc6_.method_87(class_168.const_722,method_42(class_43.const_631));
         _loc6_.method_87(class_168.const_885,method_42(class_43.const_253));
         _loc6_.method_87(class_168.const_820,method_42(class_43.const_524));
         _loc6_.method_87(class_168.const_668,method_42(class_43.const_584));
         _loc6_.method_87(class_168.const_926,method_42(class_43.const_476));
         _loc6_.method_87(class_168.const_728,method_42(class_43.const_501));
         _loc6_.method_87(class_168.const_687,method_42(class_43.const_600));
         _loc6_.method_87(class_168.const_1039,method_42(class_43.const_340));
         class_203.name_12.method_517(!!method_42(class_43.const_494)?Number(this.method_46(class_43.const_520) / 100):Number(0));
         class_203.name_12.method_516(!!method_42(class_43.const_618)?Number(this.method_46(class_43.const_590) / 100):Number(0));
         class_203.name_21(SoundEffectType.AMBIENT);
      }
      
      public final function name_16() : void
      {
         dispatchEvent(new Event(const_1001));
         this.restoreSavedZoomSetting();
         this.method_939();
         this.restoreSavedOptionSettings();
         var _loc1_:class_148 = new class_148(class_148.const_13);
         _loc1_.name_22.name_5 = class_54.const_1167;
         class_54.method_21().method_129(_loc1_);
         class_47.method_24.var_12.setComponentsVisible(true);
         dispatchEvent(new Event(const_1107));
      }
      
      private final function restoreSavedZoomSetting() : void
      {
         var _loc1_:int = class_43.const_381;
         class_47.method_24.var_12.zoomMenu.method_1869(!!this.method_97(_loc1_)?int(this.method_46(_loc1_)):int(this.method_103(_loc1_)));
      }
      
      public final function method_939() : void
      {
         var _loc1_:UserInterface = class_47.method_24.var_12;
         this.method_229(_loc1_.zoomMenu,class_43.const_637,class_43.const_580,class_43.const_114);
         this.method_229(_loc1_.actionsBar,class_43.const_532,class_43.const_465,class_43.const_531);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.quickBelt.length)
         {
            switch(_loc2_)
            {
               case 1:
                  this.method_229(_loc1_.quickBelt[1],class_43.const_188,class_43.const_161,class_43.const_232);
                  break;
               case 2:
                  this.method_229(_loc1_.quickBelt[2],class_43.const_279,class_43.const_317,class_43.const_295);
                  break;
               default:
                  this.method_229(_loc1_.quickBelt[0],class_43.const_436,class_43.const_371,class_43.const_353);
            }
            _loc2_++;
         }
         this.method_229(_loc1_.targetInfoContainer,class_43.const_549,class_43.const_489);
         this.method_229(_loc1_.battleInfoContainer,class_43.const_597,class_43.const_589);
         this.method_229(_loc1_.infoIconContainer,class_43.const_548,class_43.const_490);
         this.method_229(_loc1_.miniMap,class_43.const_473,class_43.const_536);
         this.method_229(_loc1_.globalActionBtnContainer.method_109(class_205.const_166),class_43.const_526,class_43.const_601);
         if(class_12.var_104 != class_12.const_15)
         {
            this.method_229(class_47.method_24.method_122,class_43.const_539,class_43.const_535);
         }
         var _loc3_:class_112 = class_47.method_24.var_12.chatWindow;
         if(_loc3_)
         {
            _loc3_.method_110();
         }
         _loc1_.globalDisplayContainer.method_1586();
         var _loc4_:SubMenuContainer = _loc1_.subMenuContainer;
         this.method_232(_loc4_.getMenu(class_214.const_75),class_43.const_886,class_43.const_938,false);
         this.method_232(_loc4_.getMenu(class_214.const_69),class_43.const_1077,class_43.const_1115);
         this.method_232(_loc4_.getMenu(class_214.const_17),class_43.const_1029,class_43.const_1135);
         this.method_232(_loc4_.getMenu(class_214.const_23),class_43.const_1020,class_43.const_1041);
         this.method_232(_loc4_.getMenu(class_214.const_26),class_43.const_1005,class_43.const_1061);
         this.method_232(_loc4_.getMenu(class_214.const_38),class_43.const_1195,class_43.const_1223);
         this.method_232(_loc4_.getMenu(class_214.const_72),class_43.const_1248,class_43.const_1237);
         this.method_232(_loc4_.getMenu(class_214.const_149),class_43.const_1189,class_43.const_942);
         this.method_232(_loc4_.getMenu(class_214.const_135),class_43.const_974,class_43.const_999);
         this.method_232(_loc4_.getMenu(class_214.const_147),class_43.const_955,class_43.const_1034);
         this.method_232(_loc4_.getMenu(class_214.const_132),class_43.const_1221,class_43.const_1164);
      }
      
      private final function method_232(param1:class_167, param2:int, param3:int, param4:Boolean = true) : void
      {
         if(!param1 || !this.method_97(param2) || !this.method_97(param3))
         {
            return;
         }
         var _loc5_:int = this.method_46(param2);
         var _loc6_:int = this.method_46(param3);
         if(class_12.var_104 == class_12.const_15)
         {
            if(_loc5_ < 0)
            {
               _loc5_ = 0;
            }
            if(_loc6_ < 0)
            {
               _loc6_ = 0;
            }
         }
         param1.method_194(_loc5_,_loc6_);
         param1.method_110();
         if(param4)
         {
            param1.method_132(true);
         }
         param1.method_666(true);
      }
      
      private final function method_229(param1:class_149, param2:int, param3:int, param4:int = -1) : void
      {
         if(this.method_97(param2))
         {
            if(param4 > -1)
            {
               param1.method_498(this.method_46(param4));
            }
            param1.method_194(this.method_46(param2),this.method_46(param3));
            param1.method_110();
         }
         else
         {
            param1.method_88();
         }
      }
      
      public final function method_2201(param1:UserInterface) : void
      {
         this.method_1920(param1);
         this.method_2729(param1);
      }
      
      public final function method_1588() : void
      {
         this.var_609.length = 0;
         this.method_76(class_43.const_503);
         this.method_76(class_43.const_495);
         this.method_76(class_43.const_596);
         this.method_76(class_43.const_579);
         this.method_76(class_43.const_610);
         this.method_76(class_43.const_578);
         this.method_76(class_43.const_606);
         this.method_76(class_43.const_653);
         this.method_76(class_43.const_526);
         this.method_76(class_43.const_601);
         this.method_76(class_43.const_637);
         this.method_76(class_43.const_580);
         this.method_76(class_43.const_473);
         this.method_76(class_43.const_536);
         this.method_76(class_43.const_532);
         this.method_76(class_43.const_465);
         this.method_76(class_43.const_436);
         this.method_76(class_43.const_371);
         this.method_76(class_43.const_188);
         this.method_76(class_43.const_161);
         this.method_76(class_43.const_279);
         this.method_76(class_43.const_317);
         this.method_76(class_43.const_569);
         this.method_76(class_43.const_675);
         this.method_76(class_43.const_886);
         this.method_76(class_43.const_938);
         this.method_76(class_43.const_114);
         this.method_76(class_43.const_531);
         this.method_76(class_43.const_353);
         this.method_76(class_43.const_232);
         this.method_76(class_43.const_295);
         this.method_76(class_43.const_548);
         this.method_76(class_43.const_490);
         this.method_76(class_43.const_549);
         this.method_76(class_43.const_489);
         this.method_76(class_43.const_597);
         this.method_76(class_43.const_589);
         this.method_76(class_43.const_539);
         this.method_76(class_43.const_535);
         this.method_76(class_43.const_107);
         this.method_76(class_43.const_192);
         if(this.var_609 && this.var_609.length > 0)
         {
            class_107.name_3.method_469(this.var_609);
         }
      }
      
      private final function method_76(param1:int) : void
      {
         if(this.method_97(param1) && (!this.method_263(param1) || this.method_46(param1) != this.method_103(param1)))
         {
            this.var_609.push(param1);
         }
      }
      
      public final function method_2674() : void
      {
         var ui:UserInterface = null;
         var options:class_168 = null;
         ui = class_47.method_24.var_12;
         options = ui.subMenuContainer.getMenu(class_214.const_252) as class_168;
         var cgen:class_288 = options.method_1180;
         var cctl:class_153 = options.name_83;
         var csnd:class_289 = options.method_633;
         var cgfx:class_287 = options.method_136;
         this.var_1038.length = 0;
         this.var_609.length = 0;
         var blockInvitesBefore:Boolean = method_42(class_43.const_384);
         var blockInvitesAfter:Boolean = cgen.method_73(class_168.const_1048);
         if(blockInvitesBefore != blockInvitesAfter)
         {
            class_28.name_3.method_31(new class_285(blockInvitesAfter));
         }
         this.method_60(class_43.const_351,int(cgen.method_73(class_168.const_997)));
         this.method_60(class_43.const_623,int(cgen.method_73(class_168.const_790)));
         this.method_60(class_43.const_384,int(blockInvitesAfter));
         this.method_60(class_43.const_599,int(cctl.method_73(class_168.const_1128)));
         this.method_60(class_43.const_800,cctl.method_155(KeysVO.NAME_KEY_UP));
         this.method_60(class_43.const_813,cctl.method_155(KeysVO.NAME_KEY_DOWN));
         this.method_60(class_43.const_785,cctl.method_155(KeysVO.NAME_KEY_LEFT));
         this.method_60(class_43.const_893,cctl.method_155(KeysVO.NAME_KEY_RIGHT));
         this.method_60(class_43.const_696,cctl.method_155(KeysVO.NAME_KEY_ATTACK));
         this.method_60(class_43.const_815,cctl.method_155(KeysVO.NAME_KEY_ABORT_ATTACK));
         this.method_60(class_43.const_838,cctl.method_155(KeysVO.NAME_KEY_SWITCH_ENEMY));
         this.method_60(class_43.const_730,cctl.method_155(KeysVO.NAME_KEY_SET_COURSE));
         this.method_60(class_43.const_716,cctl.method_155(KeysVO.NAME_KEY_BOARD));
         this.method_60(class_43.const_910,cctl.method_155(KeysVO.NAME_KEY_MAP_CENTER_SHIP));
         this.method_60(class_43.const_746,cctl.method_155(KeysVO.NAME_KEY_REPAIR));
         this.method_60(class_43.const_866,cctl.method_155(KeysVO.NAME_KEY_NAVIGATE));
         this.method_60(class_43.const_936,cctl.method_155(KeysVO.NAME_KEY_MENU_CANNONBALLS));
         this.method_60(class_43.const_921,cctl.method_155(KeysVO.NAME_KEY_MENU_HARPOONS));
         this.method_60(class_43.const_663,cctl.method_155(KeysVO.NAME_KEY_MENU_BONUSMAPS));
         this.method_60(class_43.const_873,cctl.method_155(KeysVO.NAME_KEY_MENU_ACTIONITEMS));
         this.method_60(class_43.const_914,cctl.method_155(KeysVO.NAME_KEY_MENU_FIREWORKS));
         this.method_60(class_43.const_694,cctl.method_155(KeysVO.NAME_KEY_PULL_MAP));
         this.method_60(class_43.const_494,int(csnd.method_1219()));
         this.method_60(class_43.const_618,int(csnd.method_1132()));
         this.method_60(class_43.const_520,csnd.method_1086());
         this.method_60(class_43.const_590,csnd.method_1191());
         this.method_60(class_43.const_247,class_12.var_946);
         this.method_60(class_43.const_376,class_286.name_5);
         this.method_60(class_43.const_848,cgfx.method_2140());
         this.method_60(class_43.const_821,cgfx.method_2339());
         this.method_60(class_43.const_737,int(cgfx.method_73(class_168.const_1228)));
         this.method_60(class_43.const_781,int(cgfx.method_73(class_168.const_1017)));
         this.method_60(class_43.const_822,int(cgfx.method_73(class_168.const_698)));
         this.method_60(class_43.const_749,int(cgfx.method_73(class_168.const_741)));
         this.method_60(class_43.const_841,int(cgfx.method_73(class_168.const_907)));
         this.method_60(class_43.const_712,int(cgfx.method_73(class_168.const_874)));
         this.method_60(class_43.const_318,int(cgfx.method_73(class_168.const_719)));
         this.method_60(class_43.const_682,int(cgfx.method_73(class_168.const_857)));
         this.method_60(class_43.const_818,int(cgfx.method_73(class_168.const_736)));
         this.method_60(class_43.const_839,int(cgfx.method_73(class_168.const_714)));
         this.method_60(class_43.const_826,int(cgfx.method_73(class_168.const_753)));
         this.method_60(class_43.const_647,int(cgfx.method_73(class_168.const_795)));
         this.method_60(class_43.const_844,int(cgfx.method_73(class_168.const_876)));
         this.method_60(class_43.const_575,int(cgfx.method_73(class_168.const_678)));
         this.method_60(class_43.const_631,int(cgfx.method_73(class_168.const_722)));
         this.method_60(class_43.const_253,int(cgfx.method_73(class_168.const_885)));
         this.method_60(class_43.const_524,int(cgfx.method_73(class_168.const_820)));
         this.method_60(class_43.const_584,int(cgfx.method_73(class_168.const_668)));
         this.method_60(class_43.const_476,int(cgfx.method_73(class_168.const_926)));
         this.method_60(class_43.const_501,int(cgfx.method_73(class_168.const_728)));
         this.method_60(class_43.const_600,int(cgfx.method_73(class_168.const_687)));
         this.method_60(class_43.const_340,int(cgfx.method_73(class_168.const_1039)));
         if(this.var_1038.length > 0)
         {
            class_107.name_3.method_569(this.var_1038);
         }
         if(this.var_609.length > 0)
         {
            class_107.name_3.method_469(this.var_609);
         }
         if(this.method_46(class_43.const_247) != class_12.var_946)
         {
            const_3.warn("View port changed so clear UI data");
            this.method_1588();
            delay(5000,function():void
            {
               class_154.method_488();
            });
         }
      }
      
      private final function method_60(param1:int, param2:int) : void
      {
         if(param2 != this.method_46(param1))
         {
            if(param2 == this.method_103(param1))
            {
               this.var_609.push(param1);
            }
            else
            {
               this.var_1038.push(param1);
               this.var_1038.push(param2);
            }
         }
      }
      
      private final function method_1920(param1:UserInterface) : void
      {
         var _loc14_:Vector.<int> = null;
         var _loc15_:Vector.<int> = null;
         var _loc2_:* = class_12.var_104 == class_12.const_15;
         var _loc3_:Vector.<int> = param1.actionsBar.method_114();
         var _loc4_:Vector.<Vector.<int>> = new Vector.<Vector.<int>>();
         var _loc5_:int = 0;
         while(_loc5_ < param1.quickBelt.length)
         {
            _loc4_.push(param1.quickBelt[_loc5_].method_114());
            _loc5_++;
         }
         var _loc6_:Vector.<int> = param1.globalActionBtnContainer.method_109(class_205.const_166).method_114();
         var _loc7_:Vector.<int> = param1.zoomMenu.method_114();
         var _loc8_:Vector.<int> = param1.infoIconContainer.method_114();
         var _loc9_:Vector.<int> = param1.targetInfoContainer.method_114();
         var _loc10_:Vector.<int> = param1.battleInfoContainer.method_114();
         var _loc11_:Vector.<int> = param1.miniMap.method_114();
         var _loc12_:Vector.<int> = param1.globalDisplayContainer.method_114();
         var _loc13_:Vector.<int> = !!_loc2_?null:class_47.method_24.method_122.method_114();
         if(_loc3_ || _loc4_.length || _loc6_ || _loc7_ || _loc8_ || _loc9_ || _loc10_ || _loc11_ || _loc12_ || _loc13_)
         {
            _loc14_ = new Vector.<int>();
            if(_loc3_)
            {
               _loc14_ = _loc14_.concat(_loc3_);
            }
            if(_loc4_.length)
            {
               for each(_loc15_ in _loc4_)
               {
                  if(_loc15_)
                  {
                     _loc14_ = _loc14_.concat(_loc15_);
                  }
               }
            }
            if(_loc6_)
            {
               _loc14_ = _loc14_.concat(_loc6_);
            }
            if(_loc7_)
            {
               _loc14_ = _loc14_.concat(_loc7_);
            }
            if(_loc8_)
            {
               _loc14_ = _loc14_.concat(_loc8_);
            }
            if(_loc9_)
            {
               _loc14_ = _loc14_.concat(_loc9_);
            }
            if(_loc10_)
            {
               _loc14_ = _loc14_.concat(_loc10_);
            }
            if(_loc11_)
            {
               _loc14_ = _loc14_.concat(_loc11_);
            }
            if(_loc12_)
            {
               _loc14_ = _loc14_.concat(_loc12_);
            }
            if(_loc13_)
            {
               _loc14_ = _loc14_.concat(_loc13_);
            }
            if(_loc14_ && _loc14_.length > 0)
            {
               class_107.name_3.method_569(_loc14_);
            }
            return;
         }
      }
      
      private final function method_2729(param1:UserInterface) : void
      {
         var _loc14_:Vector.<int> = null;
         var _loc16_:Vector.<int> = null;
         var _loc17_:Vector.<int> = null;
         var _loc2_:* = class_12.var_104 == class_12.const_15;
         var _loc3_:Vector.<int> = param1.actionsBar.method_111();
         var _loc4_:Vector.<Vector.<int>> = new Vector.<Vector.<int>>();
         var _loc5_:int = 0;
         while(_loc5_ < param1.quickBelt.length)
         {
            _loc16_ = param1.quickBelt[_loc5_].method_111();
            _loc4_.push(_loc16_);
            _loc5_++;
         }
         var _loc6_:Vector.<int> = param1.zoomMenu.method_111();
         var _loc7_:Vector.<int> = param1.infoIconContainer.method_111();
         var _loc8_:Vector.<int> = param1.battleInfoContainer.method_111();
         var _loc9_:Vector.<int> = param1.targetInfoContainer.method_111();
         var _loc10_:Vector.<int> = param1.globalDisplayContainer.method_111();
         var _loc11_:Vector.<int> = param1.globalActionBtnContainer.method_109(class_205.const_166).method_111();
         var _loc12_:Vector.<int> = param1.miniMap.method_111();
         var _loc13_:Vector.<int> = !!_loc2_?null:class_47.method_24.method_122.method_111();
         if(_loc3_ || _loc4_ || _loc6_ || _loc7_ || _loc8_ || _loc9_ || _loc10_ || _loc11_ || _loc12_ || _loc13_)
         {
            _loc14_ = new Vector.<int>();
            if(_loc3_)
            {
               _loc14_ = _loc14_.concat(_loc3_);
            }
            var _loc15_:int = 0;
            while(_loc15_ < _loc4_.length)
            {
               _loc17_ = _loc4_[_loc15_] as Vector.<int>;
               if(_loc17_)
               {
                  _loc14_ = _loc14_.concat(_loc17_);
               }
               _loc15_++;
            }
            if(_loc6_)
            {
               _loc14_ = _loc14_.concat(_loc6_);
            }
            if(_loc7_)
            {
               _loc14_ = _loc14_.concat(_loc7_);
            }
            if(_loc8_)
            {
               _loc14_ = _loc14_.concat(_loc8_);
            }
            if(_loc9_)
            {
               _loc14_ = _loc14_.concat(_loc9_);
            }
            if(_loc10_)
            {
               _loc14_ = _loc14_.concat(_loc10_);
            }
            if(_loc11_)
            {
               _loc14_ = _loc14_.concat(_loc11_);
            }
            if(_loc12_)
            {
               _loc14_ = _loc14_.concat(_loc12_);
            }
            if(_loc13_)
            {
               _loc14_ = _loc14_.concat(_loc13_);
            }
            if(_loc14_ && _loc14_.length > 0)
            {
               class_107.name_3.method_469(_loc14_);
            }
            return;
         }
      }
   }
}
