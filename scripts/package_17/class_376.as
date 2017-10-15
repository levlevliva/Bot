package package_17
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.model.vo.class_1261;
   import com.bigpoint.seafight.model.vo.class_1263;
   import com.bigpoint.seafight.model.vo.class_1265;
   import com.bigpoint.seafight.model.vo.class_172;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.net.events.class_1021;
   import com.bigpoint.seafight.net.events.class_1069;
   import com.bigpoint.seafight.net.events.class_1255;
   import com.bigpoint.seafight.net.events.class_1256;
   import com.bigpoint.seafight.net.events.class_1258;
   import com.bigpoint.seafight.net.events.class_1266;
   import com.bigpoint.seafight.net.events.class_178;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.layouts.supportClasses.LayoutAxis;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.event.component.ToggleButtonGroup;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialItem;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialSocket;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.vo.CraftingMaterialItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.lootpopup.vo.LootPopupVo;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusItemVO;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.CraftingMaterialToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenLootWindow;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.TweenCore;
   import com.greensock.easing.Linear;
   import com.greensock.easing.Strong;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.collections.IList;
   import mx.controls.Spacer;
   import mx.core.UIComponent;
   import mx.events.ToolTipEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.GuildIslandType;
   import net.bigpoint.seafight.com.module.guild.GuildLogAction;
   import net.bigpoint.seafight.com.module.guild.class_408;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.minigame.class_1339;
   import net.bigpoint.seafight.com.module.minigame.class_470;
   import net.bigpoint.seafight.com.module.ship.class_413;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_104.class_448;
   import package_108.class_648;
   import package_118.class_1445;
   import package_118.class_539;
   import package_120.class_919;
   import package_121.class_773;
   import package_130.class_1264;
   import package_14.class_200;
   import package_14.class_225;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_94;
   import package_152.class_611;
   import package_16.class_28;
   import package_161.class_819;
   import package_171.class_1057;
   import package_179.class_1063;
   import package_179.class_1064;
   import package_179.class_1260;
   import package_179.class_1262;
   import package_19.class_32;
   import package_190.class_1181;
   import package_210.class_1364;
   import package_210.class_1474;
   import package_26.class_142;
   import package_26.class_52;
   import package_28.class_56;
   import package_3.class_10;
   import package_34.class_117;
   import package_34.class_1257;
   import package_36.class_100;
   import package_36.class_1417;
   import package_39.class_80;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1224;
   import package_49.class_1320;
   import package_49.class_137;
   import package_49.class_140;
   import package_49.class_420;
   import package_49.class_880;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_43;
   import package_5.class_945;
   import package_51.class_1510;
   import package_56.class_170;
   import package_56.class_520;
   import package_6.class_14;
   import package_7.class_15;
   import package_7.class_74;
   import package_72.class_203;
   import package_88.class_967;
   import package_9.class_91;
   import package_91.class_1246;
   import package_92.class_336;
   import package_92.class_944;
   import package_95.class_341;
   import package_97.class_409;
   import package_97.class_986;
   import package_99.class_853;
   import package_99.class_889;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.effects.animation.Animation;
   import spark.primitives.Ellipse;
   import spark.primitives.Rect;
   
   public final class class_376 extends class_10
   {
      
      private static const const_3:ILogger = Log.getLogger("GuildIslandControl");
      
      private static const const_437:int = 5;
      
      private static var name_55:class_376;
       
      
      private var var_876:Vector.<class_1265>;
      
      private var var_948:Vector.<class_1262>;
      
      private var var_673:Vector.<class_1064>;
      
      private var var_1166:Vector.<class_1064>;
      
      private var var_1772:class_1063;
      
      private var var_1039:Vector.<class_1265>;
      
      private var var_1594:int = 0;
      
      private var var_2162:class_1263;
      
      private var var_1130:class_1260;
      
      private var var_2278:Boolean;
      
      private var var_2440:Boolean;
      
      private var var_1235:int;
      
      private var var_1241:int;
      
      private var var_1391:int;
      
      private var var_2358:int;
      
      private var var_879:Boolean = false;
      
      private var var_1641:int;
      
      public function class_376(param1:class_28)
      {
         this.var_948 = new Vector.<class_1262>();
         this.var_673 = new Vector.<class_1064>();
         this.var_1166 = new Vector.<class_1064>();
         this.var_1039 = new Vector.<class_1265>();
         this.var_2162 = new class_1263();
         super();
         this.var_1235 = 0;
         name_55 = this;
         class_520.name_3.addEventListener(class_1255.const_1069,this.method_2251);
         class_520.name_3.addEventListener(class_1256.const_1247,this.method_2481);
         class_520.name_3.addEventListener(class_1256.const_1042,this.method_676);
         class_520.name_3.addEventListener(class_1258.const_1056,this.method_2691);
         class_520.name_3.addEventListener(class_1266.const_4,this.method_2677);
         CentralEventUnit.addEventListener(class_325.const_391,this.method_2150);
         param1.addEventListener(class_56.const_51,this.method_2305);
         method_23(class_74.name_3,this.method_736);
         method_23(class_413.name_3,this.method_2497);
         method_23(class_408.name_3,this.method_2761);
      }
      
      public static function get name_3() : class_376
      {
         return name_55;
      }
      
      public final function method_2956() : int
      {
         return this.var_1641;
      }
      
      private final function method_1575(param1:Event = null) : void
      {
         var _loc2_:class_1064 = null;
         var _loc3_:class_1262 = null;
         class_47.method_48.removeEventListener(class_178.const_833,this.method_1444);
         if(this.var_1130 == null)
         {
            return;
         }
         for each(_loc3_ in this.var_948)
         {
            _loc3_.suicide(false);
            class_47.method_29.method_403(_loc3_.method_33.var_44);
         }
         this.var_948.splice(0,this.var_948.length);
         this.var_1130.suicide(false);
         for each(_loc2_ in this.var_673)
         {
            class_47.method_29.method_403(_loc2_.method_33.var_44);
            _loc2_.suicide(false);
         }
         this.var_879 = false;
         this.var_673.splice(0,this.var_673.length);
         class_47.method_29.method_403(this.var_1130.method_33.var_44);
         for each(_loc2_ in this.var_1166)
         {
            _loc2_.method_1835();
         }
         this.var_1166.length = 0;
      }
      
      private final function method_2251(param1:class_1255) : void
      {
         var _loc5_:class_1265 = null;
         var _loc6_:class_1261 = null;
         var _loc7_:class_1262 = null;
         var _loc8_:class_1064 = null;
         this.var_1641 = param1.name_30;
         this.var_876 = param1.name_41;
         this.var_2278 = param1.name_90;
         this.var_2440 = param1.name_94;
         var _loc2_:int = this.var_876.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc5_ = this.var_876[_loc3_];
            if(_loc5_.name_4.name_4 < 0)
            {
               if(!_loc5_.var_1209)
               {
                  if(this.var_2278)
                  {
                     _loc6_ = new class_1261();
                     _loc6_.name_30 = param1.name_30;
                     _loc6_.name_4 = new class_84();
                     _loc6_.name_4.name_4 = -1;
                     _loc6_.var_44 = class_177.method_90(class_51.var_21) + class_22.const_54 + _loc5_.name_6;
                     _loc6_.name_14 = class_945.const_1018;
                     _loc6_.var_61 = _loc5_.var_61;
                     _loc6_.var_63 = _loc5_.var_63;
                     _loc6_.var_240 = class_209.const_76;
                     _loc7_ = class_200.method_323(_loc6_) as class_1262;
                     _loc7_.method_215 = _loc5_;
                     _loc7_.method_541();
                     _loc7_.method_253(const_437);
                     this.var_948.push(_loc7_);
                  }
               }
               else
               {
                  this.method_1049(_loc5_.name_6,_loc5_.name_10);
               }
            }
            else
            {
               _loc8_ = class_47.method_29.method_44(_loc5_.name_4) as class_1064;
               if(_loc8_)
               {
                  _loc8_.method_215 = _loc5_;
                  _loc8_.method_253(const_437);
                  if(_loc5_.var_1209)
                  {
                     _loc8_.method_613();
                     this.var_1166.push(_loc8_);
                  }
               }
               else
               {
                  this.var_1039.push(_loc5_);
               }
            }
            _loc3_++;
         }
         if(this.var_1039.length > 0)
         {
            class_47.method_29.addEventListener(class_1069.const_802,this.method_1318);
         }
         var _loc4_:class_173 = new class_173();
         _loc4_.name_27 = 5;
         _loc4_.name_4 = new class_84();
         _loc4_.name_4.name_4 = param1.name_30;
         _loc4_.var_44 = class_177.method_90(class_51.var_21) + class_22.const_54 + "guildHome";
         _loc4_.name_14 = class_945.const_995;
         if(param1.name_30 == GuildIslandType.CASTLE)
         {
            _loc4_.name_27 = 11;
            _loc4_.var_61 = this.var_1241 - 8;
            _loc4_.var_63 = this.var_1391 - 1;
         }
         else if(param1.name_30 == GuildIslandType.COMMONWEALTH)
         {
            _loc4_.var_61 = this.var_1241 - 9;
            _loc4_.var_63 = this.var_1391 + 14;
         }
         else
         {
            _loc4_.var_61 = this.var_1241 - 1;
            _loc4_.var_63 = this.var_1391 + 9;
         }
         _loc4_.var_240 = class_209.const_76;
         this.var_1130 = class_200.method_323(_loc4_) as class_1260;
         this.var_1130.method_541();
         this.var_1130.method_253(const_437);
         class_47.method_48.addEventListener(class_178.const_833,this.method_1444);
      }
      
      private final function method_1318(param1:class_1069) : void
      {
         var _loc2_:class_1265 = null;
         var _loc3_:class_1064 = null;
         for each(_loc2_ in this.var_1039)
         {
            if(_loc2_.method_52(param1.name_4))
            {
               this.var_1594++;
               _loc3_ = class_47.method_29.method_44(_loc2_.name_4) as class_1064;
               _loc3_.method_215 = _loc2_;
               _loc3_.method_253(const_437);
               if(_loc2_.var_1209)
               {
                  _loc3_.method_613();
                  this.var_1166.push(_loc3_);
               }
            }
         }
         if(this.var_1594 == this.var_1039.length)
         {
            this.var_1594 = 0;
            class_47.method_29.removeEventListener(class_1069.const_802,this.method_1318);
         }
      }
      
      private final function method_2761(param1:class_14) : void
      {
         var _loc2_:class_408 = param1 as class_408;
         class_47.method_24.var_12.miniMap.method_871.method_2761(_loc2_);
      }
      
      private final function method_2497(param1:class_14) : void
      {
         var _loc5_:class_1265 = null;
         var _loc6_:Boolean = false;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:class_1064 = null;
         var _loc10_:class_1064 = null;
         var _loc11_:class_1064 = null;
         var _loc12_:class_1265 = null;
         var _loc13_:class_1265 = null;
         var _loc2_:class_413 = param1 as class_413;
         var _loc3_:class_1064 = class_47.method_29.method_44(_loc2_.name_4) as class_1064;
         var _loc4_:int = this.var_673.length;
         if(!_loc3_)
         {
            _loc8_ = 0;
            while(_loc8_ < _loc4_)
            {
               _loc9_ = this.var_673[_loc8_];
               if(this.method_1514(_loc2_.name_6,_loc9_.method_33))
               {
                  _loc9_.suicide(false);
                  class_47.method_29.method_403(_loc9_.method_33.var_44);
                  return;
               }
               _loc8_++;
            }
            return;
         }
         for each(_loc5_ in this.var_876)
         {
            if(_loc5_.method_52(_loc2_.name_4))
            {
               _loc5_.var_61 = _loc2_.name_6.var_9;
               _loc5_.var_63 = _loc2_.name_6.var_8;
               break;
            }
         }
         _loc6_ = false;
         _loc7_ = 0;
         while(_loc7_ < _loc4_)
         {
            _loc10_ = this.var_673[_loc7_];
            if(this.method_1514(_loc2_.name_6,_loc10_.method_33))
            {
               _loc11_ = class_47.method_29.method_44(_loc2_.name_4) as class_1064;
               _loc12_ = new class_1265();
               _loc12_.name_6 = _loc10_.method_215.name_6;
               _loc11_.method_215 = _loc12_;
               if(class_47.method_48.method_143 == _loc10_)
               {
                  class_47.method_48.method_187(_loc11_);
               }
               _loc10_.suicide(false);
               class_47.method_29.method_403(_loc10_.method_33.var_44);
               this.var_673.splice(_loc7_,1);
               _loc6_ = true;
               break;
            }
            _loc7_++;
         }
         if(!_loc6_)
         {
            for each(_loc13_ in this.var_876)
            {
               if(_loc13_.var_61 == _loc3_.method_33.var_61 && _loc13_.var_63 == _loc3_.method_33.var_63)
               {
                  _loc13_.name_4 = _loc2_.name_4;
                  _loc3_.method_215 = _loc13_;
                  break;
               }
            }
         }
      }
      
      private final function method_1514(param1:class_91, param2:class_172) : Boolean
      {
         return param1.var_9 == param2.var_61 && param1.var_8 == param2.var_63;
      }
      
      private final function method_2150(param1:Event) : void
      {
         if(this.var_879)
         {
            this.method_676();
         }
      }
      
      private final function method_1772() : void
      {
         if(this.var_879)
         {
            this.method_676();
         }
      }
      
      private final function method_2305(param1:class_56) : void
      {
         if(this.var_879)
         {
            this.method_676();
         }
      }
      
      private final function method_1444(param1:class_178) : void
      {
         var _loc2_:class_1063 = null;
         if(param1.method_1535 is class_1260)
         {
            class_1257.name_3.method_1232(0);
         }
         else
         {
            _loc2_ = param1.method_1535 as class_1063;
            if(_loc2_ && _loc2_.method_215)
            {
               this.var_1772 = _loc2_;
               class_1257.name_3.method_1232(this.var_1772.method_215.name_6 - 1);
            }
         }
      }
      
      private final function method_2481(param1:class_1256) : void
      {
         this.var_1241 = param1.name_103;
         this.var_1391 = param1.name_102;
         this.var_2358 = param1.name_25;
         class_47.method_49.addEventListener(Event.ENTER_FRAME,this.method_1302);
      }
      
      private final function method_676(param1:class_1256 = null) : void
      {
         this.var_879 = false;
         class_47.method_49.removeEventListener(Event.ENTER_FRAME,this.method_1302);
         this.method_1575();
      }
      
      private final function method_1302(param1:Event) : void
      {
         var _loc2_:class_100 = class_47.method_29.method_75;
         if(!_loc2_)
         {
            return;
         }
         if(this.var_1235-- > 0)
         {
            return;
         }
         var _loc4_:int = _loc2_.method_458;
         var _loc5_:int = _loc2_.method_494;
         var _loc6_:int = this.var_1241 - _loc4_;
         var _loc7_:int = this.var_1391 - _loc5_;
         if(this.var_2358 >= Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_))
         {
            if(!this.var_879)
            {
               this.var_879 = true;
               this.var_1235 = 30;
            }
         }
         else if(this.var_879)
         {
            this.method_1575();
            this.var_1235 = 30;
         }
      }
      
      private final function method_2691(param1:class_1258) : void
      {
         var _loc3_:String = null;
         var _loc5_:class_1265 = null;
         var _loc6_:class_1064 = null;
         var _loc2_:class_87 = class_47.method_22;
         switch(param1.method_604)
         {
            case class_1264.const_187:
               if(param1.name_72 > 0)
               {
                  if(param1.method_344)
                  {
                     _loc3_ = "responseRepairSuccess";
                     break;
                  }
                  _loc3_ = "responseRepairFail";
                  break;
               }
               if(param1.method_344)
               {
                  _loc3_ = "responseRepairAllSuccess";
                  break;
               }
               _loc3_ = "responseRepairAllFail";
               break;
            case class_1264.const_1873:
               if(param1.method_344)
               {
                  _loc3_ = "responseBuildSuccess";
                  break;
               }
               _loc3_ = "responseBuildFail";
               break;
            case class_1264.const_1306:
               if(param1.method_344)
               {
                  _loc3_ = "responseUpgradeSuccess";
                  break;
               }
               _loc3_ = "responseUpgradeFail";
               break;
            default:
               const_3.fatal("No response known with type: " + param1.method_604);
               return;
         }
         var _loc4_:String = _loc2_.method_28(_loc3_);
         _loc4_ = _loc4_.replace("%1",param1.name_72 + 1);
         if(param1.method_344)
         {
            if(param1.name_72 == 0)
            {
               for each(_loc5_ in this.var_876)
               {
                  _loc6_ = class_47.method_29.method_44(_loc5_.name_4) as class_1064;
                  if(_loc6_ && _loc6_.method_172 < 100)
                  {
                     this.method_1241(_loc6_);
                  }
               }
            }
            else
            {
               this.method_2737(param1.name_72);
            }
            MultiPopUpManager.addInfoPopup(_loc4_);
         }
         else
         {
            MultiPopUpManager.addErrorPopup(_loc4_);
         }
      }
      
      private final function method_2737(param1:int) : void
      {
         var _loc2_:class_1265 = null;
         var _loc3_:class_1064 = null;
         for each(_loc2_ in this.var_876)
         {
            if(_loc2_.name_6 == param1 + 1)
            {
               _loc3_ = class_47.method_29.method_44(_loc2_.name_4) as class_1064;
               this.method_1241(_loc3_);
               return;
            }
         }
      }
      
      private final function method_1241(param1:class_1064) : void
      {
         if(param1)
         {
            param1.method_613();
            this.var_1166.push(param1);
         }
      }
      
      private final function method_2677(param1:class_1266) : void
      {
         this.method_1049(param1.name_72,param1.name_10,param1.name_14);
      }
      
      private final function method_1049(param1:int, param2:int, param3:int = 0) : void
      {
         var _loc4_:class_173 = null;
         var _loc5_:class_1262 = null;
         var _loc6_:class_1265 = null;
         var _loc7_:class_1064 = null;
         for each(_loc5_ in this.var_948)
         {
            if(_loc5_.method_215.name_6 == param1)
            {
               _loc5_.suicide(false);
               _loc4_ = _loc5_.method_33;
               class_47.method_29.method_403(_loc4_.var_44);
               break;
            }
         }
         if(!_loc4_)
         {
            _loc4_ = new class_173();
         }
         _loc4_.name_4 = new class_84();
         _loc4_.name_4.name_4 = -1;
         _loc4_.var_44 = class_177.method_90(class_51.var_21) + class_22.const_54 + "TOWER" + class_22.const_54 + param1;
         _loc4_.name_14 = param3 > 0?int(param3):int(this.method_1615(param2));
         for each(_loc6_ in this.var_876)
         {
            if(_loc6_.name_6 == param1)
            {
               _loc6_.name_10 = param2;
               break;
            }
         }
         _loc4_.var_61 = _loc6_.var_61;
         _loc4_.var_63 = _loc6_.var_63;
         _loc7_ = class_200.method_323(_loc4_) as class_1064;
         _loc7_.method_215 = _loc6_;
         _loc7_.method_613();
         _loc7_.method_253(const_437);
         this.var_673.push(_loc7_);
         class_47.method_48.method_187(_loc7_);
      }
      
      private final function method_1615(param1:int) : int
      {
         var _loc2_:int = this.var_1641 == GuildIslandType.ISLAND?int(class_945.const_679):int(class_945.const_867);
         return param1 - 1 + _loc2_;
      }
      
      public function get method_3029() : class_1063
      {
         return this.var_1772;
      }
      
      public function get method_3001() : class_1263
      {
         return this.var_2162;
      }
      
      public function get method_2085() : Vector.<class_1265>
      {
         return this.var_1039;
      }
      
      public function get name_59() : Vector.<class_1262>
      {
         return this.var_948;
      }
      
      private final function method_736(param1:class_14) : void
      {
         this.method_1772();
      }
   }
}
