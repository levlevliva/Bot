package package_17
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1031;
   import com.bigpoint.seafight.model.vo.class_1033;
   import com.bigpoint.seafight.model.vo.class_1261;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_1302;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.PlayerGuildWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.windowbuttonbar.WindowButtonBarSkinInnerClass0;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingInfoTooltipListItemSubItemVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingInfoTooltipListItemVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.SimpleGreenButtonSkin;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.event.modules.common.BulletText;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemsInventoryGroup;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.constants.SocketEmphasisType;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuVanityComponent;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.PlayerGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.GuildRankRightCheckBox;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.PlayerGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.PlayerGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.ShipEquipmentDecksTab;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.target;
   import com.bigpoint.seafight.view.popups.shipequipment.tabs.ShipEquipmentDecksTabController;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentDecksVo;
   import com.bigpoint.seafight.view.popups.spymenu.vo.SpyUserDataVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_1451;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bit101.components.Style;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.describeType;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.GuildIslandType;
   import net.bigpoint.seafight.com.module.guild.class_408;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_110.class_903;
   import package_122.class_634;
   import package_14.class_232;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_96;
   import package_156.class_654;
   import package_167.class_1024;
   import package_18.class_748;
   import package_20.class_33;
   import package_201.class_1230;
   import package_201.class_1231;
   import package_201.class_1232;
   import package_201.class_1233;
   import package_202.class_1301;
   import package_204.class_1338;
   import package_23.class_42;
   import package_26.class_52;
   import package_28.class_56;
   import package_29.class_166;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_89;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_1500;
   import package_46.class_1501;
   import package_48.class_1534;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_945;
   import package_5.class_984;
   import package_50.class_141;
   import package_51.class_1082;
   import package_51.class_1355;
   import package_51.class_974;
   import package_52.class_168;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_1538;
   import package_73.class_1112;
   import package_8.class_16;
   import package_88.class_1014;
   import package_88.class_1093;
   import package_88.class_967;
   import package_92.class_944;
   import package_92.class_962;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.effects.Animate;
   import spark.effects.animation.Animation;
   import spark.effects.animation.MotionPath;
   import spark.events.IndexChangeEvent;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_307
   {
      
      public static const const_3:ILogger = Log.getLogger("EnvironmentControl");
      
      public static const const_1766:Boolean = true;
      
      private static const const_973:int = 2000;
      
      private static var var_1419:int = 27000;
      
      private static var var_1414:int = 10000;
      
      private static var var_1855:uint = 10;
      
      private static var name_55:class_307;
       
      
      public var var_1443:Boolean;
      
      public var var_1305:Boolean;
      
      public var var_1407:Boolean;
      
      public var var_1806:Boolean;
      
      public var var_1195:Boolean;
      
      public var var_1134:Boolean;
      
      private var var_806:Point;
      
      private var var_1997:int;
      
      private var var_666:Timer;
      
      private var var_769:int = 0;
      
      private var var_2133:int = 2000;
      
      private var var_1199:int;
      
      private var var_1151:int;
      
      private var var_1277:int = 0;
      
      private var var_867:class_1233;
      
      private var var_1848:int;
      
      private var var_1568:Dictionary;
      
      public function class_307(param1:Function)
      {
         this.var_806 = new Point();
         this.var_1199 = var_1414;
         this.var_1151 = var_1419;
         super();
         if(param1 !== method_976)
         {
            throw new class_166();
         }
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_307
      {
         if(name_55 == null)
         {
            name_55 = new class_307(method_976);
            name_55.var_1568 = new Dictionary(true);
         }
         return name_55;
      }
      
      public final function method_2356() : void
      {
         class_326.method_529;
         this.var_1443 = class_49.method_42(class_43.const_524);
         this.var_1305 = class_49.method_42(class_43.const_600);
         this.var_1407 = class_49.method_42(class_43.const_584);
         this.var_1806 = class_49.method_42(class_43.const_476);
         this.var_1195 = class_49.method_42(class_43.const_501);
         this.var_1134 = class_49.method_42(class_43.const_340);
      }
      
      public final function method_2179(param1:int) : void
      {
         this.var_1997 = param1;
         this.method_2159();
         if(this.var_1443)
         {
            this.method_731();
         }
         this.method_238();
      }
      
      public final function method_238() : void
      {
         if((this.var_1305 || this.var_1407 || this.var_1195 || this.var_1134) && this.var_1997)
         {
            if(!this.var_666)
            {
               this.var_666 = new Timer(100);
               this.var_666.addEventListener(TimerEvent.TIMER,this.method_1176);
               this.var_666.start();
            }
         }
         else if(this.var_666)
         {
            this.var_666.stop();
            this.var_666.removeEventListener(TimerEvent.TIMER,this.method_1176);
            this.var_666 = null;
         }
      }
      
      private final function method_1176(param1:TimerEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:class_100 = null;
         var _loc4_:class_173 = null;
         this.var_769 = this.var_769 + this.var_666.delay;
         if(this.var_769 % this.var_1199 == 0 && this.var_1407)
         {
            this.method_1542();
            while(this.var_1199 <= 0)
            {
               this.var_1199 = int(class_1025.method_81(var_1414 - class_1025.method_81(0,1),var_1414 + class_1025.method_81(0,2)));
            }
         }
         if(this.var_769 % this.var_1151 == 0 && this.var_1305)
         {
            this.method_1497();
            while(this.var_1151 <= 0)
            {
               this.var_1151 = int(class_1025.method_81(var_1419 - class_1025.method_81(0,1),var_1419 + class_1025.method_81(0,2)));
            }
         }
         if(this.var_769 % this.var_2133 == 0 && this.var_1134)
         {
            this.method_2078();
            while(this.var_1151 <= 0)
            {
               this.var_2133 = int(class_1025.method_81(const_973 - class_1025.method_81(0,1),const_973 + class_1025.method_81(0,2)));
            }
         }
         if(this.var_1195)
         {
            _loc2_ = class_47.method_29.method_1724();
            for each(_loc3_ in _loc2_)
            {
               _loc4_ = _loc3_.method_33;
               if(_loc3_.method_554 && (_loc4_.name_14 != 228 && _loc4_.name_14 != 229 && _loc4_.name_14 != 230 && _loc4_.name_14 != 351 && _loc4_.name_14 != 362 && _loc4_.name_14 != 363 && _loc4_.name_14 != class_945.const_43))
               {
                  this.var_1277 = 100;
                  if(_loc3_.name_76 < 1)
                  {
                     this.var_1277 = 400;
                  }
                  else if(1 < _loc3_.name_76 < 1.5)
                  {
                     this.var_1277 = 200;
                  }
                  if(this.var_769 % this.var_1277 <= 0)
                  {
                     this.method_1769(_loc3_);
                  }
               }
            }
         }
         if(this.var_1199 * this.var_1151 * this.var_1277 == this.var_769)
         {
            this.var_769 = 0;
         }
      }
      
      private final function method_1542() : void
      {
         var _loc1_:SWFFinisher = getSWFFinisher(class_123.const_306,this.method_1542);
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:class_1232 = new class_1232();
         var _loc3_:Point = this.method_719();
         _loc3_ = this.method_545(_loc3_);
         _loc2_.x = _loc3_.x;
         _loc2_.y = _loc3_.y;
         class_47.method_24.method_39.method_61(_loc2_,false);
         _loc2_.method_1982();
      }
      
      private final function method_2078() : void
      {
         var _loc4_:Point = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Rectangle = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc1_:Number = Math.atan2(this.var_806.y,this.var_806.x);
         var _loc2_:class_1231 = new class_1231(_loc1_ * 180 / Math.PI);
         var _loc3_:int = 5;
         while(_loc3_-- > 0)
         {
            _loc4_ = this.method_545(this.method_719());
            _loc5_ = 50 * Math.cos(_loc1_);
            _loc6_ = 50 * Math.sin(_loc1_);
            _loc2_.method_2579(_loc4_.x,_loc4_.y,_loc4_.x + _loc5_,_loc4_.y + _loc6_);
            _loc7_ = _loc2_.method_1520();
            _loc8_ = _loc4_.x + _loc7_.x;
            _loc9_ = _loc4_.y + _loc7_.y;
            if(this.method_2032(_loc8_,_loc9_,_loc8_ + _loc5_,_loc9_ + _loc6_,_loc7_.width,_loc7_.height))
            {
               continue;
            }
            this.var_1568[_loc2_] = _loc2_;
            class_47.method_24.method_39.method_61(_loc2_,false);
            _loc2_.method_1967();
            break;
         }
      }
      
      private final function method_2032(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : Boolean
      {
         var _loc11_:int = 0;
         var _loc7_:class_232 = class_47.method_51;
         var _loc8_:int = param5 * 0.5;
         var _loc9_:int = param6 * 0.5;
         var _loc10_:int = 0;
         while(_loc10_ < 3)
         {
            _loc11_ = 0;
            while(_loc11_ < 3)
            {
               if(_loc7_.method_1265(param1 + _loc8_ * _loc10_,param2 + _loc9_ * _loc11_))
               {
                  return true;
               }
               _loc11_++;
            }
            _loc10_++;
         }
         _loc10_ = 0;
         while(_loc10_ < 3)
         {
            _loc11_ = 0;
            while(_loc11_ < 3)
            {
               if(_loc7_.method_1265(param3 + _loc8_ * _loc10_,param4 + _loc9_ * _loc11_))
               {
                  return true;
               }
               _loc11_++;
            }
            _loc10_++;
         }
         return false;
      }
      
      private final function method_1497(param1:int = -1) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 < 0)
         {
            param1 = class_1025.method_81(0,3);
         }
         switch(param1)
         {
            case class_1230.const_1456:
               _loc3_ = class_123.const_409;
               _loc2_ = "eagle";
               _loc4_ = 1;
               break;
            case class_1230.const_1741:
               _loc3_ = class_123.const_372;
               _loc2_ = "albatross";
               _loc4_ = class_1025.method_81(1,2);
               break;
            case class_1230.const_1544:
            default:
               _loc3_ = class_123.const_433;
               _loc2_ = "bird";
               _loc4_ = class_1025.method_81(1,6);
         }
         var _loc5_:SWFFinisher = getSWFFinisher(_loc3_,this.method_1497,param1);
         if(_loc5_ == null)
         {
            return;
         }
         var _loc6_:class_1230 = new class_1230(_loc2_,_loc3_,_loc4_);
         var _loc7_:int = class_1025.method_81(1,360);
         var _loc8_:Point = this.method_264(this.method_460(),this.method_533(),_loc7_);
         var _loc9_:Point = this.method_264(this.method_460(),this.method_533(),_loc7_ + class_1025.method_81(150,250));
         _loc8_ = this.method_545(_loc8_);
         _loc9_ = this.method_545(_loc9_);
         class_47.method_24.method_39.method_61(_loc6_,false);
         _loc6_.method_2194(_loc8_,_loc9_);
      }
      
      private final function method_1769(param1:class_100) : void
      {
         var waveClip:class_962 = null;
         var xTrail:int = 0;
         var yTrail:int = 0;
         var ship:class_100 = param1;
         waveClip = new class_962(class_944.const_413);
         waveClip.alpha = 0.08;
         var width:int = 10;
         waveClip.graphics.lineStyle(width,16777215);
         waveClip.x = ship.name_6.x;
         waveClip.y = ship.name_6.y;
         switch(ship.method_247())
         {
            case 1:
               xTrail = -1;
               yTrail = 1;
               break;
            case 2:
               xTrail = 1;
               yTrail = -1;
               break;
            case 3:
               xTrail = -1;
               yTrail = -1;
               break;
            case 4:
               xTrail = 1;
               yTrail = 1;
         }
         waveClip.graphics.moveTo(0,10 * yTrail);
         waveClip.graphics.curveTo(10 * xTrail,10 * yTrail,10 * xTrail,0);
         class_47.method_24.method_39.method_61(waveClip,false);
         TweenMax.to(waveClip,6 / ship.name_76,{
            "alpha":0,
            "scaleX":3,
            "scaleY":3,
            "onComplete":function():void
            {
               waveClip.parent.removeChild(waveClip);
            }
         });
      }
      
      public final function method_731() : void
      {
         if(!this.var_1997)
         {
            return;
         }
         if(this.var_867 != null)
         {
            this.method_1480();
         }
         var _loc1_:SWFFinisher = getSWFFinisher(class_123.const_302,this.method_731);
         if(_loc1_ == null)
         {
            return;
         }
         this.var_867 = new class_1233(this.var_806,this.var_1848);
         this.var_867.name_16(var_1855);
         class_47.method_24.method_39.method_61(this.var_867,false);
      }
      
      public final function method_1480() : void
      {
         if(this.var_867 != null)
         {
            class_47.method_24.method_39.method_99(this.var_867,false);
            this.var_867.method_2072();
            this.var_867 = null;
         }
      }
      
      private final function method_2159() : void
      {
         this.var_806.x = Math.random() > 0.5?Number(1):Number(-1);
         this.var_806.y = Math.random() > 0.5?Number(1):Number(-1);
         this.var_1848 = class_1025.method_81(100,200) / 100;
      }
      
      public final function method_2813(param1:Point, param2:Number, param3:Number) : Boolean
      {
         return Math.pow(param1.x,2) / Math.pow(param2,2) + Math.pow(param1.y,2) / Math.pow(param3,2) < 1;
      }
      
      public final function method_719() : Point
      {
         var _loc1_:int = class_1025.method_81(0,this.method_460());
         var _loc2_:int = class_1025.method_81(0,this.method_533());
         var _loc3_:int = class_1025.method_81(1,360);
         return this.method_264(_loc1_,_loc2_,_loc3_);
      }
      
      public final function method_264(param1:int, param2:int, param3:int) : Point
      {
         var _loc4_:Point = new Point();
         _loc4_.x = Math.sin(param3 * Math.PI / 180) * param1;
         _loc4_.y = Math.cos(param3 * Math.PI / 180) * param2;
         return _loc4_;
      }
      
      public final function method_460() : Number
      {
         return this.getShipRange() * 0.5;
      }
      
      public final function method_533() : Number
      {
         return this.getShipRange() * 0.5 * 0.7;
      }
      
      public final function method_327() : Point
      {
         if(class_47.method_29.method_75 == null)
         {
            return new Point(0,0);
         }
         return !!class_47.method_29.method_56?class_47.method_29.method_75.name_6:new Point(0,0);
      }
      
      public final function method_2657(param1:int, param2:int) : Point
      {
         var _loc3_:Point = this.method_327();
         var _loc4_:Point = new Point(param1 - _loc3_.x,param2 - _loc3_.y);
         return _loc4_;
      }
      
      public final function method_545(param1:Point) : Point
      {
         param1.x = param1.x + this.method_327().x;
         param1.y = param1.y + this.method_327().y;
         return param1;
      }
      
      private final function getShipRange() : int
      {
         return class_47.method_29.method_56.var_121 * 35 + 1500;
      }
      
      public final function method_909() : Point
      {
         return class_47.method_24.method_39.method_909();
      }
      
      public final function method_2953() : Point
      {
         var _loc1_:Point = class_47.method_24.method_39.method_909();
         var _loc2_:Point = new Point();
         _loc2_.x = class_1025.method_81(_loc1_.x,_loc1_.x + class_51.var_39);
         _loc2_.y = class_1025.method_81(_loc1_.y,_loc1_.y + class_51.var_40);
         return _loc2_;
      }
      
      public final function method_2405(param1:int, param2:int) : Boolean
      {
         var _loc3_:Number = this.method_327().x;
         var _loc4_:Number = this.method_327().y;
         var _loc5_:Number = this.getShipRange() * 0.5;
         var _loc6_:Number = this.getShipRange() * 0.5 * 0.7;
         return (param1 - _loc3_) * (param1 - _loc3_) / (_loc5_ * _loc5_) + (param2 - _loc4_) * (param2 - _loc4_) / (_loc6_ * _loc6_) <= 1;
      }
      
      public final function method_119() : void
      {
         var _loc1_:class_1231 = null;
         if(this.var_1134)
         {
            for each(_loc1_ in this.var_1568)
            {
               _loc1_.method_119();
            }
            this.var_1568 = new Dictionary(true);
         }
      }
   }
}
