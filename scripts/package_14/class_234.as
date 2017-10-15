package package_14
{
   import com.bigpoint.seafight.display.utils.getGrayScaleBitmapData;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderCheckBoxRenderer;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabButtonListItem;
   import com.bigpoint.seafight.view.popups.lootpopup.component.target;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import com.greensock.TimelineMax;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.LinearGradientStroke;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.guild.class_635;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import package_104.class_641;
   import package_105.class_369;
   import package_111.class_1176;
   import package_111.class_790;
   import package_131.class_573;
   import package_147.class_572;
   import package_15.class_48;
   import package_152.class_664;
   import package_16.class_193;
   import package_17.class_151;
   import package_17.class_54;
   import package_184.class_1129;
   import package_20.class_33;
   import package_23.class_42;
   import package_26.class_1128;
   import package_26.class_1319;
   import package_26.class_942;
   import package_26.class_960;
   import package_26.class_969;
   import package_28.class_301;
   import package_28.class_311;
   import package_29.class_565;
   import package_3.class_363;
   import package_3.class_378;
   import package_30.class_62;
   import package_32.class_338;
   import package_32.class_64;
   import package_34.class_107;
   import package_34.class_1127;
   import package_34.class_1526;
   import package_34.class_169;
   import package_36.class_100;
   import package_4.class_11;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_959;
   import package_42.class_98;
   import package_43.class_251;
   import package_48.class_138;
   import package_5.class_1028;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_214;
   import package_5.class_43;
   import package_5.class_945;
   import package_5.class_984;
   import package_51.class_148;
   import package_55.class_1008;
   import package_56.class_170;
   import package_56.class_368;
   import package_57.class_171;
   import package_58.class_175;
   import package_88.class_1093;
   import package_9.class_91;
   import package_90.class_316;
   import package_95.class_341;
   import package_97.class_409;
   import package_97.class_752;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Graphic;
   
   use namespace mx_internal;
   
   public final class class_234 extends EventDispatcher
   {
      
      public static const const_3:ILogger = Log.getLogger("TargetManager");
      
      private static const const_1441:int = 10000;
      
      private static const const_1665:int = 3000;
      
      private static const const_1460:int = 500;
       
      
      private var var_134:class_98;
      
      private var var_670:class_98;
      
      private var var_830:class_84;
      
      private var var_1227:class_100;
      
      private var var_1949:Boolean = false;
      
      private var var_1760:Boolean = false;
      
      private var var_949:Boolean;
      
      private var var_1044:class_84;
      
      private var var_590:Dictionary;
      
      private var var_966:Timer;
      
      private var var_1283:Timer;
      
      private var var_1975:Boolean = false;
      
      private var var_2095:MouseEvent = null;
      
      private var var_1350:Timer;
      
      private var var_1515:Boolean = false;
      
      private var var_2287:Boolean = false;
      
      public var var_1979:Boolean = true;
      
      private var var_1246:class_193;
      
      private var var_1645:class_251;
      
      public function class_234()
      {
         this.var_830 = new class_84();
         this.var_1044 = new class_84();
         this.var_590 = new Dictionary();
         super();
         this.var_1044.name_4 = -1;
         this.var_830.name_4 = -1;
         this.var_1283 = new Timer(const_1665,1);
         this.var_1283.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_2000);
      }
      
      public final function method_767(param1:class_100) : void
      {
         this.var_1227 = param1;
         this.var_1227.addEventListener(class_969.const_239,this.method_935);
         class_54.method_21().addEventListener(class_301.const_1191,this.method_213);
         class_54.method_21().addEventListener(class_311.const_1104,this.method_213);
         this.var_1246 = class_33.name_12.method_441;
         if(!this.var_1645)
         {
            this.var_1645 = class_48.name_3.var_1223;
            this.var_1645.addEventListener(Event.CHANGE,this.method_1950);
         }
      }
      
      private final function method_935(param1:class_969) : void
      {
         this.method_1370();
         this.method_1651();
         this.checkBoardingStatus();
         class_151.method_21().method_481();
      }
      
      public final function method_286(param1:class_98, param2:Boolean, param3:int = -1) : Boolean
      {
         var _loc4_:class_174 = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param1 != null)
         {
            _loc4_ = class_47.method_29.method_56;
            _loc5_ = this.method_854(param1);
            _loc6_ = 0;
            if(param1.var_258 == class_98.const_332)
            {
               if(param2)
               {
                  if(param3 == -1)
                  {
                     _loc6_ = _loc4_.var_1868;
                  }
                  else
                  {
                     _loc6_ = param3;
                  }
               }
               else
               {
                  _loc6_ = _loc4_.var_1868;
               }
            }
            else if(param1.var_258 == class_98.const_282)
            {
               if(param3 == -1)
               {
                  _loc6_ = _loc4_.method_695;
               }
               else
               {
                  return false;
               }
            }
            return _loc6_ >= _loc5_;
         }
         return false;
      }
      
      public final function method_854(param1:class_98) : Number
      {
         return Math.sqrt(Math.pow(param1.method_458 - this.var_1227.method_458,2) + Math.pow(param1.method_494 - this.var_1227.method_494,2)) - (param1.method_190() + this.var_1227.method_190()) / 2;
      }
      
      private final function method_1370() : void
      {
         this.method_1882(this.method_286(this.var_134,true));
      }
      
      private final function method_1651() : void
      {
         if(this.var_670 == null)
         {
            return;
         }
         if(!this.method_286(this.var_670,false))
         {
            if(this.isBattleTargetMonster())
            {
               this.method_1515(false);
               class_47.method_29.method_75.method_527();
            }
            this.method_408();
            return;
         }
      }
      
      private final function isBattleTargetMonster() : Boolean
      {
         return this.var_670 != null && this.var_670.var_258 == class_98.const_282;
      }
      
      private final function checkBoardingStatus() : void
      {
         var _loc1_:class_100 = this.var_134 as class_100;
         if(!_loc1_)
         {
            dispatchEvent(new class_1003(false));
            return;
         }
         var _loc2_:int = this.var_1645.name_57;
         var _loc3_:* = _loc2_ >= this.method_854(_loc1_);
         var _loc4_:Boolean = _loc3_ && class_1129.method_1011(_loc1_.method_33);
         if(this.var_1760 != _loc4_)
         {
            this.var_1760 = _loc4_;
            dispatchEvent(new class_1003(_loc4_));
         }
      }
      
      private final function method_1950(param1:Event) : void
      {
         this.checkBoardingStatus();
      }
      
      private final function method_1882(param1:Boolean) : void
      {
         if(this.var_1949 != param1)
         {
            this.var_1949 = param1;
            this.method_213();
         }
      }
      
      public final function method_576() : void
      {
         this.var_1044.name_4 = -1;
      }
      
      public final function method_187(param1:class_98, param2:Boolean = false) : Boolean
      {
         var _loc3_:class_84 = null;
         var _loc4_:class_100 = null;
         var _loc5_:class_173 = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param1 != null)
         {
            _loc3_ = param1.method_104();
            this.var_1044.name_4 = _loc3_.name_4;
            this.var_1044.var_6 = _loc3_.var_6;
         }
         class_11.method_21().method_1041("");
         if(param1 is class_100)
         {
            if((param1 as class_100).method_33.var_685)
            {
               return false;
            }
         }
         if(param1 is class_100)
         {
            _loc4_ = param1 as class_100;
            _loc5_ = _loc4_.method_33;
            _loc6_ = _loc5_.var_1222;
            if(_loc5_.var_545 == false)
            {
               class_11.method_21().method_1041(_loc5_.var_44);
            }
            else if(param2 && _loc6_ != class_1028.const_181 && _loc6_ != class_1028.const_512)
            {
               for each(_loc7_ in _loc5_.var_169)
               {
                  class_1127.method_862(_loc4_.method_104(),_loc7_);
               }
            }
            dispatchEvent(new class_1128(class_1128.const_755,_loc4_));
         }
         if(this.var_134 == param1)
         {
            return true;
         }
         if(this.var_134 != null)
         {
            this.var_134.removeEventListener(class_942.const_812,this.method_1332);
            this.var_134.removeEventListener(class_969.const_239,this.method_935);
            this.var_134.removeEventListener(class_960.const_303,this.method_1513);
            if(this.var_590[class_177.method_90(this.var_134.method_104())] == null)
            {
               this.var_134.method_378();
            }
            else
            {
               this.var_134.method_183(class_98.const_420);
            }
         }
         this.var_134 = param1;
         if(this.var_134 != null)
         {
            this.var_134.method_183(class_98.const_865);
            this.var_134.addEventListener(class_942.const_812,this.method_1332);
            this.var_134.addEventListener(class_969.const_239,this.method_935);
            this.var_134.addEventListener(class_960.const_303,this.method_1513);
         }
         this.method_1370();
         this.checkBoardingStatus();
         class_151.method_21().method_481();
         this.method_213();
         class_47.method_72.method_1420();
         return true;
      }
      
      private final function method_1513(param1:class_960) : void
      {
         var _loc2_:class_100 = param1.name_87 as class_100;
         if(_loc2_)
         {
            _loc2_.method_2016();
         }
         this.checkBoardingStatus();
      }
      
      private final function method_1332(param1:class_942) : void
      {
         if(this.var_134 == param1.name_87)
         {
            this.method_187(null);
            if(this.var_134 == this.var_670)
            {
               this.method_408();
            }
         }
      }
      
      public function get method_143() : class_98
      {
         return this.var_134;
      }
      
      public final function method_408(param1:Event = null) : void
      {
         this.method_1405(null,null);
         this.checkBoardingStatus();
      }
      
      public final function method_1405(param1:class_98, param2:class_84) : void
      {
         this.var_1283.stop();
         if(this.var_670 == param1)
         {
            return;
         }
         var _loc3_:class_1093 = this.var_590[class_177.method_90(this.var_830)];
         this.var_670 = param1;
         if(param2)
         {
            this.var_830.name_4 = param2.name_4;
            this.var_830.var_6 = param2.var_6;
         }
         else
         {
            this.var_830.name_4 = -1;
            this.var_830.var_6 = -1;
         }
         this.method_1515(param1 != null);
         if(_loc3_ != null)
         {
            this.method_361(_loc3_);
         }
         this.method_361(class_47.method_24.var_12.targetInfoContainer.method_204);
      }
      
      public final function method_827(param1:class_84, param2:Boolean, param3:Boolean) : void
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:class_98 = null;
         var _loc12_:class_175 = null;
         var _loc13_:class_1093 = null;
         var _loc8_:class_100 = class_47.method_29.method_44(param1);
         var _loc9_:Boolean = true;
         if(_loc8_ == null)
         {
            _loc12_ = class_47.method_165.method_268(param1.name_4);
            if(_loc12_ == null)
            {
               return;
            }
            _loc4_ = _loc12_.method_128.var_44;
            _loc5_ = _loc12_.method_128.var_101;
            _loc6_ = _loc12_.method_128.var_182;
            _loc7_ = _loc12_;
         }
         else
         {
            if(_loc8_.method_33.var_154 != null && _loc8_.method_33.var_154.length > 0)
            {
               _loc4_ = "[" + _loc8_.method_33.var_154 + "] ";
            }
            else
            {
               _loc4_ = "";
            }
            _loc4_ = _loc4_ + _loc8_.method_33.var_44;
            _loc5_ = _loc8_.method_33.var_101;
            _loc6_ = _loc8_.method_33.var_182;
            _loc9_ = _loc8_.method_477();
            _loc7_ = _loc8_;
         }
         if(this.method_143 != _loc7_)
         {
            _loc7_.method_378();
            _loc7_.method_183(!!param2?int(class_98.const_996):int(class_98.const_420));
         }
         if(!param3 && class_177.method_52(this.var_830,param1))
         {
            if(_loc8_)
            {
               _loc13_ = class_47.method_24.var_12.targetInfoContainer.method_626(param1,_loc4_,_loc5_,_loc6_,_loc8_.method_33.var_190,_loc8_.method_33.var_356);
               _loc13_.method_1058(_loc8_.method_477());
               _loc13_.method_34(_loc8_.method_33.var_101,_loc8_.method_33.var_190);
            }
            else
            {
               _loc13_ = class_47.method_24.var_12.targetInfoContainer.method_626(param1,_loc4_,_loc5_,_loc6_);
            }
            this.method_746(_loc13_,_loc7_);
            _loc13_.method_792(param2);
            _loc7_.addEventListener(class_960.const_303,this.method_856);
            _loc13_.addEventListener(MouseEvent.CLICK,this.method_1351);
            return;
         }
         var _loc10_:String = class_177.method_90(param1);
         var _loc11_:class_1093 = this.var_590[_loc10_] as class_1093;
         if(_loc11_ != null)
         {
            _loc11_.method_792(param2);
            return;
         }
         _loc11_ = class_47.method_24.var_12.battleInfoContainer.method_2542(param1,_loc4_,_loc5_,_loc6_,_loc8_.method_33.var_190,_loc8_.method_33.var_356);
         _loc11_.method_1058(_loc9_);
         this.method_746(_loc11_,_loc7_);
         _loc11_.doubleClickEnabled = true;
         _loc11_.addEventListener(MouseEvent.CLICK,this.method_1351);
         _loc11_.addEventListener(MouseEvent.DOUBLE_CLICK,this.method_2648);
         this.var_590[_loc10_] = _loc11_;
         _loc7_.addEventListener(class_960.const_303,this.method_856);
         if(this.method_143 != _loc7_)
         {
            _loc7_.method_183(class_98.const_420);
         }
         if(this.var_966 == null)
         {
            this.var_966 = new Timer(const_1441);
            this.var_966.addEventListener(TimerEvent.TIMER,this.method_2475);
            this.var_966.start();
         }
         _loc11_.method_792(param2);
      }
      
      private final function method_746(param1:class_1093, param2:class_98) : void
      {
         var _loc3_:BitmapData = param2.method_197();
         if(_loc3_ == null)
         {
            delay(500,this.method_746,param1,param2);
            return;
         }
         param1.method_387(_loc3_);
      }
      
      private final function method_856(param1:class_960) : void
      {
         var _loc2_:String = class_177.method_90(param1.name_87.method_104());
         if(param1.name_87 is class_100)
         {
            this.method_361(this.var_590[_loc2_]);
         }
         if(param1.name_87 is class_175)
         {
            this.method_361(this.var_590[_loc2_]);
         }
         this.method_361(class_47.method_24.var_12.targetInfoContainer.method_204);
      }
      
      private final function method_2648(param1:MouseEvent) : void
      {
         var _loc2_:class_1093 = null;
         var _loc3_:class_98 = null;
         this.var_1975 = false;
         if(this.var_1979)
         {
            _loc2_ = this.var_2095.target as class_1093;
            if(_loc2_ == null)
            {
               return;
            }
            _loc3_ = class_47.method_21().method_392(_loc2_.method_332);
            if(_loc3_ == null || !this.method_187(_loc3_))
            {
               return;
            }
            if(param1.type == MouseEvent.DOUBLE_CLICK)
            {
               this.method_572();
            }
         }
      }
      
      private final function method_1351(param1:MouseEvent) : void
      {
         if(this.var_1350 != null)
         {
            this.var_1350.stop();
         }
         this.var_2095 = param1;
         this.var_1975 = true;
         this.var_1350 = new Timer(const_1460,1);
         this.var_1350.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_1831);
         this.var_1350.start();
      }
      
      private final function method_1831(param1:TimerEvent) : void
      {
         var _loc5_:class_100 = null;
         var _loc6_:class_175 = null;
         if(!this.var_1975)
         {
            return;
         }
         var _loc2_:class_1093 = this.var_2095.target as class_1093;
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:class_98 = class_47.method_21().method_392(_loc2_.method_332);
         if(_loc3_ == null)
         {
            return;
         }
         this.method_187(_loc3_);
         var _loc4_:Point = new Point();
         if(_loc3_ is class_100)
         {
            _loc5_ = _loc3_ as class_100;
            _loc4_.x = _loc5_.method_33.var_61;
            _loc4_.y = _loc5_.method_33.var_63;
         }
         else if(_loc3_ is class_175)
         {
            _loc6_ = _loc3_ as class_175;
            _loc4_.x = _loc6_.method_128.var_61;
            _loc4_.y = _loc6_.method_128.var_63;
         }
         class_169.name_3.method_627(_loc4_.x,_loc4_.y);
      }
      
      private final function method_2116(param1:class_84) : void
      {
         if(class_47.method_24.var_12.targetInfoContainer.method_204 != null)
         {
            if(class_177.method_52(class_47.method_24.var_12.targetInfoContainer.method_204.method_332,param1))
            {
               class_47.method_24.var_12.targetInfoContainer.method_926();
            }
         }
         var _loc2_:String = class_177.method_90(param1);
         var _loc3_:class_1093 = this.var_590[_loc2_] as class_1093;
         if(_loc3_ == null)
         {
            return;
         }
         delete this.var_590[_loc2_];
         class_47.method_24.var_12.battleInfoContainer.method_1073(_loc3_);
         var _loc4_:class_98 = class_47.method_29.method_44(param1);
         if(_loc4_ == null)
         {
            _loc4_ = class_47.method_165.method_268(param1.name_4);
            if(_loc4_ == null)
            {
               return;
            }
         }
         _loc4_.removeEventListener(class_960.const_303,this.method_856);
         _loc4_.method_566(class_98.const_420);
      }
      
      private final function method_2475(param1:TimerEvent = null) : void
      {
         var _loc3_:class_1093 = null;
         this.method_361(class_47.method_24.var_12.targetInfoContainer.method_204);
         var _loc2_:int = 0;
         for each(_loc3_ in this.var_590)
         {
            this.method_361(_loc3_);
            _loc2_++;
         }
         if(_loc2_ == 0)
         {
            if(this.var_966 != null)
            {
               this.var_966.stop();
               this.var_966 = null;
            }
         }
      }
      
      private final function method_361(param1:class_1093) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1.method_2412())
         {
            this.method_2116(param1.method_332);
         }
         var _loc2_:class_100 = class_47.method_29.method_44(param1.method_332);
         if(_loc2_ != null)
         {
            param1.method_34(_loc2_.method_33.var_101,_loc2_.method_33.var_190);
            return;
         }
         var _loc3_:class_175 = class_47.method_165.method_268(param1.method_332.name_4);
         if(_loc3_ != null)
         {
            param1.method_34(_loc3_.method_128.var_101);
            return;
         }
      }
      
      private final function method_1515(param1:Boolean) : void
      {
         if(this.var_949 != param1)
         {
            if(!param1)
            {
               class_47.method_29.method_75.method_527();
            }
            this.var_949 = param1;
            if(!this.var_949)
            {
               class_47.method_24.var_12.targetInfoContainer.method_926();
            }
         }
         this.method_213();
      }
      
      public final function method_213(param1:Event = null) : void
      {
         var _loc3_:class_100 = null;
         var _loc2_:Boolean = !this.var_949 && this.method_286(this.var_134,true) || this.var_949 && this.method_286(this.var_134,true) && this.var_134 != this.var_670;
         if(this.var_134 is class_100)
         {
            _loc3_ = this.var_134 as class_100;
            if(class_47.method_72.method_982() < 1 || !_loc3_.method_33.var_556)
            {
               _loc2_ = false;
            }
            else if(!_loc3_.method_33.var_545)
            {
               if(!class_47.method_51.method_1292())
               {
                  if(!class_47.method_72.method_1264())
                  {
                     _loc2_ = false;
                  }
               }
            }
         }
         else if(this.var_134 is class_175)
         {
            if(class_47.method_72.method_1549() < 1)
            {
               _loc2_ = false;
            }
         }
         this.var_1515 = _loc2_ && !class_47.method_29.method_56.var_712 && !this.var_2287;
         dispatchEvent(new class_1002(this.var_1515,this.var_949));
      }
      
      public function get method_2908() : class_98
      {
         return this.var_670;
      }
      
      public function get method_1958() : Boolean
      {
         return this.var_949;
      }
      
      public function get method_2964() : Boolean
      {
         return this.var_1760;
      }
      
      public function get method_1082() : Boolean
      {
         return this.var_1949;
      }
      
      public function get method_2330() : class_84
      {
         return this.var_1044;
      }
      
      public final function method_572() : void
      {
         if(!this.var_1515)
         {
            return;
         }
         if(class_47.method_29.method_56.var_712)
         {
            class_170.method_188("maat_noaction",[]);
            return;
         }
         var _loc1_:class_98 = class_47.method_48.method_143;
         if(_loc1_ == null)
         {
            return;
         }
         if(_loc1_ is class_175)
         {
            class_47.method_72.var_2353 = true;
         }
         else
         {
            class_47.method_72.var_2181 = true;
         }
         if(!class_47.method_48.method_286(_loc1_,true))
         {
            return;
         }
         var _loc2_:int = class_47.method_72.method_2229();
         var _loc3_:int = class_47.method_72.method_982();
         if(_loc1_.var_258 == class_98.const_282)
         {
            _loc2_ = class_47.method_72.method_1877();
            _loc3_ = class_47.method_72.method_1549();
         }
         if(_loc3_ < 1)
         {
            return;
         }
         this.var_1283.stop();
         this.var_1283.start();
         class_363.method_847(_loc1_.method_104(),class_47.method_72.method_1264(),false);
         var _loc4_:* = _loc1_.var_258 == class_98.const_282;
         class_47.method_29.method_75.method_1078(!_loc4_,0);
         if(_loc4_)
         {
            this.var_1246.method_1151(_loc1_.method_104(),_loc2_);
         }
         else
         {
            this.var_1246.method_753(_loc1_.method_104(),_loc2_);
         }
      }
      
      public final function method_996(param1:int) : void
      {
         if(class_47.method_29.method_56.var_712)
         {
            class_170.method_188("maat_noaction",[]);
            return;
         }
         var _loc2_:class_98 = class_47.method_48.method_143;
         var _loc3_:class_316 = class_368.name_9[param1] as class_316;
         var _loc4_:Boolean = class_47.method_48.method_286(_loc2_,true,_loc3_.var_121);
         if(!_loc4_ || _loc3_.var_10 <= 0)
         {
            return;
         }
         this.var_1246.method_1169(_loc2_.method_104(),param1);
      }
      
      private final function method_2000(param1:TimerEvent) : void
      {
         this.method_408();
      }
      
      public final function method_1159() : void
      {
         this.var_1246.method_762();
         class_47.method_48.method_408();
      }
      
      public final function method_1333(param1:Boolean = true, param2:Boolean = false) : void
      {
         var _loc5_:class_98 = null;
         var _loc3_:Array = class_47.method_29.method_880(true).concat(class_47.method_165.method_2213());
         if(_loc3_.length < 0)
         {
            this.method_187(null);
            return;
         }
         if(this.var_134 == null || _loc3_.length == 1)
         {
            this.method_187(_loc3_[0]);
            this.method_955(param2);
            return;
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.length)
         {
            if(_loc3_[_loc4_] == this.var_134)
            {
               if(param1)
               {
                  _loc5_ = _loc3_[_loc4_ + 1];
                  if(_loc5_ == null)
                  {
                     _loc5_ = _loc3_[0];
                  }
               }
               else
               {
                  _loc5_ = _loc3_[_loc4_ - 1];
                  if(_loc5_ == null)
                  {
                     _loc5_ = _loc3_[_loc3_.length - 1];
                  }
               }
               this.method_187(_loc5_);
               this.method_955(param2);
               return;
            }
            _loc4_++;
         }
         this.method_187(_loc3_[0]);
         this.method_955(param2);
      }
      
      private final function method_955(param1:Boolean) : void
      {
         if(!(this.var_134 is class_100) || !param1)
         {
            return;
         }
         var _loc2_:class_100 = this.var_134 as class_100;
         var _loc3_:String = _loc2_.method_349().length > 0?"[" + _loc2_.method_349() + "]":"";
         var _loc4_:String = _loc2_.method_27();
         var _loc5_:String = class_177.method_90(_loc2_.method_104());
         class_47.method_24.var_12.chatWindow.method_1532(_loc3_ + " " + _loc4_ + " " + _loc5_);
      }
      
      public function set method_2758(param1:Boolean) : void
      {
         this.var_2287 = param1;
         this.method_213();
      }
      
      public function get method_2970() : Boolean
      {
         return this.var_1515;
      }
   }
}
