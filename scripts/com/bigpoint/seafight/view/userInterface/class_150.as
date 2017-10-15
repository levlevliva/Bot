package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_980;
   import com.bigpoint.seafight.tools.class_1004;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.getClass;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.target;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.BoardingInfoTooltipListItem;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointBar;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildMenuOverviewTab;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.GuildMenuOverviewTabController;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Back;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.net.URLLoaderDataFormat;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.as3toolbox.filecollection.vo.LoadVO;
   import net.bigpoint.seafight.com.module.guild.class_510;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_107.class_1467;
   import package_111.class_741;
   import package_111.class_774;
   import package_14.class_1002;
   import package_14.class_1003;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_17.class_54;
   import package_175.class_1593;
   import package_18.class_530;
   import package_185.class_1136;
   import package_190.class_1469;
   import package_20.class_982;
   import package_26.class_204;
   import package_32.class_64;
   import package_34.class_1526;
   import package_36.class_1417;
   import package_39.class_973;
   import package_41.class_84;
   import package_46.class_1455;
   import package_47.class_657;
   import package_47.class_930;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_41;
   import package_5.class_43;
   import package_51.class_1355;
   import package_51.class_148;
   import package_54.class_1006;
   import package_54.class_162;
   import package_72.class_203;
   import package_74.class_236;
   import package_89.class_1378;
   import package_9.class_91;
   import package_95.class_341;
   import package_97.class_409;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridLayer;
   import spark.filters.DropShadowFilter;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class class_150 extends class_149
   {
      
      public static const const_80:ILogger = Log.getLogger("ActionsBar");
      
      public static const const_35:int = 430;
      
      public static const const_786:String = "attack";
      
      public static const const_868:String = "attackStop";
      
      public static const const_319:String = "inventory";
      
      public static const const_109:String = "changeCannonBalls";
      
      public static const const_113:String = "changeHarpoons";
      
      public static const const_261:String = "voodoo";
      
      public static const const_124:String = "fireworks";
      
      public static const const_128:String = "actionItems";
      
      public static const const_264:String = "repair";
      
      public static const const_615:String = "board";
      
      protected static const const_287:String = "iconoverflow";
      
      protected static var name_55:class_150;
       
      
      protected var var_428:int;
      
      protected var var_48:SWFFinisher;
      
      protected var var_18:XML;
      
      protected var var_102:UserInterface;
      
      protected var var_634:Sprite;
      
      protected var var_108:Array;
      
      protected var var_279:Boolean = false;
      
      protected var var_85:StyleSheet;
      
      protected var var_373:Bitmap;
      
      protected var var_140:Sprite;
      
      protected var var_1276:Sprite;
      
      protected var var_644:Sprite;
      
      private var var_345:MovieClip;
      
      private var var_819:Sprite;
      
      private var var_1260:Boolean = true;
      
      public function class_150(param1:UserInterface)
      {
         this.var_140 = new Sprite();
         this.var_1276 = new Sprite();
         this.var_644 = new Sprite();
         this.var_819 = new Sprite();
         super();
         this.mouseEnabled = true;
         this.mouseChildren = true;
         this.addChild(this.var_1276);
         this.addChild(this.var_644);
         this.var_1276.addChild(this.var_140);
         this.var_644.mouseChildren = true;
         this.var_644.mouseEnabled = true;
         this.var_102 = param1;
         this.var_428 = class_43.const_531;
         var_37 = class_43.const_532;
         var_46 = class_43.const_465;
         if(getClass(this) === class_150)
         {
            name_55 = this;
         }
         this.name_16();
         this.var_102.addEventListener(class_204.const_816,this.eventClean);
      }
      
      public static function get name_3() : class_150
      {
         return name_55;
      }
      
      protected function name_16() : void
      {
         const_80.info("CONSTRUCTING");
         this.var_48 = getSWFFinisher(class_123.const_152);
         this.var_18 = this.var_102.getUIConfig().actionsBar[0];
         this.var_85 = this.var_102.getStyleSheet();
         this.method_1755();
      }
      
      protected function method_1755() : void
      {
         var _loc1_:XML = null;
         var _loc2_:Object = null;
         this.var_108 = new Array();
         this.var_279 = this.var_18.@vertical == "true";
         this.var_373 = this.var_48.getEmbeddedBitmap(this.var_18.@bkgGfx);
         this.var_140.addChild(this.var_373);
         this.method_539();
         method_166(this.var_18.grabSkinConfig[0].@xPos,this.var_18.grabSkinConfig[0].@yPos,this.var_18.grabSkinConfig[0].@width,this.var_18.grabSkinConfig[0].@height);
         for each(_loc1_ in this.var_18.actionsBarBtn)
         {
            this.method_275(_loc1_);
         }
         this.method_277();
         this.x = this.var_18.@xPos;
         this.y = this.var_18.@yPos;
         _loc2_ = this.var_85.getStyle(this.var_18.@style);
         this.scaleX = _loc2_.scale;
         this.scaleY = _loc2_.scale;
         this.alpha = _loc2_.alpha;
         this.visible = _loc2_.visible;
         class_47.method_48.addEventListener(class_1003.const_959,this.method_2662);
         class_47.method_48.addEventListener(class_1002.const_927,this.method_2183);
      }
      
      protected final function method_1725() : void
      {
         class_181.method_770(this.var_819);
         this.var_819 = new Sprite();
         this.var_819.graphics.beginFill(4278255360);
         this.var_819.graphics.drawRect(0,0,this.var_373.width + 200,this.var_373.height + 200);
         this.var_819.graphics.endFill();
         this.var_1276.mask = this.var_819;
         this.var_1276.addChild(this.var_819);
      }
      
      protected final function method_539() : void
      {
         class_181.method_770(this.var_345);
         this.method_1725();
         if(var_746)
         {
            return;
         }
         this.var_345 = new MovieClip();
         this.var_345.addChild(getSWFFinisher(class_123.const_152).getEmbeddedBitmap("minimizer"));
         if(this.var_279 == true)
         {
            this.var_345.rotation = 90;
            this.var_345.x = this.var_345.width;
            this.var_345.y = this.var_345.y - (this.var_345.height - 1);
         }
         else
         {
            this.var_345.x = this.var_345.x - (this.var_345.width - 1);
         }
         addChild(this.var_345);
         this.var_345.addEventListener(MouseEvent.MOUSE_UP,this.method_1510);
      }
      
      private final function method_1510(param1:MouseEvent = null) : void
      {
         class_203.name_21(SoundEffectType.MENU_CLOSE);
         if(this.var_279 == true)
         {
            if(this.var_1260)
            {
               TweenLite.to(this.var_140,0.75,{
                  "y":-this.var_373.height,
                  "ease":Back.easeIn
               });
            }
            else
            {
               TweenLite.to(this.var_140,0.75,{
                  "y":0,
                  "ease":Back.easeOut
               });
            }
         }
         else if(this.var_1260)
         {
            TweenLite.to(this.var_140,0.75,{
               "x":-this.var_373.width,
               "ease":Back.easeIn
            });
         }
         else
         {
            TweenLite.to(this.var_140,0.75,{
               "x":0,
               "ease":Back.easeOut
            });
         }
         this.var_1260 = !this.var_1260;
      }
      
      protected final function method_275(param1:XML) : class_162
      {
         var _loc6_:Bitmap = null;
         var _loc7_:MovieClip = null;
         var _loc8_:Bitmap = null;
         var _loc2_:MovieClip = new MovieClip();
         var _loc3_:Bitmap = this.var_48.getEmbeddedBitmap("placeholder");
         var _loc4_:Bitmap = this.var_48.getEmbeddedBitmap(param1.@gfx);
         _loc2_.addChild(_loc3_);
         _loc2_.addChild(_loc4_);
         _loc4_.x = (_loc3_.width - _loc4_.width) * 0.5;
         _loc4_.y = (_loc3_.height - _loc4_.height) * 0.5;
         var _loc5_:class_162 = new class_162(_loc2_);
         _loc5_.method_162(param1.@onAction);
         _loc5_.method_303(this.var_85);
         _loc5_.method_2271 = new Number(param1.@cntWarnThreshold);
         _loc5_.addEventListener(class_148.const_13,class_54.method_21().method_129);
         this.var_108.push(this.var_140.addChild(_loc5_));
         class_64.method_21().method_84(_loc5_,class_13.method_78(param1.@tooltipKey));
         if(param1.@has_cf == "true")
         {
            _loc6_ = getSWFFinisher(class_123.const_57).getEmbeddedBitmap(const_287);
            _loc5_.method_338(this.var_18.counterFieldConfig[0],_loc6_);
         }
         if(param1.@has_bar == "true")
         {
            _loc5_.method_2499(this.var_18.barDisplayConfig[0]);
         }
         if(param1.@isSwitch == true)
         {
            _loc7_ = new MovieClip();
            if(!param1.lockedStateClip[0])
            {
               _loc7_.addChild(this.var_48.getEmbeddedBitmap(this.var_18.@lockedStateGfx));
               _loc5_.method_400(null,_loc7_,param1.@isAutoSwitch == true);
            }
            else
            {
               _loc7_.addChild(this.var_48.getEmbeddedBitmap(param1.lockedStateClip[0].@lockedStateGfx));
               _loc5_.method_400(param1.lockedStateClip[0],_loc7_,param1.@isAutoSwitch == true);
            }
            _loc5_.method_70(param1.@isSwitched == true);
         }
         if(param1.@isActive == false)
         {
            _loc5_.method_123(false);
         }
         if(param1.@custom == true)
         {
            _loc5_.width = param1.@width;
            _loc5_.height = param1.@height;
            _loc5_.x = param1.@xPos;
            _loc5_.y = param1.@yPos;
            _loc5_.scaleX = param1.@scale;
            _loc5_.scaleY = param1.@scale;
            _loc5_.alpha = param1.@alpha;
            _loc5_.visible = param1.@visible;
            if(param1.counterFieldConfig[0])
            {
               _loc8_ = getSWFFinisher(class_123.const_57).getEmbeddedBitmap(const_287);
               _loc5_.method_338(param1.counterFieldConfig[0],_loc8_);
            }
         }
         _loc5_.method_404();
         return _loc5_;
      }
      
      protected final function method_277() : void
      {
         var _loc2_:class_162 = null;
         var _loc3_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < this.var_108.length)
         {
            _loc2_ = this.var_108[_loc1_] as class_162;
            _loc3_ = new Number(this.var_18.@btnSpacing);
            if(this.var_279 == true)
            {
               this.var_279 = true;
               _loc2_.x = new Number(this.var_18.@btnOffsetV_x) + new Number(0);
               _loc2_.y = new Number(this.var_18.@btnOffsetV_y) + _loc3_ + (_loc2_.method_1122().y + _loc3_) * _loc1_;
            }
            else
            {
               this.var_279 = false;
               _loc2_.x = new Number(this.var_18.@btnOffsetH_x) + (_loc2_.method_1122().x + _loc3_) * _loc1_;
               _loc2_.y = new Number(this.var_18.@btnOffsetH_y) + new Number(0);
            }
            _loc1_++;
         }
      }
      
      override public function method_115() : void
      {
         if(!this.var_1260)
         {
            this.method_1510();
         }
         class_181.method_770(this.var_345);
         super.method_115();
         this.method_1268();
         class_1004.method_1038(this.var_644);
         this.var_634 = new Sprite();
         this.var_634.addChild(this.var_48.getEmbeddedBitmap("btnrotate"));
         this.var_644.addChild(this.var_634);
         class_64.method_21().method_84(this.var_634,class_13.method_78(this.var_102.getUIConfig().globalUITooltips[0].@alignSwitchKey));
         this.var_634.addEventListener(MouseEvent.CLICK,this.method_1098);
         this.var_634.addEventListener(MouseEvent.MOUSE_DOWN,this.method_1285,false,10);
      }
      
      private final function method_1285(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      override public function method_107() : void
      {
         super.method_107();
         class_64.method_21().method_287(this.var_634);
         this.var_634.removeEventListener(MouseEvent.CLICK,this.method_1098);
         this.var_644.removeChild(this.var_634);
         this.method_539();
      }
      
      override public function method_111() : Vector.<int>
      {
         if(!var_209)
         {
            return null;
         }
         var _loc1_:Vector.<int> = super.method_111();
         var _loc2_:* = class_47.method_112.method_46(this.var_428) == 1;
         if(_loc2_ && (!this.var_279 || var_127.var_335))
         {
            if(!_loc1_)
            {
               _loc1_ = new Vector.<int>();
            }
            _loc1_.push(this.var_428);
         }
         return _loc1_;
      }
      
      override public function method_114() : Vector.<int>
      {
         if(!var_209)
         {
            return null;
         }
         var _loc1_:* = class_47.method_112.method_46(this.var_428) == 1;
         var _loc2_:Vector.<int> = super.method_114();
         if(this.var_279 && !_loc1_)
         {
            if(!_loc2_)
            {
               _loc2_ = new Vector.<int>();
            }
            _loc2_.push(this.var_428);
            _loc2_.push(1);
         }
         return _loc2_;
      }
      
      protected final function method_1098(param1:MouseEvent) : void
      {
         this.method_423(!this.var_279);
         var_209 = true;
      }
      
      public function method_423(param1:Boolean) : void
      {
         if(param1 == this.var_279)
         {
            return;
         }
         this.var_279 = param1;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_108.length)
         {
            if(param1 == true)
            {
               this.var_373.rotation = 90;
               this.var_373.x = this.var_373.width;
               this.method_277();
            }
            else
            {
               this.var_373.rotation = 0;
               this.var_373.x = 0;
               this.method_277();
            }
            _loc2_++;
         }
         if(this.var_102.configMode)
         {
            this.method_1268();
            class_1004.method_1038(this.var_644);
         }
         this.method_1677();
         this.method_539();
      }
      
      private final function method_1268() : void
      {
         if(this.var_279 == true)
         {
            var_142.x = this.var_18.grabSkinConfig[0].@xOffset;
            var_142.rotation = 90;
         }
         else
         {
            var_142.x = 0;
            var_142.rotation = 0;
         }
      }
      
      private final function method_1677() : Boolean
      {
         var validArea:Rectangle = null;
         if(class_41.name_3.name_17 != class_41.const_459)
         {
            return false;
         }
         try
         {
            validArea = this.var_102.validStageArea.clone();
         }
         catch(e:Error)
         {
            return false;
         }
         var result:Boolean = false;
         if(x < validArea.left)
         {
            x = validArea.left;
            result = true;
         }
         if(x + width > validArea.right)
         {
            x = validArea.right - width;
            result = true;
         }
         if(y < validArea.top)
         {
            y = validArea.top;
            result = true;
         }
         if(y + height > validArea.bottom)
         {
            y = validArea.bottom - height;
            result = true;
         }
         return result;
      }
      
      protected final function method_54() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.var_108.length)
         {
            this.var_140.removeChild(this.var_108[_loc1_]);
            _loc1_++;
         }
         this.removeChild(this.method_2792());
      }
      
      public final function method_69(param1:String) : class_162
      {
         var _loc2_:class_162 = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.var_108.length)
         {
            _loc2_ = this.var_108[_loc3_] as class_162;
            if(_loc2_.method_58().name_5 == param1)
            {
               return _loc2_;
            }
            _loc3_++;
         }
         return null;
      }
      
      private final function method_2183(param1:class_1002) : void
      {
         this.method_875(const_786,param1.var_1982);
         this.method_875(const_868,param1.var_2167);
      }
      
      private final function method_2662(param1:class_1003) : void
      {
         var _loc2_:class_162 = this.method_69(class_150.const_615);
         _loc2_.name_28 = param1.var_1766;
         this.method_875(class_150.const_615,param1.var_1766);
      }
      
      private final function method_875(param1:String, param2:Boolean) : void
      {
         var _loc3_:class_162 = this.method_69(param1);
         if(_loc3_.name_26 == param2)
         {
            return;
         }
         _loc3_.name_26 = param2;
      }
      
      public final function method_2605() : Boolean
      {
         return this.var_279;
      }
      
      public function get method_788() : Array
      {
         return this.var_108;
      }
      
      override public function method_110() : void
      {
         if(var_127.var_335)
         {
            return;
         }
         this.method_423(var_127.name_81 == class_980.const_990);
         super.method_110();
      }
      
      protected function method_438() : void
      {
         this.method_423(false);
         this.x = (class_51.var_39 - const_35) * 0.5;
         this.y = class_51.var_40 - 100;
      }
      
      private final function eventClean(param1:class_204) : void
      {
         var _loc2_:int = 0;
         var _loc3_:class_162 = null;
         if(param1.method_1313 == class_204.const_1261)
         {
            _loc2_ = 0;
            while(_loc2_ < this.var_108.length)
            {
               _loc3_ = this.var_108[_loc2_] as class_162;
               _loc3_.var_1415 = true;
               _loc2_++;
            }
         }
         else
         {
            _loc2_ = 0;
            while(_loc2_ < this.var_108.length)
            {
               _loc3_ = this.var_108[_loc2_] as class_162;
               _loc3_.var_1415 = false;
               _loc2_++;
            }
         }
      }
      
      override public function method_88() : void
      {
         super.method_88();
         var _loc1_:class_49 = class_47.method_112;
         if(!_loc1_.method_263(var_37))
         {
            this.method_438();
         }
         else
         {
            method_498(_loc1_.method_103(this.var_428));
            method_194(_loc1_.method_103(var_37),_loc1_.method_103(var_46));
            this.method_110();
         }
      }
      
      public final function method_2134() : int
      {
         return this.var_428;
      }
   }
}
