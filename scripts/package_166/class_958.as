package package_166
{
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.model.vo.class_1037;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_1371;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.shipcoverflow.components.ShipCoverFlowItem;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.GuildColor;
   import com.greensock.TweenLite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flashx.textLayout.formats.TextAlign;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_101.class_511;
   import package_104.class_448;
   import package_114.class_430;
   import package_125.class_497;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_16.class_28;
   import package_185.class_1136;
   import package_190.class_1562;
   import package_216.class_1575;
   import package_220.class_1601;
   import package_46.class_1493;
   import package_47.class_135;
   import package_47.class_833;
   import package_47.class_861;
   import package_49.class_880;
   import package_51.class_1082;
   import package_58.class_175;
   import package_6.class_14;
   import package_88.class_967;
   import package_9.class_91;
   import package_92.class_336;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   public final class class_958 extends Sprite
   {
       
      
      private var var_5:Dictionary;
      
      private var var_922:Vector.<BuffCountVo>;
      
      private var name_79:TextField;
      
      public function class_958()
      {
         super();
         this.var_5 = new Dictionary();
         this.var_922 = new Vector.<BuffCountVo>();
         this.y = -110;
         this.name_79 = createText("",32,16777215);
         this.name_79.autoSize = TextFieldAutoSize.RIGHT;
         this.name_79.defaultTextFormat.align = TextAlign.RIGHT;
         this.name_79.y = -class_967.const_37 - 2;
         addChild(this.name_79);
      }
      
      private static function method_734(param1:BuffCountVo, param2:BuffCountVo) : int
      {
         var _loc3_:int = param1.time.method_130();
         var _loc4_:int = param2.time.method_130();
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         return 0;
      }
      
      public final function method_34() : void
      {
         var _loc2_:BuffCountVo = null;
         var _loc3_:Number = NaN;
         var _loc1_:int = 0;
         if(this.var_922.length > 0)
         {
            this.name_79.text = this.var_922[0].time.method_240().toString();
         }
         else if(this.name_79.text.length > 0)
         {
            this.name_79.text = "";
         }
         this.name_79.x = -this.name_79.width - 6;
         for each(_loc2_ in this.var_922)
         {
            _loc3_ = _loc1_ > 0?Number(0.666):Number(1);
            TweenLite.to(_loc2_.icon,0.3,{
               "x":_loc1_,
               "scaleX":_loc3_,
               "scaleY":_loc3_
            });
            _loc1_ = _loc1_ + (_loc2_.icon.width + (_loc1_ > 0?1:0));
         }
      }
      
      public final function name_49(param1:class_430) : void
      {
         var _loc2_:int = param1.var_845;
         if(_loc2_ <= 0)
         {
            return;
         }
         var _loc3_:BuffCountVo = new BuffCountVo();
         _loc3_.icon = this.method_1620(param1.var_22);
         _loc3_.time = new class_1225(_loc2_);
         _loc3_.time.addEventListener(Event.COMPLETE,this.method_1223);
         this.var_5[_loc3_.id] = _loc3_;
         _loc3_.icon.scaleY = 0.1;
         _loc3_.icon.scaleX = 0.1;
         addChildAt(_loc3_.icon,0);
         TweenLite.to(_loc3_.icon,0.3,{
            "scaleX":1,
            "scaleY":1
         });
         this.method_1506();
         this.method_34();
      }
      
      private final function method_1620(param1:int) : Sprite
      {
         var _loc2_:Bitmap = class_967.method_806(param1);
         var _loc3_:Sprite = new Sprite();
         _loc2_.y = -class_967.const_37;
         _loc3_.addChild(_loc2_);
         return _loc3_;
      }
      
      private final function method_881(param1:int) : void
      {
         var b:BuffCountVo = null;
         var id:int = param1;
         b = this.var_5[id] as BuffCountVo;
         b.time.removeEventListener(Event.COMPLETE,this.method_1223);
         TweenLite.to(b.icon,0.3,{
            "scaleX":0.1,
            "scaleY":0.1,
            "onComplete":function():void
            {
               removeChild(b.icon);
            }
         });
         delete this.var_5[b.id];
      }
      
      private final function method_1223(param1:Event) : void
      {
         var _loc2_:BuffCountVo = this.method_2210();
         this.method_881(_loc2_.id);
         this.method_1506();
      }
      
      private final function method_2210() : BuffCountVo
      {
         var _loc1_:BuffCountVo = null;
         for each(_loc1_ in this.var_5)
         {
            if(_loc1_.time.method_240() > 0)
            {
               continue;
            }
            return _loc1_;
         }
         return null;
      }
      
      private final function method_1506() : void
      {
         var _loc1_:BuffCountVo = null;
         this.var_922.length = 0;
         for each(_loc1_ in this.var_5)
         {
            this.var_922.push(_loc1_);
         }
         this.var_922.sort(method_734);
      }
   }
}

import com.bigpoint.seafight.model.vo.class_1225;
import flash.display.Sprite;

class BuffCountVo
{
   
   private static var ID:int = 0;
    
   
   public var id:int;
   
   public var icon:Sprite;
   
   public var time:class_1225;
   
   function BuffCountVo()
   {
      super();
      this.id = ++ID;
   }
}
