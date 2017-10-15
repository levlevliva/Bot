package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.model.vo.class_1092;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentButtonClickEvent;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMenuMembersTabVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentDecksVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.greensock.TweenLite;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.IFlexDisplayObject;
   import mx.core.IVisualElement;
   import mx.events.FlexEvent;
   import mx.graphics.GradientEntry;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.GuildLogAction;
   import package_104.class_448;
   import package_114.class_406;
   import package_118.class_1445;
   import package_118.class_539;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_94;
   import package_15.class_48;
   import package_170.class_979;
   import package_171.class_1267;
   import package_171.class_981;
   import package_174.class_1592;
   import package_190.class_1181;
   import package_20.class_33;
   import package_205.class_1353;
   import package_208.class_1585;
   import package_29.class_57;
   import package_41.class_93;
   import package_43.class_263;
   import package_45.class_110;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_51.class_148;
   import package_6.class_14;
   import package_74.class_253;
   import package_88.class_1090;
   import package_88.class_1091;
   import package_88.class_1093;
   import package_88.class_966;
   import package_88.class_967;
   import package_89.class_1011;
   import package_92.class_336;
   import package_92.class_944;
   import package_93.class_987;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.RichEditableText;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_207 extends class_149
   {
      
      private static const const_1572:int = 5;
      
      private static const const_1397:int = 2;
      
      private static const const_315:class_1092 = new class_1092(class_43.const_1106);
      
      private static const const_572:int = 43.0;
      
      private static const const_619:int = 53.0;
      
      private static const const_1258:int = 12;
      
      private static const const_1140:int = 7;
      
      private static const const_1829:int = 1000;
       
      
      private var var_1793:Timer;
      
      private var var_1238:class_263;
      
      private var var_306:Vector.<class_967>;
      
      private var var_1035:class_1090;
      
      private var var_653:Sprite;
      
      private var var_284:Sprite;
      
      private var var_572:Sprite;
      
      private var var_376:int;
      
      private var var_529:int;
      
      public function class_207()
      {
         this.var_572 = new Sprite();
         super();
         var_37 = class_43.const_548;
         var_46 = class_43.const_490;
         this.var_376 = 0;
         this.var_529 = 0;
         this.init();
      }
      
      private static function method_2773(param1:class_967, param2:class_967) : int
      {
         if(param1.var_219 && param2.var_219)
         {
            if(param1.var_219.method_240() < param2.var_219.method_240())
            {
               return -1;
            }
            if(param1.var_219.method_240() > param2.var_219.method_240())
            {
               return 1;
            }
            return 0;
         }
         if(!param1.var_219 && !param2.var_219)
         {
            if(param1.var_1125 > param2.var_1125)
            {
               return -1;
            }
            if(param1.var_1125 < param2.var_1125)
            {
               return 1;
            }
            return 0;
         }
         if(param1.var_219 && !param2.var_219)
         {
            return -1;
         }
         if(!param1.var_219 && param2.var_219)
         {
            return 1;
         }
         return 0;
      }
      
      public static function method_2158() : int
      {
         return class_1092.method_1009(const_1572,const_1397);
      }
      
      private final function init() : void
      {
         mouseEnabled = false;
         this.var_306 = new Vector.<class_967>();
         this.var_1035 = new class_1090();
         this.var_284 = new Sprite();
         this.var_284.x = 5;
         this.var_284.y = 6;
         this.var_1793 = new Timer(const_1829);
         this.var_1793.addEventListener(TimerEvent.TIMER,this.method_2513);
         this.var_1793.start();
         this.var_1238 = class_48.name_3.var_2392;
         this.var_1238.addEventListener(Event.CHANGE,this.method_2378);
         this.var_1238.method_68();
         this.method_2689();
         addChild(this.var_284);
         addChild(this.var_572);
      }
      
      private final function method_2378(param1:Event) : void
      {
         var _loc2_:class_967 = null;
         for each(_loc2_ in this.var_306)
         {
            this.method_1152(_loc2_);
         }
         this.method_368();
      }
      
      private final function method_1152(param1:class_967) : void
      {
         var _loc2_:int = param1.name_7;
         param1.method_866(this.var_1238.method_2727(_loc2_));
      }
      
      private final function method_2689() : void
      {
         this.var_653 = new Sprite();
         this.var_653.addChild(new class_1011("componentassets","resize_triangle_2"));
         this.var_653.buttonMode = true;
         this.var_653.addEventListener(MouseEvent.MOUSE_DOWN,this.method_2061);
      }
      
      override public function method_115() : void
      {
         mouseEnabled = true;
         super.method_115();
         this.method_368();
      }
      
      override public function method_107() : void
      {
         super.method_107();
         mouseEnabled = false;
         this.method_368();
      }
      
      private final function method_2513(param1:TimerEvent) : void
      {
         var _loc2_:class_967 = null;
         for each(_loc2_ in this.var_306)
         {
            _loc2_.method_1145();
         }
      }
      
      private final function method_2061(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         class_47.method_49.addEventListener(MouseEvent.MOUSE_UP,this.method_1450);
         class_47.method_49.addEventListener(MouseEvent.MOUSE_MOVE,this.method_1416);
      }
      
      private final function method_1416(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         _loc2_ = this.mouseX;
         _loc3_ = this.mouseY;
         var _loc4_:int = this.method_1000(const_572,_loc2_ - const_1258,this.var_376);
         var _loc5_:int = this.method_1000(const_619,_loc3_ - const_1140,this.var_529);
         this.var_572.graphics.clear();
         this.var_572.graphics.lineStyle(1,13421772);
         this.var_572.graphics.moveTo(0,0);
         this.var_572.graphics.lineTo(0,_loc3_);
         this.var_572.graphics.lineTo(_loc2_,_loc3_);
         this.var_572.graphics.lineTo(_loc2_,0);
         this.var_572.graphics.lineTo(0,0);
         if(this.var_376 == _loc4_ && this.var_529 == _loc5_)
         {
            return;
         }
         var_209 = true;
         this.var_376 = _loc4_ > 1?int(_loc4_):1;
         this.var_529 = _loc5_ > 1?int(_loc5_):1;
         this.method_368();
      }
      
      private final function method_1000(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:int = int(param2 / param1);
         var _loc5_:int = param1 * (_loc4_ + 1);
         var _loc6_:int = _loc5_ - param2;
         return _loc6_ <= 5?int(_loc4_ + 1):int(param3);
      }
      
      private final function method_1450(param1:MouseEvent) : void
      {
         this.var_572.graphics.clear();
         class_47.method_49.removeEventListener(MouseEvent.MOUSE_UP,this.method_1450);
         class_47.method_49.removeEventListener(MouseEvent.MOUSE_MOVE,this.method_1416);
      }
      
      public final function method_1391(param1:int, param2:class_406) : void
      {
         var _loc3_:class_967 = this.method_1682(param1);
         var _loc4_:int = param2.var_175;
         if(_loc4_ > 0)
         {
            _loc3_.method_1847(_loc4_);
         }
         _loc3_.method_1969();
         if(param2.var_1196 > 0)
         {
            _loc3_.method_1818(param2.var_1196);
            _loc3_.method_1145();
         }
         else
         {
            _loc3_.method_54();
            _loc3_.method_257(param2.var_1552);
         }
         this.method_368();
      }
      
      public final function method_2580(param1:int) : void
      {
         var _loc2_:int = this.var_306.length;
         var _loc3_:class_967 = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc3_ = this.var_306[_loc4_];
            if(_loc3_.name_7 == param1)
            {
               break;
            }
            _loc3_ = null;
            _loc4_++;
         }
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc4_ < _loc2_ - 1)
         {
            this.var_306[_loc4_] = this.var_306.pop();
         }
         else
         {
            this.var_306.length = _loc4_;
         }
         this.method_368();
      }
      
      public final function method_54() : void
      {
         this.var_284.removeChildren();
         this.var_306.length = 0;
      }
      
      private final function method_1682(param1:int) : class_967
      {
         var _loc2_:class_967 = null;
         for each(_loc2_ in this.var_306)
         {
            if(_loc2_.name_7 == param1)
            {
               return _loc2_;
            }
         }
         _loc2_ = new class_967(param1);
         _loc2_.name_16();
         this.method_1152(_loc2_);
         this.var_306.push(_loc2_);
         return _loc2_;
      }
      
      private final function method_368() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc4_:class_966 = null;
         this.var_284.removeChildren();
         this.var_306.sort(method_2773);
         if(this.var_376 <= 0)
         {
            this.var_376 = this.method_563();
            this.var_529 = this.method_656();
         }
         _loc1_ = this.var_529 * this.var_376;
         _loc2_ = this.var_306.length;
         var _loc3_:int = _loc2_ <= _loc1_?int(_loc2_):int(_loc1_);
         var _loc5_:int = 0;
         while(_loc5_ < _loc1_)
         {
            if(_loc5_ < _loc3_)
            {
               _loc4_ = this.var_306[_loc5_];
            }
            else if(var_746)
            {
               _loc4_ = class_1091.method_2103(_loc5_);
            }
            else
            {
               break;
            }
            _loc4_.x = const_572 * (_loc5_ % this.var_376);
            _loc4_.y = const_619 * int(_loc5_ / this.var_376);
            this.var_284.addChild(_loc4_);
            _loc5_++;
         }
         if(var_746)
         {
            this.method_2627(this.var_376 * const_572 + const_1258,this.var_529 * const_619 + const_1140);
         }
         else if(_loc2_ > _loc1_)
         {
            this.method_1635(_loc4_.x + const_572,_loc4_.y + 20,_loc2_ - _loc1_);
         }
      }
      
      private final function method_563(param1:Boolean = false) : int
      {
         return const_315.method_1662(param1);
      }
      
      private final function method_656(param1:Boolean = false) : int
      {
         return const_315.method_1782(param1);
      }
      
      private final function method_1635(param1:int, param2:int, param3:int) : void
      {
         var _loc10_:class_967 = null;
         var _loc4_:int = this.var_306.length - 1;
         var _loc6_:* = param3 > 8;
         var _loc7_:int = _loc4_ - (!!_loc6_?8:param3);
         var _loc8_:String = "";
         var _loc9_:int = _loc7_ + 1;
         while(_loc9_ <= _loc4_)
         {
            _loc10_ = this.var_306[_loc9_];
            _loc8_ = _loc8_ + _loc10_.method_2521();
            if(_loc9_ < _loc4_)
            {
               _loc8_ = _loc8_ + class_22.const_203;
            }
            _loc9_++;
         }
         if(_loc6_)
         {
            _loc8_ = _loc8_ + (class_22.const_203 + "(... x" + (param3 - 8) + ")");
         }
         this.var_1035.x = param1;
         this.var_1035.y = param2;
         this.var_1035.method_866(_loc8_);
         this.var_1035.method_511(param3);
         this.var_284.addChild(this.var_1035);
      }
      
      private final function method_2627(param1:int, param2:int) : void
      {
         if(!var_746)
         {
            return;
         }
         var_142.mouseChildren = true;
         var_142.removeChildren();
         var_142.graphics.clear();
         var_142.graphics.lineStyle(1,4274727);
         var_142.graphics.beginFill(0,0.4);
         var_142.graphics.drawRect(0,0,param1,param2);
         var_142.graphics.endFill();
         this.var_653.x = param1 - this.var_653.width - 6;
         this.var_653.y = param2 - this.var_653.height - 7;
         this.var_284.addChild(this.var_653);
      }
      
      override public function method_114() : Vector.<int>
      {
         if(!var_209)
         {
            return null;
         }
         var _loc1_:int = this.method_656(true);
         var _loc2_:int = this.method_563(true);
         var _loc3_:Vector.<int> = super.method_114();
         if(_loc1_ != this.var_529 || _loc2_ != this.var_376)
         {
            if(!_loc3_)
            {
               _loc3_ = new Vector.<int>();
            }
            _loc3_.push(const_315.var_975);
            _loc3_.push(class_1092.method_1009(this.var_376,this.var_529));
         }
         return _loc3_;
      }
      
      override public function method_111() : Vector.<int>
      {
         if(!var_209)
         {
            return null;
         }
         var _loc1_:int = this.method_656(true);
         var _loc2_:int = this.method_563(true);
         var _loc3_:Vector.<int> = super.method_111();
         if(_loc1_ == this.var_529 && _loc2_ == this.var_376)
         {
            if(!_loc3_)
            {
               _loc3_ = new Vector.<int>();
            }
            _loc3_.push(const_315.var_975);
         }
         return _loc3_;
      }
      
      public final function method_182(param1:Boolean = false) : void
      {
         this.var_376 = !!param1?int(this.method_563(true)):0;
         this.var_529 = !!param1?int(this.method_656(true)):0;
         this.method_368();
      }
      
      override public function method_110() : void
      {
         if(var_127.var_335)
         {
            return;
         }
         this.method_182();
         super.method_110();
      }
      
      override public function method_88() : void
      {
         super.method_88();
         this.method_182();
         this.method_110();
      }
   }
}
