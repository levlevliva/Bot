package package_17
{
   import com.adobe.serialization.json.JSONTokenType;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropSwapCommand;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.gempopup.pet.component.GemPopupPetTab;
   import com.bigpoint.seafight.view.popups.gempopup.pet.controller.GemPopupPetTabController;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuComponent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.GemOverviewListSkin;
   import com.greensock.TweenMax;
   import com.greensock.events.TweenEvent;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.events.CloseEvent;
   import mx.events.DragEvent;
   import mx.graphics.SolidColorStroke;
   import mx.managers.PopUpManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_584;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_111.class_741;
   import package_111.class_774;
   import package_14.class_47;
   import package_14.class_87;
   import package_15.class_48;
   import package_166.class_1502;
   import package_170.class_979;
   import package_171.class_981;
   import package_23.class_42;
   import package_3.class_10;
   import package_34.class_1053;
   import package_34.class_1526;
   import package_34.class_73;
   import package_36.class_100;
   import package_41.class_93;
   import package_43.class_105;
   import package_43.class_266;
   import package_5.class_22;
   import package_5.class_940;
   import package_50.class_141;
   import package_51.class_1355;
   import package_58.class_175;
   import package_6.class_14;
   import package_61.class_597;
   import package_72.class_203;
   import package_74.class_253;
   import package_90.class_464;
   import package_92.class_1278;
   import package_92.class_944;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichEditableText;
   import spark.components.gridClasses.GridLayer;
   import spark.primitives.Rect;
   
   public final class class_537 extends class_10
   {
      
      private static var var_1572:class_537;
      
      public static const const_2107:int = 300000;
      
      public static const const_2072:int = 0;
       
      
      public var var_1976:Boolean = false;
      
      private var var_394:Sprite;
      
      private var var_559:Timer;
      
      public function class_537()
      {
         super();
         this.var_394 = new Sprite();
         CentralEventUnit.addEventListener(class_943.const_338,this.method_304);
         CentralEventUnit.addEventListener(class_943.const_574,this.method_304);
         method_23(class_464.name_3,this.onScoutRangeMessage);
      }
      
      public static function method_21() : class_537
      {
         if(var_1572 == null)
         {
            var_1572 = new class_537();
         }
         return var_1572;
      }
      
      public static function method_1129(param1:Dictionary) : Array
      {
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc2_:Array = new Array();
         for(_loc3_ in param1)
         {
            _loc4_ = {};
            _loc4_["key"] = _loc3_;
            _loc4_["value"] = param1[_loc3_];
            _loc2_.push(_loc4_);
         }
         _loc2_.sortOn("value",Array.NUMERIC);
         _loc2_.reverse();
         return _loc2_;
      }
      
      private final function onScoutRangeMessage(param1:class_14) : void
      {
         var _loc8_:Object = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc2_:class_464 = param1 as class_464;
         this.method_992();
         var _loc3_:Dictionary = new Dictionary();
         _loc3_["cannonRange"] = _loc2_.var_503;
         _loc3_["healCannonRange"] = _loc2_.var_481;
         _loc3_["harpoonRange"] = _loc2_.var_489;
         _loc3_["boardingRange"] = _loc2_.name_57;
         var _loc4_:Array = method_1129(_loc3_);
         var _loc5_:class_87 = class_47.method_22;
         var _loc6_:String = "";
         var _loc7_:int = 0;
         while(_loc7_ < _loc4_.length)
         {
            _loc8_ = _loc4_[_loc7_];
            _loc9_ = _loc8_["value"];
            _loc10_ = _loc8_["key"];
            if(_loc9_ > 0)
            {
               if(_loc7_ + 1 < _loc4_.length && _loc9_ > _loc4_[_loc7_ + 1]["value"])
               {
                  if(_loc6_ == "")
                  {
                     this.method_960(_loc9_,_loc5_.method_28(_loc10_));
                     _loc6_ = "";
                  }
                  else
                  {
                     this.method_960(_loc9_,_loc6_ + _loc5_.method_28(_loc10_));
                     _loc6_ = "";
                  }
               }
               else if(_loc7_ + 1 < _loc4_.length)
               {
                  _loc6_ = _loc6_ + (_loc5_.method_28(_loc4_[_loc7_]["key"]) + "<br/>");
               }
               else
               {
                  this.method_960(_loc9_,_loc6_ + _loc5_.method_28(_loc10_));
               }
            }
            _loc7_++;
         }
         class_47.method_29.method_75.method_230().addChild(this.var_394);
         this.method_662(null);
         if(this.var_559 == null)
         {
            this.var_559 = new Timer(500);
         }
         if(this.var_559.running)
         {
            this.var_559.stop();
            this.var_559.removeEventListener(TimerEvent.TIMER,this.method_662);
         }
         this.var_559.addEventListener(TimerEvent.TIMER,this.method_662);
         this.var_559.start();
         this.var_1976 = true;
         this.method_304();
      }
      
      public final function method_992() : void
      {
         var _loc2_:class_100 = null;
         var _loc3_:Array = null;
         var _loc4_:class_175 = null;
         if(false == this.var_1976)
         {
            return;
         }
         this.var_1976 = false;
         if(this.var_394 && this.var_394.parent)
         {
            this.var_394.graphics.clear();
         }
         class_122.method_2400(this.var_394);
         if(this.var_559)
         {
            this.var_559.stop();
            this.var_559.removeEventListener(TimerEvent.TIMER,this.method_662);
            this.var_559 = null;
         }
         var _loc1_:Array = class_47.method_29.method_880(true);
         for each(_loc2_ in _loc1_)
         {
            _loc2_.method_145(_loc2_.method_33.var_44,_loc2_.method_33.name_4,_loc2_.method_33.var_154,false,false);
         }
         _loc3_ = class_47.method_165.method_1367();
         for each(_loc4_ in _loc3_)
         {
            _loc4_.method_145(_loc4_.method_128.var_44,_loc4_.method_128.name_4,"",false,false);
         }
      }
      
      private final function method_304(param1:class_943 = null) : void
      {
         var _loc6_:Sprite = null;
         if(!this.var_394)
         {
            return;
         }
         var _loc2_:Number = !!param1?Number(param1.method_117):Number(class_141.var_99);
         var _loc3_:Number = 1 / _loc2_;
         var _loc4_:int = this.var_394.numChildren;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = (this.var_394.getChildAt(_loc5_) as Sprite).getChildAt(0) as Sprite;
            if(_loc6_)
            {
               _loc6_.scaleX = _loc3_;
               _loc6_.scaleY = _loc3_;
            }
            _loc5_++;
         }
      }
      
      private final function method_662(param1:TimerEvent) : void
      {
         var _loc3_:class_100 = null;
         var _loc4_:Array = null;
         var _loc5_:class_175 = null;
         var _loc2_:Array = class_47.method_29.method_880(true);
         for each(_loc3_ in _loc2_)
         {
            if(class_47.method_48.method_286(_loc3_,false))
            {
               _loc3_.method_145(_loc3_.method_33.var_44,_loc3_.method_33.name_4,_loc3_.method_33.var_154,false,true);
            }
            else
            {
               _loc3_.method_145(_loc3_.method_33.var_44,_loc3_.method_33.name_4,_loc3_.method_33.var_154,false,false);
            }
         }
         _loc4_ = class_47.method_165.method_1367();
         for each(_loc5_ in _loc4_)
         {
            if(class_47.method_48.method_286(_loc5_,false))
            {
               _loc5_.method_145(_loc5_.method_128.var_44,_loc5_.method_128.name_4,"",false,true);
            }
            else
            {
               _loc5_.method_145(_loc5_.method_128.var_44,_loc5_.method_128.name_4,"",false,false);
            }
         }
      }
      
      private final function method_960(param1:Number, param2:String) : void
      {
         var _loc3_:Number = NaN;
         _loc3_ = param1 + 0.5;
         var _loc4_:int = _loc3_ * class_940.const_312;
         var _loc5_:int = _loc3_ * class_940.const_427;
         var _loc6_:Number = 2 * _loc4_;
         var _loc7_:Number = 2 * _loc5_;
         var _loc8_:int = class_22.const_1794 - 1;
         if(_loc6_ > _loc8_)
         {
            _loc6_ = _loc8_;
         }
         if(_loc7_ > _loc8_)
         {
            _loc7_ = _loc8_;
         }
         this.var_394.graphics.lineStyle(1,12632256,0.3);
         this.var_394.graphics.drawEllipse(-_loc4_,-_loc5_,_loc6_,_loc7_);
         this.var_394.graphics.endFill();
         var _loc9_:TextFormat = new TextFormat();
         _loc9_.font = "Verdana";
         _loc9_.size = 11;
         _loc9_.color = 12632256;
         _loc9_.align = TextFormatAlign.CENTER;
         var _loc10_:Sprite = new Sprite();
         var _loc11_:TextField = new TextField();
         _loc11_.defaultTextFormat = _loc9_;
         _loc11_.wordWrap = true;
         _loc11_.multiline = true;
         _loc11_.htmlText = param2;
         _loc11_.autoSize = "left";
         _loc11_.alpha = 0.3;
         _loc11_.width = 200;
         _loc11_.x = -_loc11_.width * 0.5;
         _loc11_.y = -_loc11_.height * 0.5;
         _loc11_.mouseEnabled = false;
         _loc10_.y = _loc5_ + _loc11_.height;
         _loc10_.addChild(_loc11_);
         this.var_394.addChild(_loc10_);
      }
   }
}
