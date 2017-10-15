package package_52
{
   import com.bigpoint.seafight.display.utils.getGrayScaleBitmapData;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_14.class_87;
   import package_17.class_54;
   import package_32.class_338;
   import package_32.class_64;
   import package_39.class_973;
   import package_5.class_12;
   import package_5.class_984;
   import package_51.class_148;
   import package_54.class_1006;
   import package_55.class_1007;
   import package_55.class_1008;
   import package_55.class_1009;
   import package_55.class_164;
   
   public class class_152 extends Sprite
   {
      
      protected static const const_80:ILogger = Log.getLogger("SubMenuCategory");
       
      
      protected var var_112:class_87;
      
      protected var var_48:SWFFinisher;
      
      protected var var_18:XML;
      
      protected var var_108:Array;
      
      protected var var_85:StyleSheet;
      
      protected var var_1054:Dictionary;
      
      protected var var_1127:Array;
      
      protected var var_1280:Dictionary;
      
      protected var var_2045:Dictionary;
      
      protected var var_196:Array;
      
      public function class_152()
      {
         this.var_112 = class_47.method_22;
         super();
      }
      
      public final function name_16(param1:XML, param2:StyleSheet, param3:SWFFinisher, param4:Boolean = true) : void
      {
         var _loc5_:Object = null;
         this.var_18 = param1;
         this.var_85 = param2;
         this.var_48 = param3;
         _loc5_ = this.var_85.getStyle(this.var_18.@style);
         this.scaleX = _loc5_.scale;
         this.scaleY = _loc5_.scale;
         this.alpha = _loc5_.alpha;
         this.visible = _loc5_.visible == "true";
         this.x = this.var_18.@xPos;
         this.y = this.var_18.@yPos;
         if(param4)
         {
            this.var_108 = new Array();
            this.var_1054 = new Dictionary();
            this.var_1127 = new Array();
            this.var_1280 = new Dictionary();
            this.var_196 = new Array();
            this.var_2045 = new Dictionary();
         }
      }
      
      public final function method_305(param1:XML = null, param2:Function = null, param3:Function = null) : void
      {
         this.method_1665(this.var_18);
         this.method_2540(this.var_18,param2);
         this.method_2726(this.var_18);
         this.method_1936(this.var_18,param3);
         this.method_1926(this.var_18);
         this.loadXMLLocalDisplaySettings(param1);
      }
      
      protected final function method_1665(param1:XML) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1["textField"])
         {
            addChild(this.method_744(_loc2_));
         }
      }
      
      protected final function method_744(param1:XML) : TextField
      {
         var _loc2_:Object = this.var_85.getStyle(param1.@style);
         var _loc3_:TextField = new TextField();
         if(param1.@width != undefined && param1.@height != undefined)
         {
            _loc3_.width = param1.@width;
            _loc3_.height = param1.@height;
         }
         else
         {
            _loc3_.autoSize = _loc2_["autoSize"] != null?_loc2_["autoSize"]:"left";
         }
         _loc3_.border = _loc2_["border"] == "true";
         _loc3_.borderColor = _loc2_["borderColor"];
         _loc3_.mouseEnabled = _loc2_["mouseEnabled"] == "true";
         _loc3_.selectable = _loc2_["selectable"] == "true";
         _loc3_.multiline = _loc2_["multiline"] == "true";
         _loc3_.wordWrap = _loc2_["wordWrap"] == "true";
         _loc3_.defaultTextFormat = this.var_85.transform(_loc2_);
         _loc3_.x = Number(param1.@xPos) || Number(0);
         _loc3_.y = Number(param1.@yPos) || Number(0);
         _loc3_.htmlText = this.var_112.method_28(param1.@resKey);
         _loc3_.visible = param1["visible"] != "false";
         if(String(_loc2_["puls"]) == "true")
         {
            class_1010.method_1603(_loc3_);
         }
         this.var_2045[String(param1.@resKey)] = _loc3_;
         return _loc3_;
      }
      
      protected final function method_2726(param1:XML) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1["checkBox"])
         {
            if(_loc2_.@useInEmbededMode == "false")
            {
               if(class_12.var_104 == class_12.const_130)
               {
                  continue;
               }
            }
            this.method_2532(_loc2_);
         }
      }
      
      protected final function method_2532(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc2_:class_1007 = new class_1007(this.var_48.getEmbeddedMovieClip(param1.@gfx),this.var_85,param1);
         _loc2_.method_162(param1.@onAction);
         _loc2_.method_376(this.var_18.labelFieldConfig[0]);
         _loc2_.method_106(this.var_112.method_28(param1.@resKey,false,true));
         _loc2_.addEventListener(class_148.const_13,class_54.method_21().method_129);
         _loc2_.x = param1.@xPos;
         _loc2_.y = param1.@yPos;
         if(param1.@width > 0)
         {
            _loc2_.method_947.width = param1.@width;
         }
         addChild(_loc2_);
         this.var_1054[String(param1.@onAction)] = _loc2_;
         this.var_196.push(_loc2_);
         if(param1.@defaultChecked == "true" || param1.@defaultChecked == "false")
         {
            _loc2_.method_174(param1.@defaultChecked == "true",false);
         }
         else
         {
            _loc2_.method_174(true,false);
         }
         if(String(param1["tooltipKey"]).length > 0)
         {
            _loc3_ = int(String(param1["tooltipShowDelay"]).length > 0?param1["tooltipShowDelay"]:class_338.const_591);
            class_64.method_21().method_84(_loc2_,this.var_112.method_28(param1["tooltipKey"]),null,_loc3_);
         }
      }
      
      public final function method_73(param1:String) : Boolean
      {
         var _loc2_:class_1007 = this.var_1054[param1] as class_1007;
         if(_loc2_ == null)
         {
            const_80.error("No checkbox with id " + param1);
            return false;
         }
         return _loc2_.method_217();
      }
      
      protected final function method_2540(param1:XML, param2:Function) : void
      {
         var _loc3_:XML = null;
         for each(_loc3_ in param1["radioBtnGrp"])
         {
            this.var_1280[String(_loc3_.@id)] = this.method_2765(_loc3_,param2);
            this.method_2208(this.var_1280[String(_loc3_.@id)],_loc3_,_loc3_.@vertical == "true");
         }
      }
      
      protected final function method_2765(param1:XML, param2:Function) : Array
      {
         var _loc4_:XML = null;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1["radioBtn"])
         {
            this.method_2839(_loc4_,_loc3_,param2);
         }
         return _loc3_;
      }
      
      protected final function method_2839(param1:XML, param2:Array, param3:Function) : class_1008
      {
         var _loc5_:int = 0;
         var _loc4_:class_1008 = new class_1008(this.var_48.getEmbeddedMovieClip(param1.@gfx),this.var_85,param1);
         _loc4_.method_162(param1.@onAction);
         _loc4_.method_376(this.var_18.labelFieldConfig[0]);
         _loc4_.method_106(this.var_112.method_28(param1.@resKey));
         _loc4_.addEventListener(class_148.const_13,param3);
         if(param1["tooltipKey"] != undefined)
         {
            _loc5_ = int(param1["tooltipShowDelay"] != undefined?param1["tooltipShowDelay"]:class_338.const_591);
            class_64.method_21().method_84(_loc4_,this.var_112.method_28(param1["tooltipKey"]),null,_loc5_);
         }
         addChild(_loc4_);
         param2.push(_loc4_);
         _loc4_.method_174(String(param1.@name_106) == "true",false);
         return _loc4_;
      }
      
      protected final function method_1106() : class_164
      {
         var _loc1_:class_164 = new class_164(this.var_85,this.var_18.config[0],this,this.var_48);
         return _loc1_;
      }
      
      protected final function method_2978() : Sprite
      {
         var _loc1_:Sprite = new Sprite();
         return _loc1_;
      }
      
      protected final function method_1936(param1:XML, param2:Function) : void
      {
         var _loc3_:XML = null;
         for each(_loc3_ in param1["slider"])
         {
            this.method_2620(_loc3_,param2);
         }
      }
      
      protected final function method_2620(param1:XML, param2:Function) : class_1009
      {
         var _loc4_:int = 0;
         var _loc3_:class_1009 = new class_1009(this.var_48.getEmbeddedBitmap(param1.@gfx),this.var_48.getEmbeddedBitmap(param1.@gfxBkg),this.var_85);
         _loc3_.name_16(param1);
         _loc3_.method_376(this.var_18.labelFieldConfig[0]);
         _loc3_.method_106(this.var_112.method_28(param1.@resKey));
         _loc3_.addEventListener(class_148.const_13,param2);
         if(param1["slideDefault"] != undefined)
         {
            _loc3_.method_174(param1["slideDefault"]);
         }
         if(param1["tooltipKey"] != undefined)
         {
            _loc4_ = int(param1["tooltipShowDelay"] != undefined?param1["tooltipShowDelay"]:class_338.const_591);
            class_64.method_21().method_84(_loc3_,this.var_112.method_28(param1["tooltipKey"]),null,_loc4_);
         }
         addChild(_loc3_);
         this.var_1127.push(_loc3_);
         return _loc3_;
      }
      
      protected final function method_1926(param1:XML) : void
      {
         var _loc2_:XML = null;
         for each(_loc2_ in param1["localBtn"])
         {
            this.method_1607(_loc2_);
         }
      }
      
      protected final function method_1607(param1:XML) : class_1006
      {
         var _loc2_:MovieClip = new MovieClip();
         _loc2_.addChild(this.var_48.getEmbeddedBitmap(param1.@gfx));
         var _loc3_:class_1006 = new class_1006(_loc2_);
         _loc3_.method_162(param1.@onAction);
         _loc3_.method_106(this.var_112.method_28(param1.@labelRes));
         _loc3_.x = param1.@xPos;
         _loc3_.y = param1.@yPos;
         _loc3_.addEventListener(class_148.const_13,class_54.method_21().method_129);
         addChild(_loc3_);
         if(param1.@tooltipKey != null && String(param1.@tooltipKey).length > 0)
         {
            class_64.method_21().method_84(_loc3_,class_47.method_22.method_28(String(param1.@tooltipKey)));
         }
         return _loc3_;
      }
      
      private final function method_2208(param1:Array, param2:XML, param3:Boolean) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            param1[_loc4_].x = 0;
            param1[_loc4_].y = 0;
            _loc5_ = _loc4_ - 1;
            if(param3)
            {
               param1[_loc4_].x = param2.@xPos + 3;
               if(_loc5_ >= 0)
               {
                  param1[_loc4_].y = param1[_loc5_].y + param1[_loc5_].height + 3;
               }
            }
            else
            {
               if(_loc5_ >= 0)
               {
                  param1[_loc4_].x = 3 + param1[_loc5_].x + param1[_loc5_].width + 3;
               }
               param1[_loc4_].y = param2.@yPos;
            }
            _loc4_++;
         }
      }
      
      protected function method_407(param1:int = 0, param2:int = 0) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc3_:int = this.var_18.@columns;
         var _loc4_:int = this.var_18.@rows;
         var _loc5_:int = this.var_18.@hSpacer;
         var _loc6_:int = this.var_18.@vSpacer;
         var _loc9_:int = 0;
         while(_loc9_ < this.var_196.length)
         {
            _loc10_ = _loc9_ + 1;
            if(this.var_18.@place == "vert")
            {
               if(_loc9_ / _loc4_ < _loc3_)
               {
                  _loc8_ = Math.ceil(_loc10_ / _loc4_);
                  _loc7_ = _loc10_ % _loc4_;
                  if(_loc7_ == 0)
                  {
                     _loc7_ = _loc4_;
                  }
                  if(_loc8_ == 0)
                  {
                     _loc8_++;
                  }
                  this.var_196[_loc9_].x = param1 + (this.var_196[_loc9_].width + new Number(_loc5_)) * (_loc8_ - 1) + 3;
                  this.var_196[_loc9_].y = param2 + (this.var_196[_loc9_].height + new Number(_loc6_)) * (_loc7_ - 1);
               }
               else
               {
                  const_80.warn("To much Items to place!");
               }
            }
            else if(this.var_18.@place == "horz")
            {
               if(_loc9_ / _loc3_ < _loc4_)
               {
                  _loc7_ = Math.ceil(_loc10_ / _loc3_);
                  _loc11_ = Math.floor(_loc10_ / _loc3_) * _loc3_;
                  _loc8_ = _loc10_ - _loc11_;
                  if(_loc7_ == 0)
                  {
                     _loc7_++;
                  }
                  if(_loc8_ == 0)
                  {
                     _loc8_ = _loc3_;
                  }
                  this.var_196[_loc9_].x = param1 + (this.var_196[_loc9_].width + new Number(_loc5_)) * (_loc8_ - 1) + 3;
                  this.var_196[_loc9_].y = param2 + (this.var_196[_loc9_].height + new Number(_loc6_)) * (_loc7_ - 1);
               }
               else
               {
                  const_80.warn("To much Items to place!");
               }
            }
            _loc9_++;
         }
      }
      
      protected final function method_154(param1:String, param2:int) : void
      {
         var _loc6_:class_1008 = null;
         var _loc3_:Array = (this.var_1280[param1] as Array).concat();
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = _loc3_[_loc5_] as class_1008;
            if(_loc5_ != param2)
            {
               _loc6_.method_1507(false);
            }
            else if(_loc5_ == param2)
            {
               _loc6_.method_1507(true);
            }
            _loc5_++;
         }
      }
      
      private final function loadXMLLocalDisplaySettings(param1:XML) : void
      {
         if(param1)
         {
            this.loadXMLRadioButton(param1);
            this.loadXMLCheckBoxes(param1);
            this.loadXMLSlider(param1);
         }
      }
      
      private final function loadXMLSlider(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:int = 0;
         var _loc4_:class_1009 = null;
         for each(_loc2_ in param1["slider"])
         {
            _loc3_ = 0;
            while(_loc3_ < this.var_1127.length)
            {
               _loc4_ = this.var_1127[_loc3_];
               if(_loc4_.method_1495() == _loc2_.@target)
               {
                  _loc4_.method_174(new Number(_loc2_.@value));
               }
               _loc3_++;
            }
         }
      }
      
      public final function method_176(param1:String) : class_1009
      {
         var _loc3_:class_1009 = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_1127.length)
         {
            _loc3_ = this.var_1127[_loc2_];
            if(_loc3_.method_1495() == param1)
            {
               return _loc3_;
            }
            _loc2_++;
         }
         return null;
      }
      
      private final function loadXMLCheckBoxes(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:class_1007 = null;
         for each(_loc2_ in param1["checkBox"])
         {
            _loc3_ = this.var_1054[String(_loc2_.@onAction)];
            if(_loc3_ != null)
            {
               _loc3_.method_174(_loc2_.@state == "true");
            }
         }
      }
      
      private final function loadXMLRadioButton(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:class_1008 = null;
         for each(_loc2_ in param1["radioBtn"])
         {
            for each(_loc3_ in this.var_1280)
            {
               _loc4_ = 0;
               while(_loc4_ < _loc3_.length)
               {
                  _loc5_ = _loc3_[_loc4_] as class_1008;
                  if(_loc5_.method_58() == _loc2_.@onAction)
                  {
                     _loc5_.method_174(_loc2_.@state == "true");
                  }
                  _loc4_++;
               }
            }
         }
      }
      
      public function get method_657() : Dictionary
      {
         return this.var_1054;
      }
      
      public function get method_2562() : Dictionary
      {
         return this.var_2045;
      }
      
      public final function method_87(param1:String, param2:Boolean, param3:Boolean = true) : void
      {
         var _loc4_:class_1007 = this.var_1054[param1] as class_1007;
         if(_loc4_)
         {
            _loc4_.method_174(param2,param3);
         }
         else
         {
            const_80.error("checkbox missing " + param1);
         }
      }
   }
}
