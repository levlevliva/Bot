package package_88
{
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.common.skins.hslider.HSliderTrackSkin;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_710;
   import package_104.class_989;
   import package_130.class_663;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_96;
   import package_152.class_776;
   import package_16.class_28;
   import package_17.class_54;
   import package_186.class_1137;
   import package_190.class_1181;
   import package_32.class_64;
   import package_34.class_1272;
   import package_43.class_1189;
   import package_5.class_123;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_43;
   import package_54.class_319;
   import package_55.class_1017;
   import package_7.class_1039;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   public final class class_967 extends class_966
   {
      
      public static const const_35:int = 38;
      
      public static const const_37:int = 38;
      
      public static var var_1246:int = 1;
      
      public static const const_1146:String = "infoIcon_";
      
      private static const const_371:TextFormat = new TextFormat("Arial",10,16777215,false);
      
      private static const const_913:TextFormat = new TextFormat("Arial",10,16711680,false);
      
      private static const const_855:TextFormat = new TextFormat("Arial",10,39219,false);
      
      private static const const_358:Dictionary = new Dictionary();
       
      
      private var var_513:int;
      
      private var var_265:TextField;
      
      private var var_1877:TextField;
      
      private var var_925:TextFormat;
      
      public var var_219:class_1225;
      
      public var var_1106:Number;
      
      private var var_1786:String;
      
      public var var_1909:String = "";
      
      public function class_967(param1:int)
      {
         super();
         this.var_513 = param1;
         this.var_1106 = var_1246 = var_1246 + 1;
         this.var_925 = const_371;
      }
      
      public static function method_509(param1:int) : BitmapData
      {
         var fin:SWFFinisher = null;
         var id:int = param1;
         var b:BitmapData = const_358[id] as BitmapData;
         if(b)
         {
            return b;
         }
         fin = getSWFFinisher(class_123.const_405);
         try
         {
            b = fin.getEmbeddedBitmapData(const_1146 + id);
         }
         catch(e:Error)
         {
            §§push(_loc2_);
            §§push(fin);
            §§push(const_1146);
            §§push(0);
            if(_loc5_)
            {
               §§push(-§§pop() - 1 + 32 - 1 + 1 + 70);
            }
            var /*UnknownSlot*/:* = §§pop().getEmbeddedBitmapData(§§pop() + §§pop());
         }
         const_358[id] = b;
         return b;
      }
      
      public static function method_806(param1:int) : Bitmap
      {
         return new Bitmap(method_509(param1));
      }
      
      public static function method_368() : TextField
      {
         var _loc1_:TextField = null;
         _loc1_ = new TextField();
         _loc1_.multiline = false;
         _loc1_.selectable = false;
         _loc1_.mouseEnabled = false;
         _loc1_.autoSize = TextFieldAutoSize.LEFT;
         _loc1_.border = false;
         _loc1_.y = const_37 - 3;
         _loc1_.defaultTextFormat = const_371;
         return _loc1_;
      }
      
      public final function name_16() : void
      {
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.method_1958();
         addChild(this.var_265 = method_368());
         this.var_1909 = "";
      }
      
      public final function method_1819(param1:Number) : void
      {
         if(this.var_219)
         {
            this.var_219.method_77(param1);
         }
         else
         {
            this.var_219 = new class_1225(param1);
         }
      }
      
      public final function method_1846(param1:int) : void
      {
         if(this.var_1877 == null)
         {
            addChild(this.var_1877 = this.method_1913());
         }
         this.var_1877.text = param1.toString();
      }
      
      public final function method_54() : void
      {
         if(this.var_219)
         {
            this.var_219.method_36();
            this.var_219 = null;
         }
      }
      
      private final function method_1958() : void
      {
         var _loc1_:BitmapData = method_509(this.var_513);
         var _loc2_:Bitmap = new Bitmap(_loc1_);
         addChild(_loc2_);
      }
      
      private final function method_1913() : TextField
      {
         var _loc1_:TextField = new TextField();
         _loc1_.defaultTextFormat = const_855;
         _loc1_.mouseEnabled = false;
         _loc1_.width = 20;
         _loc1_.height = this.height;
         _loc1_.x = 1;
         _loc1_.y = -2;
         _loc1_.filters = [new GlowFilter(0,1,2,2,10)];
         return _loc1_;
      }
      
      public final function method_1970() : void
      {
         new TimelineMax({
            "tweens":[TweenMax.to(this,0.5,{"glowFilter":{
               "color":16763955,
               "inner":true,
               "alpha":1,
               "blurX":15,
               "blurY":15
            }}),TweenMax.to(this,0.5,{"glowFilter":{
               "color":16763955,
               "inner":true,
               "alpha":1,
               "blurX":0,
               "blurY":0
            }})],
            "align":TweenAlign.SEQUENCE
         });
      }
      
      public final function method_889(param1:Vector.<class_1189>) : void
      {
         var _loc4_:class_1189 = null;
         var _loc5_:Vector.<class_1181> = null;
         if(!param1)
         {
            return;
         }
         class_64.method_21().method_287(this);
         var _loc2_:* = "<b>" + class_96.method_20(class_96.const_923,this.var_513.toString()) + "</b>";
         var _loc3_:Boolean = true;
         for each(_loc4_ in param1)
         {
            _loc5_ = !!_loc4_?_loc4_.var_599:null;
            if(_loc3_ && (_loc5_ && _loc5_.length > 0 || _loc4_.var_35 > 0))
            {
               _loc2_ = _loc2_ + ":";
               _loc3_ = false;
            }
            _loc2_ = _loc2_ + (class_22.const_10 + class_1137.method_811(_loc4_.var_2340).method_894());
         }
         class_64.method_21().method_84(this,this.var_1786 = _loc2_,class_47.method_49);
         this.var_1909 = this.var_1786;
      }
      
      public final function method_1149() : void
      {
         if(this.var_219 == null)
         {
            return;
         }
         var _loc1_:Number = this.method_1005();
         this.var_925 = _loc1_ > 10000?const_371:const_913;
         var _loc2_:int = 0;
         var _loc3_:String = class_125.const_541;
         if(_loc1_ / class_125.const_889 >= 1)
         {
            _loc2_ = class_125.const_889;
            _loc3_ = class_125.const_541;
         }
         if(_loc1_ / class_125.const_473 >= 1)
         {
            _loc2_ = class_125.const_473;
            _loc3_ = class_125.const_716;
         }
         if(_loc1_ / class_125.const_325 >= 1)
         {
            _loc2_ = class_125.const_325;
            _loc3_ = class_125.const_891;
         }
         if(_loc1_ / class_125.const_570 >= 1)
         {
            _loc2_ = class_125.const_570;
            _loc3_ = class_125.const_766;
         }
         var _loc4_:Number = Math.round(_loc1_ / _loc2_);
         if(_loc4_ <= 1 || _loc4_ == Number.POSITIVE_INFINITY)
         {
            _loc4_ = 1;
         }
         _loc3_ = _loc3_.replace(class_22.const_6,_loc4_);
         this.method_257(_loc3_);
      }
      
      public final function method_1005() : Number
      {
         return !!this.var_219?Number(this.var_219.method_130()):Number(0);
      }
      
      public final function method_3001() : Number
      {
         return this.var_1106;
      }
      
      public final function method_257(param1:String) : void
      {
         this.var_265.text = !!param1?param1:"";
         this.var_265.x = (const_35 - this.var_265.width) * 0.5;
         this.var_265.setTextFormat(this.var_925);
      }
      
      public final function method_2529() : String
      {
         return this.var_1786;
      }
      
      public function get name_7() : int
      {
         return this.var_513;
      }
   }
}
