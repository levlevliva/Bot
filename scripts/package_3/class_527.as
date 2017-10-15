package package_3
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.gem.Gem_VO;
   import com.bigpoint.seafight.model.vo.class_1512;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.net.events.class_1021;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_82;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.BoardingLogListItem;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.vo.GemPopupBootybagTabVo;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.vo.GroupMapPlayerListItemRendererVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.RankIconComboBoxListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.target;
   import com.bigpoint.seafight.view.userInterface.request;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.seafight.com.module.gems.class_892;
   import net.bigpoint.seafight.com.module.guild.class_394;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.minigame.class_1331;
   import net.bigpoint.seafight.com.module.minigame.class_438;
   import net.bigpoint.seafight.com.module.minigame.class_517;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.ship.class_700;
   import package_101.class_566;
   import package_104.class_1160;
   import package_104.class_448;
   import package_104.class_641;
   import package_104.class_989;
   import package_115.class_1335;
   import package_115.class_403;
   import package_115.class_490;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_88;
   import package_15.class_48;
   import package_16.class_28;
   import package_166.class_1330;
   import package_166.class_1332;
   import package_166.class_1334;
   import package_166.class_1336;
   import package_166.class_1337;
   import package_166.class_963;
   import package_166.class_964;
   import package_170.class_979;
   import package_190.class_1181;
   import package_190.class_1469;
   import package_210.class_1474;
   import package_216.class_1575;
   import package_23.class_42;
   import package_26.class_1354;
   import package_28.class_56;
   import package_34.class_73;
   import package_36.class_100;
   import package_37.class_75;
   import package_39.class_973;
   import package_40.class_85;
   import package_41.class_103;
   import package_41.class_89;
   import package_46.class_1493;
   import package_47.class_522;
   import package_5.class_43;
   import package_6.class_14;
   import package_7.class_74;
   import package_74.class_256;
   import package_8.*;
   import package_9.class_404;
   import package_9.class_91;
   import package_92.class_1333;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_527 extends class_10
   {
       
      
      private var var_565:Dictionary;
      
      private var var_1658:Vector.<Sprite>;
      
      private var var_969:class_1330;
      
      public function class_527()
      {
         super();
         this.var_565 = new Dictionary();
         this.var_1658 = new Vector.<Sprite>();
         method_23(class_490.name_3,this.method_1729);
         method_23(class_403.name_3,this.method_2776);
         method_23(class_404.name_3,this.method_1685);
         method_23(class_438.name_3,this.method_1785);
         method_23(class_517.name_3,this.method_1756);
         CentralEventUnit.addEventListener(class_56.const_51,this.method_1311);
      }
      
      private final function method_1729(param1:class_14) : void
      {
         var _loc2_:class_490 = null;
         var _loc6_:Point = null;
         var _loc7_:String = null;
         _loc2_ = param1 as class_490;
         var _loc3_:String = class_177.method_90(_loc2_.name_4);
         var _loc4_:Boolean = class_49.method_42(class_43.const_318) && !class_49.method_42(class_43.const_253);
         var _loc5_:class_963 = this.var_565[_loc3_] as class_963;
         if(_loc5_)
         {
            if(_loc5_.method_2850 == _loc2_.name_25 && _loc5_.name_61 == _loc2_.name_61)
            {
               _loc6_ = getMapPoint(_loc2_.var_24.var_9,_loc2_.var_24.var_8);
               TweenMax.to(_loc5_,0.5,{
                  "x":_loc6_.x,
                  "y":_loc6_.y
               });
               return;
            }
            this.method_965(_loc3_);
         }
         switch(_loc2_.name_5)
         {
            case class_1335.const_743:
               _loc7_ = !!_loc2_.name_61?"aoe_damage_reduction":"aoe_damage_reduction_neg";
               this.method_92(new class_964(_loc7_),_loc2_,4287140607,0.9);
               break;
            case class_1335.const_344:
               if(_loc2_.name_61)
               {
                  this.method_92(new class_964("aoe_pos"),_loc2_,4287140607,0.9);
                  break;
               }
               this.method_92(new class_964("aoe_neg"),_loc2_,4294901760,0.9);
               break;
            case class_1335.const_1666:
               if(_loc2_.name_61)
               {
                  this.method_92(new class_964("aoe_speed_pos"),_loc2_,4287140607,0.9);
                  break;
               }
               this.method_92(new class_964("aoe_speed_neg"),_loc2_,4294901760,0.9);
               break;
            case class_1335.const_1731:
               this.method_92(new class_963(),_loc2_,4284940288,0.9);
               break;
            case class_1335.const_1436:
               this.method_92(new class_963(),_loc2_,4289209087,0.9);
               break;
            case class_1335.const_1634:
               this.method_92(new class_963(),_loc2_,4287140607,0.9);
               break;
            case class_1335.const_1709:
               this.method_92(new class_963(),_loc2_,4287111695,0.9);
               break;
            case class_1335.const_223:
               if(_loc2_.name_61)
               {
                  this.method_92(new class_964("aoe_pos_heal"),_loc2_,4294901760,0.9);
                  break;
               }
               this.method_92(new class_964("aoe_heal_neg"),_loc2_,4294901760,0.9);
               break;
            case class_1335.const_1323:
               this.method_92(new class_964("aoe_crowd_neg"),_loc2_,4294901760,0.9);
               break;
            case class_1335.const_43:
               break;
            case class_1335.const_1527:
               if(_loc2_.name_61)
               {
                  this.method_92(new class_964("aoe_lure_pos"),_loc2_,4287140607,0.9);
                  break;
               }
               this.method_92(new class_964("aoe_lure_neg"),_loc2_,4294901760,0.9);
               break;
            case class_1335.const_1928:
               this.method_92(new class_964("aoe_gaia_pos"),_loc2_,16777215,0.4);
               break;
            case class_1335.const_1934:
               this.method_92(new class_964("aoe_ouranos_pos"),_loc2_,16777215,0.4);
               break;
            case class_1335.const_1533:
               this.method_92(new class_1332(),_loc2_,16711680,0);
               break;
            case class_1335.const_852:
               this.method_92(new class_1334("circletigerfin","circletigerfin",14),_loc2_);
               break;
            case class_1335.const_784:
               this.method_92(new class_1336(_loc2_.var_24),_loc2_,16711680,0);
               break;
            case class_1335.const_256:
               if(_loc4_)
               {
                  this.method_92(new class_1337("aoe_candle","aoe_candle"),_loc2_,16777215,0.3);
                  break;
               }
               break;
            case class_1335.const_1360:
               this.method_92(new class_964("aoe_goal_blue"),_loc2_,16777215,0.4);
               break;
            case class_1335.const_1516:
               this.method_92(new class_964("aoe_goal_red"),_loc2_,16777215,0.4);
               break;
            case class_1335.const_1372:
               class_100.method_791(_loc2_.name_25);
               break;
            case class_1335.const_648:
               this.method_92(new class_964("aoe_air"),_loc2_);
               break;
            case class_1335.const_587:
               this.method_92(new class_964("aoe_water"),_loc2_);
               break;
            case class_1335.const_635:
               this.method_92(new class_964("aoe_earth"),_loc2_);
               break;
            case class_1335.const_655:
               this.method_92(new class_964("aoe_fire"),_loc2_);
               break;
            case class_1335.const_1096:
               this.method_92(new class_964("aoe_domination_blue"),_loc2_);
               break;
            case class_1335.const_967:
               this.method_92(new class_964("aoe_domination_gold"),_loc2_);
               break;
            case class_1335.const_1862:
               this.method_92(new class_964("aoe_typhon"),_loc2_);
               break;
            default:
               this.method_92(new class_963(),_loc2_,4294901760,0.9);
         }
      }
      
      private final function method_92(param1:class_963, param2:class_490, param3:int = 16777215, param4:Number = 1.0) : void
      {
         var _loc5_:Point = null;
         _loc5_ = getMapPoint(param2.var_24.var_9,param2.var_24.var_8);
         param1.x = _loc5_.x;
         param1.y = _loc5_.y;
         param1.method_193(param2.name_25,param4,param3,param2.name_61);
         this.var_565[class_177.method_90(param2.name_4)] = param1;
         param1.name_5 = class_944.const_170;
         class_47.method_24.method_39.method_61(param1,param1.name_98);
      }
      
      private final function method_2776(param1:class_14) : void
      {
         var _loc2_:class_403 = param1 as class_403;
         this.method_965(class_177.method_90(_loc2_.name_4));
      }
      
      private final function method_491() : void
      {
         this.method_2286();
         this.method_2153();
         if(this.var_969)
         {
            this.var_969.method_36();
            this.var_969 = null;
         }
      }
      
      private final function method_1685(param1:class_14) : void
      {
         this.method_491();
      }
      
      private final function method_965(param1:String) : void
      {
         var gfx:class_963 = null;
         var key:String = param1;
         gfx = this.var_565[key] as class_963;
         if(!gfx)
         {
            return;
         }
         gfx.method_36();
         try
         {
            class_47.method_24.method_39.method_99(gfx,gfx.name_98);
         }
         catch(e:Error)
         {
            if(gfx.parent)
            {
               gfx.parent.removeChild(gfx);
            }
         }
         delete this.var_565[key];
      }
      
      private final function method_2153() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.var_565)
         {
            this.method_965(_loc1_);
         }
      }
      
      private final function method_1785(param1:class_14) : void
      {
         var _loc2_:class_438 = null;
         var _loc3_:Point = null;
         var _loc4_:Point = null;
         _loc2_ = param1 as class_438;
         _loc3_ = getMapPoint(_loc2_.name_23.var_9,_loc2_.name_23.var_8);
         _loc4_ = getMapPoint(_loc2_.var_156.var_9,_loc2_.var_156.var_8);
         var _loc5_:Point = new Point((_loc4_.x + _loc3_.x) * 0.5,(_loc4_.y + _loc3_.y) * 0.5);
         var _loc6_:int = _loc2_.name_5 == class_1331.const_1524?65280:6463997;
         this.method_1580(_loc5_,_loc3_,_loc6_);
         this.method_1580(_loc5_,_loc4_,_loc6_);
      }
      
      private final function method_1580(param1:Point, param2:Point, param3:int = 16777215) : void
      {
         var _loc4_:class_1333 = new class_1333(param1,param2);
         _loc4_.name_5 = class_944.const_56;
         _loc4_.method_2812 = 0;
         _loc4_.method_2259 = false;
         _loc4_.method_193(16777215,param3);
         this.var_1658.push(_loc4_);
         class_47.method_24.method_39.method_61(_loc4_,true);
      }
      
      private final function method_2286() : void
      {
         var _loc1_:Sprite = null;
         while(this.var_1658.length > 0)
         {
            _loc1_ = this.var_1658.pop();
            class_47.method_24.method_39.method_99(_loc1_,true);
         }
      }
      
      private final function method_1756(param1:class_14) : void
      {
         var _loc2_:class_517 = param1 as class_517;
         var _loc3_:Point = getMapPoint(_loc2_.var_24.var_9,_loc2_.var_24.var_8);
         var _loc4_:class_100 = class_47.method_29.method_44(class_51.var_21);
         var _loc5_:Sprite = _loc4_.method_225();
         if(null == this.var_969)
         {
            this.var_969 = new class_1330(_loc4_.name_6);
            _loc5_.addChild(this.var_969);
         }
         this.var_969.method_626(_loc3_);
      }
      
      private final function method_1311(param1:class_56) : void
      {
         this.method_491();
      }
   }
}
