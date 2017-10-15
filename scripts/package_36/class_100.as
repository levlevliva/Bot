package package_36
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.inventory.vo.gem.Gem_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropRemoveCommand;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoDownBtnSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.BoardingInfoTooltipListItemSubItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagDropTarget;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.target;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.SailShipEquipmentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatsListItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import com.bit101.components.ScrollPane;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IVisualElement;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.GradientEntry;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.event.EventType;
   import net.bigpoint.seafight.com.module.guild.class_373;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_103.class_1029;
   import package_114.class_430;
   import package_114.class_551;
   import package_121.class_841;
   import package_14.class_220;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_143.class_542;
   import package_16.class_28;
   import package_165.class_951;
   import package_165.class_952;
   import package_165.class_953;
   import package_165.class_954;
   import package_165.class_955;
   import package_165.class_956;
   import package_165.class_957;
   import package_166.class_958;
   import package_166.class_961;
   import package_166.class_964;
   import package_166.class_965;
   import package_166.class_970;
   import package_166.class_971;
   import package_167.class_972;
   import package_17.class_37;
   import package_17.class_54;
   import package_170.class_979;
   import package_212.class_1458;
   import package_213.class_1522;
   import package_214.class_1604;
   import package_23.class_42;
   import package_26.class_1354;
   import package_26.class_960;
   import package_26.class_969;
   import package_29.class_565;
   import package_34.class_115;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_948;
   import package_42.class_949;
   import package_42.class_959;
   import package_42.class_98;
   import package_42.class_99;
   import package_47.class_882;
   import package_47.class_930;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_939;
   import package_5.class_945;
   import package_5.class_984;
   import package_50.class_141;
   import package_51.class_148;
   import package_54.class_160;
   import package_54.class_161;
   import package_57.class_171;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_1039;
   import package_72.class_1080;
   import package_72.class_203;
   import package_88.class_967;
   import package_90.class_316;
   import package_90.class_352;
   import package_92.class_336;
   import package_92.class_944;
   import package_93.class_987;
   import package_97.class_752;
   import spark.components.Button;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.core.SpriteVisualElement;
   import spark.effects.animation.SimpleMotionPath;
   import spark.filters.ColorMatrixFilter;
   import spark.filters.DropShadowFilter;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class class_100 extends class_98 implements class_99
   {
      
      public static const const_81:String = "ship_";
      
      public static const const_787:String = "_8";
      
      public static const const_2409:int = 35;
      
      public static const const_469:String = "shiptemplate";
      
      public static const const_1757:int = 50;
      
      public static const const_864:int = 25;
      
      private static var var_212:class_161;
      
      private static var var_411:Sprite;
      
      private static var var_439:Sprite;
      
      private static var var_579:class_964;
       
      
      private var var_361:class_336;
      
      private var var_1012:class_972;
      
      private var var_714:class_958;
      
      private var var_537:class_970;
      
      protected var var_19:class_173;
      
      protected var var_138:Sprite;
      
      protected var var_387:Sprite;
      
      protected var var_204:class_947;
      
      protected var var_713:int;
      
      protected var var_458:Sprite;
      
      protected var var_1896:int;
      
      protected var var_34:int;
      
      protected var var_854:Boolean = false;
      
      protected var var_11:class_336;
      
      protected var var_575:Sprite;
      
      protected var var_180:class_42;
      
      protected var var_350:class_971;
      
      private var var_1815:int;
      
      private var var_1385:int = 2147483647;
      
      private var var_1362:int = 2147483647;
      
      public var var_1388:Boolean = false;
      
      public var var_2176:int;
      
      public function class_100(param1:class_173)
      {
         this.var_138 = new Sprite();
         this.var_387 = new Sprite();
         this.var_575 = new Sprite();
         this.var_350 = new class_971();
         super();
         this.method_444(param1);
      }
      
      public static function method_791(param1:int) : void
      {
         if(var_579 == null)
         {
            var_579 = new class_964("aoe_tortuga");
            var_579.method_193(param1,0.6);
         }
         else if(param1 > 0)
         {
            var_579.name_25 = param1;
            var_579.method_34();
         }
      }
      
      protected function method_711() : void
      {
         if(this.var_19.method_52(class_51.var_21))
         {
            var_68 = new class_957(this.var_19 as class_174);
         }
         else if(this.var_19.var_2023)
         {
            var_68 = new class_955(this.var_19);
         }
         else if(this.var_19.var_545)
         {
            var_68 = new class_954(this.var_19);
         }
         else
         {
            var_68 = new class_956(this.var_19);
         }
         this.method_34();
      }
      
      public function method_680(param1:Number) : void
      {
         this.method_33.var_432 = param1;
         if(this.var_204)
         {
            this.var_204.method_834(param1);
         }
      }
      
      public final function method_2782(param1:int) : void
      {
         this.var_1896 = param1;
      }
      
      public function get name_76() : Number
      {
         return this.method_33.var_432;
      }
      
      public final function method_749(param1:class_173) : void
      {
         var _loc2_:* = param1.name_14 != this.var_19.name_14;
         this.var_19 = param1;
         if(var_68)
         {
            var_68.method_34(param1);
         }
         this.method_34();
         if(_loc2_)
         {
            this.method_1437();
         }
         this.method_297();
         this.method_184();
         if(param1.method_52(class_51.var_21))
         {
            this.method_183(class_98.const_554);
         }
         this.method_346(this.var_19.var_240,this.var_19.var_1138);
         if(this.var_537 != null)
         {
            this.method_1569(this.var_537.var_22);
         }
      }
      
      private final function method_1437() : Boolean
      {
         var _loc1_:String = this.method_65();
         var _loc2_:FileCollection = this.var_180.var_136;
         if(_loc2_.isLoaded(_loc1_))
         {
            this.method_1094();
            return true;
         }
         _loc2_.addEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_968);
         _loc2_.addEventListener(FileCollectionFileLoadEvent.FILE_LOAD_ERROR,this.method_752);
         _loc2_.load(_loc1_);
         return false;
      }
      
      override public function method_65() : String
      {
         return const_81 + this.var_19.name_14;
      }
      
      protected function method_1391() : void
      {
         var _loc1_:Bitmap = null;
         if(this.var_458 && this.var_458.parent)
         {
            this.var_458.parent.removeChild(this.var_458);
         }
         if(this.method_33.var_1051)
         {
            _loc1_ = class_967.method_745(this.method_33.var_1051);
            _loc1_.x = -_loc1_.width * 0.5;
            _loc1_.y = -_loc1_.height;
            this.var_458 = new Sprite();
            this.var_458.addChild(_loc1_);
            this.var_387.addChild(this.var_458);
         }
      }
      
      protected final function method_781() : void
      {
         this.var_805 = false;
         this.var_204 = new class_949(this);
         if(this.var_1012)
         {
            this.method_274(this.var_1012);
         }
      }
      
      protected final function method_2451() : void
      {
         this.var_805 = true;
         this.var_204 = new class_948(this);
         var _loc1_:Point = getMapPoint(this.method_33.var_61,this.method_33.var_63);
         var_596.x = _loc1_.x;
         var_596.y = _loc1_.y;
         if(this.var_1012)
         {
            this.method_274(this.var_1012);
         }
      }
      
      protected function method_444(param1:class_173) : void
      {
         this.var_180 = class_42.method_21();
         var _loc2_:FileVO = this.var_180.var_136.listOfFiles["ship_" + param1.name_14] as FileVO;
         if(_loc2_ == null && param1.name_14 != class_945.const_43)
         {
            param1.name_14 = 1;
         }
         if(param1.method_52(class_51.var_21))
         {
            this.method_183(class_98.const_554);
         }
         this.var_19 = param1;
         this.method_711();
         var_258 = class_98.const_332;
         this.var_1896 = 1;
         this.var_34 = param1.var_743 == 0?int(class_959.const_48):int(param1.var_743);
         this.var_1385 = int.MAX_VALUE;
         this.var_1362 = int.MAX_VALUE;
         this.method_144(param1.var_61,param1.var_63);
         class_47.method_49.addEventListener(Event.ENTER_FRAME,this.updatePixelClip);
         if(this.method_1437() == true)
         {
            if(!this.var_204)
            {
               this.method_781();
            }
            return;
         }
         this.method_219(getSWFFinisher(class_123.const_20),const_469);
      }
      
      override public function method_183(param1:int, param2:int = 0) : void
      {
         super.method_183(param1,param2);
         if(this.var_11 && var_460 && var_460[param1])
         {
            this.var_138.addChildAt(var_460[param1],0);
         }
      }
      
      public function method_89(param1:int) : void
      {
         if(this.var_1388)
         {
            return;
         }
         if(param1 < 0)
         {
            param1 = 0;
         }
         this.var_19.var_101 = param1;
         var _loc2_:Number = this.method_172;
         this.var_854 = _loc2_ <= const_1757;
         this.method_83(this.var_34);
         this.method_721();
         var _loc3_:class_951 = var_68 as class_951;
         if(_loc3_)
         {
            _loc3_.method_1097(_loc2_);
         }
         dispatchEvent(new class_960(this));
      }
      
      public final function method_331(param1:int) : int
      {
         if(this.var_1388)
         {
            return 1;
         }
         if(param1 < 0)
         {
            param1 = 0;
         }
         this.var_19.var_190 = param1;
         var _loc2_:Number = this.method_2234;
         this.method_83(this.var_34);
         var _loc3_:class_953 = var_68 as class_953;
         if(_loc3_)
         {
            _loc3_.method_2556(_loc2_);
         }
         dispatchEvent(new class_960(this));
         return _loc2_;
      }
      
      public function method_477() : Boolean
      {
         return true;
      }
      
      override public function get method_172() : Number
      {
         return 100 / this.var_19.var_182 * this.var_19.var_101;
      }
      
      override public function get method_2728() : Number
      {
         return 100 / this.var_19.var_182 * this.var_19.var_101;
      }
      
      public function get method_2234() : Number
      {
         return 100 / this.var_19.var_356 * this.var_19.var_190;
      }
      
      public final function method_247() : int
      {
         return this.var_34;
      }
      
      private function method_968(param1:FileCollectionFileLoadEvent) : void
      {
         var _loc2_:String = this.method_65();
         if(param1.fileVO.id != _loc2_ || var_1823)
         {
            return;
         }
         var _loc3_:SWFFinisher = this.var_180.var_136.getFinisher(_loc2_) as SWFFinisher;
         this.var_180.var_136.removeEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_968);
         this.var_180.var_136.removeEventListener(FileCollectionFileLoadEvent.FILE_LOAD_ERROR,this.method_752);
         this.method_1094();
         var_43 = _loc3_.fileVO.params;
      }
      
      private final function method_752(param1:FileCollectionFileLoadEvent) : void
      {
         var _loc2_:String = this.method_65();
         if(param1.fileVO.id != _loc2_ || var_1823)
         {
            return;
         }
         this.var_180.var_136.removeEventListener(FileCollectionFileLoadEvent.FILE_LOADED,this.method_968);
         this.var_180.var_136.removeEventListener(FileCollectionFileLoadEvent.FILE_LOAD_ERROR,this.method_752);
         this.method_781();
      }
      
      protected final function method_1094() : void
      {
         var _loc1_:String = this.method_65();
         var _loc2_:SWFFinisher = this.var_180.var_136.getFinisher(_loc1_) as SWFFinisher;
         if(class_181.method_2861(_loc2_,_loc1_ + const_787))
         {
            this.method_2451();
         }
         else
         {
            this.method_781();
         }
         this.method_1231();
      }
      
      protected function method_1231() : void
      {
         this.method_2633();
         this.updatePixelClip();
         this.method_83(this.var_34);
         var_195 = true;
      }
      
      public function method_1414() : Boolean
      {
         return false;
      }
      
      protected function method_297() : void
      {
         var _loc3_:class_171 = null;
         var _loc4_:Sprite = null;
         var _loc1_:Boolean = this.method_273();
         if(var_68)
         {
            var_68.visible = _loc1_;
         }
         this.var_11.visible = _loc1_;
         this.var_138.visible = _loc1_;
         this.var_575.visible = _loc1_;
         var _loc2_:Array = class_47.method_29.method_482(this.var_19.name_4);
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = _loc3_.method_134();
            if(_loc4_ && _loc4_.visible != _loc1_)
            {
               _loc3_.method_846();
            }
         }
      }
      
      protected function updatePixelClip(param1:Event = null) : void
      {
         if(!this.var_11)
         {
            return;
         }
         if(this.var_714)
         {
            this.var_714.method_34();
         }
         if(this.var_204)
         {
            this.var_204.method_34(class_47.method_430);
         }
         if(this.var_204 && !this.var_204.method_258 && this.var_1385 == this.var_11.x && this.var_1362 == this.var_11.y)
         {
            return;
         }
         this.var_1385 = this.var_11.x = name_6.x;
         this.var_1362 = this.var_11.y = name_6.y;
         this.var_350.method_1364();
      }
      
      public function method_274(param1:class_972) : void
      {
         if(this.var_204)
         {
            this.var_204.method_737(param1);
            this.var_1012 = null;
         }
         else
         {
            this.var_1012 = param1;
         }
      }
      
      public function stopRoute(param1:Boolean = false, param2:int = 0, param3:int = 0, param4:int = 0, param5:Boolean = false) : void
      {
         if(this.var_204)
         {
            this.var_204.method_64(param1,param2,param3,param4);
         }
      }
      
      public function method_2089() : void
      {
         dispatchEvent(new class_969(this));
      }
      
      public function method_681(param1:Point) : void
      {
         if(this.var_11 == null)
         {
            return;
         }
         if(var_805)
         {
            this.method_1996(param1);
         }
         else
         {
            this.method_1565(param1);
         }
         this.method_83(this.var_34);
         dispatchEvent(new class_969(this));
      }
      
      protected function method_1565(param1:Point) : void
      {
         var _loc2_:* = param1.y > name_6.y;
         var _loc3_:* = param1.x > name_6.x;
         if(_loc3_)
         {
            this.var_34 = !!_loc2_?int(class_959.const_52):int(class_959.const_59);
         }
         else
         {
            this.var_34 = !!_loc2_?int(class_959.const_48):int(class_959.const_60);
         }
      }
      
      protected final function method_520(param1:Point, param2:Point) : Number
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         var _loc5_:Number = Math.atan2(_loc4_,_loc3_) * 180 / Math.PI;
         return _loc5_;
      }
      
      private final function method_1996(param1:Point) : void
      {
         var _loc2_:Number = this.method_520(name_6,param1);
         var _loc3_:* = param1.y > name_6.y;
         var _loc4_:* = param1.x > name_6.x;
         if(_loc2_ == 90)
         {
            this.var_34 = class_959.const_470;
            return;
         }
         if(_loc2_ == -90)
         {
            this.var_34 = class_959.const_522;
            return;
         }
         if(_loc2_ == 0)
         {
            this.var_34 = class_959.const_514;
            return;
         }
         if(_loc2_ == 180)
         {
            this.var_34 = class_959.const_533;
            return;
         }
         if(_loc4_)
         {
            this.var_34 = !!_loc3_?int(class_959.const_52):int(class_959.const_59);
         }
         else
         {
            this.var_34 = !!_loc3_?int(class_959.const_48):int(class_959.const_60);
         }
      }
      
      public final function method_34() : void
      {
         this.method_89(this.var_19.var_101);
         this.method_331(this.var_19.var_190);
         this.method_145(this.var_19.var_44,this.var_19.name_4,this.var_19.var_154,this.var_19.var_383 != null && !class_47.method_29.method_56.method_52(this.var_19.var_383),false);
      }
      
      override protected function method_304(param1:class_943 = null, param2:Number = 1) : void
      {
         super.method_304(param1,param2);
         var _loc3_:Number = !!param1?Number(param1.method_117):Number(param2);
         var _loc4_:Number = 1 / _loc3_;
         if(this.var_714)
         {
            this.var_714.scaleX = this.var_714.scaleY = _loc4_;
         }
         if(this.var_458)
         {
            this.var_458.scaleX = this.var_458.scaleY = _loc4_;
         }
      }
      
      override public function method_145(param1:String, param2:class_84, param3:String = null, param4:Boolean = false, param5:Boolean = false) : void
      {
         super.method_145(param1,param2,param3,param4,param5);
         var _loc6_:class_951 = var_68 as class_951;
         if(_loc6_)
         {
            _loc6_.method_1561(param5,this.method_477());
            _loc6_.method_34(this.var_19);
         }
      }
      
      public function method_83(param1:int) : void
      {
         this.var_350.var_1780 = class_959.name_3.const_97[param1];
         this.var_34 = param1;
         this.method_1891();
         this.var_350.method_1364();
      }
      
      public function method_269(param1:Point) : void
      {
      }
      
      public final function method_144(param1:int, param2:int) : void
      {
         if(this.var_1385 == param1 && this.var_1362 == param2)
         {
            return;
         }
         var _loc3_:Point = getMapPoint(param1,param2);
         name_6.x = _loc3_.x;
         name_6.y = _loc3_.y;
         if(this.var_11)
         {
            this.var_11.x = name_6.x;
            this.var_11.y = name_6.y;
         }
      }
      
      protected function method_721() : void
      {
         var _loc2_:Number = NaN;
         var _loc4_:* = false;
         var _loc6_:int = 0;
         var _loc9_:class_336 = null;
         var _loc10_:int = 0;
         if(this.var_1388)
         {
            this.var_19.var_101 = 1;
         }
         var _loc1_:SWFFinisher = getSWFFinisher(class_123.const_95,this.method_721);
         if(_loc1_ == null)
         {
            return;
         }
         _loc2_ = this.method_172;
         _loc4_ = _loc2_ <= const_864;
         var _loc5_:int = !!_loc4_?int((const_864 - _loc2_) / const_864 * 6 + 1):0;
         if(this.var_1815 == _loc5_ || this.var_713 < 1)
         {
            return;
         }
         this.var_1815 = _loc5_;
         this.var_350.method_54();
         if(_loc5_ == 0)
         {
            return;
         }
         switch(class_286.name_5)
         {
            case class_286.const_79:
               _loc6_ = Math.ceil(_loc5_ / 4);
               break;
            case class_286.const_105:
               _loc6_ = Math.ceil(_loc5_ / 2);
               break;
            case class_286.const_122:
               _loc6_ = _loc5_;
         }
         var _loc7_:String = class_123.method_27(class_123.const_95);
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_)
         {
            _loc9_ = new class_336(_loc1_.getEmbeddedMovieClip(_loc7_,true),_loc7_);
            _loc9_.fps = Math.round(Math.random() * 10) + 10;
            _loc9_.gotoAndPlay(_loc9_.framesLoaded <= 1?1:int(Math.round(Math.random() * 10)));
            _loc10_ = this.var_713 * 0.5;
            this.var_350.method_298(_loc9_,this.var_575,Math.random() * _loc10_ - _loc10_ / 2,20 + Math.random() * 30);
            _loc8_++;
         }
      }
      
      public function method_442(param1:Sprite) : void
      {
         var _loc2_:int = this.var_350.method_2129(param1.name);
         if(_loc2_ > 2)
         {
            return;
         }
         var _loc3_:int = Math.random() * this.var_713 - this.var_713 * 0.5;
         var _loc4_:int = 20 + Math.random() * 30;
         this.var_350.method_298(param1,this.var_575,_loc3_,_loc4_);
      }
      
      override public function suicide(param1:Boolean) : void
      {
         super.suicide(param1);
         if(param1)
         {
            method_330();
         }
         this.stopRoute(false,this.method_33.var_61,this.method_33.var_63);
         this.removeLiveClip();
         class_47.method_49.removeEventListener(Event.ENTER_FRAME,this.updatePixelClip);
      }
      
      override public function method_27() : String
      {
         return this.var_19.var_44;
      }
      
      override public function method_104() : class_84
      {
         return this.var_19.name_4;
      }
      
      override public function method_908() : Object
      {
         return var_43;
      }
      
      public final function method_670(param1:Boolean) : void
      {
         var _loc2_:SWFFinisher = null;
         var _loc3_:String = null;
         if(param1)
         {
            if(this.var_361 == null)
            {
               _loc2_ = getSWFFinisher(class_123.const_323,this.method_670,param1);
               if(_loc2_ == null)
               {
                  return;
               }
               _loc3_ = class_123.method_27(class_123.const_323);
               this.var_361 = new class_336(_loc2_.getEmbeddedMovieClip(_loc3_,true),_loc3_);
               this.var_361.fps = 12;
               method_791(0);
               this.var_138.addChildAt(var_579,0);
            }
            this.var_361.play();
            this.var_11.addChild(this.var_361);
         }
         else
         {
            if(this.var_361 != null)
            {
               this.var_361.stop();
               if(this.var_361.parent)
               {
                  this.var_361.parent.removeChild(this.var_361);
               }
               if(var_579.parent)
               {
                  var_579.parent.removeChild(var_579);
               }
            }
            this.var_361 = null;
         }
      }
      
      public final function method_598(param1:Boolean) : void
      {
         if(param1)
         {
            if(var_212 == null)
            {
               var_212 = new class_161(getSWFFinisher(class_123.const_20).getEmbeddedMovieClip("repairbutton"));
               var_212.method_167(class_160.const_808);
               var_212.method_251();
               var_212.method_191();
               var_212.addEventListener(class_148.const_13,class_54.method_21().method_129);
               var_212.mouseEnabled = true;
               var_212.method_162("repair_switchBack");
               var_212.x = -60;
               var_212.y = 0;
               this.var_11.addChild(var_212);
            }
         }
         else if(var_212 && var_212.parent)
         {
            var_212.removeEventListener(class_148.const_13,class_54.method_21().method_129);
            var_212.method_246();
            var_212.parent.removeChild(var_212);
            var_212.method_119();
            var_212 = null;
         }
      }
      
      public function get method_33() : class_173
      {
         return this.var_19;
      }
      
      override public function method_349() : String
      {
         return this.method_33.var_154;
      }
      
      public function get method_554() : Boolean
      {
         return !!this.var_204?Boolean(this.var_204.method_806):false;
      }
      
      public function method_184(param1:Boolean = false) : void
      {
      }
      
      protected function method_1891() : void
      {
         if(!this.var_11 || this.var_11.framesLoaded <= 1)
         {
            return;
         }
         if(var_805)
         {
            this.var_11.gotoAndStop(class_959.name_3.const_84[this.var_34] + (!!this.var_854?8:0));
         }
         else
         {
            this.var_11.gotoAndStop(this.var_34 + (!!this.var_854?4:0));
         }
      }
      
      protected final function method_2633() : void
      {
         this.removeLiveClip();
         var _loc1_:String = this.method_65();
         var _loc2_:SWFFinisher = this.var_180.var_136.getFinisher(_loc1_) as SWFFinisher;
         this.method_219(_loc2_,_loc1_);
      }
      
      protected function method_219(param1:SWFFinisher, param2:String) : void
      {
         var _loc3_:* = param2 == const_469;
         var _loc4_:String = param2;
         if(var_805)
         {
            _loc4_ = _loc4_ + const_787;
         }
         var _loc5_:int = !!this.var_19.method_52(class_51.var_21)?int(class_944.const_626):int(this.method_2427());
         var _loc6_:MovieClip = param1.getEmbeddedMovieClip(!!_loc3_?param2:_loc4_,true);
         if(_loc3_)
         {
            center(_loc6_);
         }
         this.removeLiveClip();
         this.var_11 = this.method_506(_loc6_,!!_loc3_?param2:_loc4_,_loc5_);
         this.method_346(this.method_33.var_240,this.method_33.var_1138);
         this.updateClip();
         this.addLiveClip();
         if(class_51.var_21 == this.var_19.name_4)
         {
            if((this.var_19 as class_174).var_712)
            {
               this.method_598(true);
            }
         }
         this.method_1391();
      }
      
      protected function addLiveClip(param1:Boolean = true) : void
      {
         class_47.method_24.method_39.method_61(this.var_11,param1);
      }
      
      protected function removeLiveClip(param1:Boolean = true) : void
      {
         if(!this.var_11 || !this.var_11.parent)
         {
            return;
         }
         class_47.method_24.method_39.method_99(this.var_11,param1);
      }
      
      protected function method_2427() : int
      {
         return !!this.var_19.var_2086?int(class_944.const_213):int(class_944.const_33);
      }
      
      protected final function method_506(param1:MovieClip, param2:String, param3:int) : class_965
      {
         return new class_965(param1,param2,param3);
      }
      
      protected function method_346(param1:int, param2:int) : void
      {
         (this.var_11 as class_961).method_346(param1,param2);
      }
      
      protected function updateClip() : void
      {
         if(var_68)
         {
            this.var_11.addChild(var_68 as Sprite);
         }
         this.var_11.addChild(this.var_575);
         this.var_11.addChild(this.var_387);
         this.var_11.addChildAt(this.var_138,0);
         this.var_11.gotoAndStop(1);
         this.var_713 = (this.var_11.method_161()[0] as BitmapData).width;
         if(this.var_361)
         {
            this.var_11.addChild(this.var_361);
            this.var_361.play();
         }
         if(this.var_19.method_52(class_51.var_21))
         {
            this.var_138.addChildAt(var_460[class_98.const_554],0);
            this.var_11.mouseEnabled = false;
            this.var_11.mouseChildren = true;
         }
         this.method_297();
         this.method_1226();
      }
      
      protected final function method_273() : Boolean
      {
         return this.var_19.name_14 != class_945.const_43;
      }
      
      public function method_803() : int
      {
         return !!this.var_11?int(this.var_11.width):-1;
      }
      
      public function method_938() : int
      {
         return !!this.var_11?int(this.var_11.height):-1;
      }
      
      public final function method_2093() : Point
      {
         return class_37.method_21().name_37.var_120.clone();
      }
      
      private final function method_2858() : void
      {
         var _loc1_:Sprite = null;
         if(var_411 && this.var_11.contains(var_411))
         {
            return;
         }
         _loc1_ = getSWFFinisher(class_123.const_20).getEmbeddedSprite("cannonicon");
         center(_loc1_);
         var_411 = this.method_1257();
         var_411.addChild(_loc1_);
         var_411.x = -40;
         var_411.y = 25;
         this.var_11.addChild(var_411);
         if(_loc1_)
         {
            class_946.name_23(_loc1_);
         }
      }
      
      private final function method_1683() : void
      {
         var _loc1_:Sprite = null;
         if(var_439 && this.var_11.contains(var_439))
         {
            return;
         }
         _loc1_ = getSWFFinisher(class_123.const_20).getEmbeddedSprite("harpoonicon");
         center(_loc1_);
         var_439 = this.method_1257();
         var_439.addChild(_loc1_);
         var_439.x = -40;
         var_439.y = 25;
         this.var_11.addChild(var_439);
         if(_loc1_)
         {
            class_946.name_23(_loc1_);
         }
      }
      
      private final function method_1257() : Sprite
      {
         var _loc1_:Sprite = new Sprite();
         var _loc2_:Sprite = getSWFFinisher(class_123.const_20).getEmbeddedSprite("reloadarrow");
         center(_loc2_);
         _loc1_.addChild(_loc2_);
         TweenMax.to(_loc2_,1.5,{
            "rotation":360,
            "ease":Linear.easeNone,
            "repeat":-1
         });
         return _loc1_;
      }
      
      public final function method_1117() : void
      {
         if(var_411 && var_411.parent)
         {
            TweenMax.killChildTweensOf(var_411);
            var_411.parent.removeChild(var_411);
         }
      }
      
      public final function method_1150() : void
      {
         if(var_439 && var_439.parent)
         {
            TweenMax.killChildTweensOf(var_439);
            var_439.parent.removeChild(var_439);
         }
      }
      
      public final function method_527() : void
      {
         this.method_1117();
         this.method_1150();
      }
      
      public final function method_1078(param1:Boolean, param2:Number = 0.75) : void
      {
         if(!class_47.method_24.var_12.subMenuContainer.optionsMenu.method_136.method_73(class_54.const_1105))
         {
            return;
         }
         this.method_527();
         delay(param2 * 1000,this.method_2053,param1);
      }
      
      private final function method_2053(param1:Boolean) : void
      {
         if(!class_47.method_48.method_1958)
         {
            return;
         }
         if(param1)
         {
            this.method_2858();
         }
         else
         {
            this.method_1683();
         }
      }
      
      public function method_77() : void
      {
      }
      
      public final function method_1226() : void
      {
         this.var_1815 = -1;
         this.method_721();
      }
      
      override public function method_197(param1:int = 0) : BitmapData
      {
         if(!this.var_11)
         {
            return null;
         }
         var _loc2_:int = this.var_11.framesLoaded;
         if(_loc2_ <= 1)
         {
            return null;
         }
         return this.var_11.method_161()[param1] as BitmapData;
      }
      
      override public function method_134() : Sprite
      {
         return this.var_11;
      }
      
      public final function method_230() : Sprite
      {
         return this.var_138;
      }
      
      public final function method_225() : Sprite
      {
         return this.var_387;
      }
      
      public final function method_2461() : void
      {
         this.var_1385 = -1;
         this.var_1362 = -1;
         this.method_144(this.method_33.var_61,this.method_33.var_63);
      }
      
      public function method_755(param1:int, param2:int) : void
      {
         this.var_19.var_61 = param1;
         this.var_19.var_63 = param2;
         var _loc3_:Point = getMapPoint(param1,param2);
         var_596.x = _loc3_.x;
         var_596.y = _loc3_.y;
      }
      
      public function method_59(param1:class_968) : void
      {
         if(null != param1.name_31)
         {
            param1.name_31.apply();
         }
      }
      
      public function method_250() : int
      {
         return 0;
      }
      
      public function method_142() : int
      {
         return 0;
      }
      
      public final function method_36() : void
      {
         var _loc1_:DisplayObject = null;
         if(this.var_350)
         {
            this.var_350.method_54();
         }
         if(this.var_11)
         {
            this.var_11.stop();
            if(this.var_11.numChildren > 1)
            {
               while(this.var_11.numChildren)
               {
                  _loc1_ = this.var_11.removeChildAt(0);
                  _loc1_.filters = [];
               }
            }
         }
         class_47.method_24.method_39.method_99(this.var_11);
         if(var_68)
         {
            var_68.method_36();
         }
      }
      
      override public function method_190() : int
      {
         return !!this.var_19?int(this.var_19.name_27):1;
      }
      
      public final function method_2745() : int
      {
         return this.var_1896;
      }
      
      public function method_1696() : Point
      {
         return var_596;
      }
      
      public final function method_2304() : void
      {
         if(var_68)
         {
            var_68.method_34(this.method_33);
         }
      }
      
      public final function method_2016() : void
      {
         var _loc1_:class_952 = var_68 as class_952;
         if(_loc1_)
         {
            _loc1_.method_649();
         }
      }
      
      public final function method_2482(param1:class_430) : void
      {
         if(this.var_714 == null)
         {
            this.var_714 = new class_958();
            this.method_304(null,class_141.var_99);
         }
         this.var_714.name_49(param1);
         this.var_387.addChild(this.var_714);
      }
      
      public final function method_2008(param1:class_551) : void
      {
         if(this.var_537 == null)
         {
            this.var_537 = new class_970();
            this.method_304(null,class_141.var_99);
         }
         this.var_537.name_8 = param1;
         this.var_387.addChild(this.var_537);
      }
      
      public final function method_1569(param1:int) : void
      {
         if(this.var_537 && this.var_537.parent && param1 == this.var_537.var_22)
         {
            this.var_537.var_22 = -1;
            this.var_387.removeChild(this.var_537);
            this.method_304(null,class_141.var_99);
         }
      }
   }
}
