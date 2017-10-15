package package_52
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.tools.class_181;
   import com.greensock.TweenLite;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.IDataInput;
   import flashx.textLayout.formats.TextAlign;
   import package_14.class_225;
   import package_14.class_25;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_26.class_1086;
   import package_51.class_148;
   import package_53.class_1100;
   import package_54.class_158;
   import package_54.class_319;
   import spark.components.ToggleButton;
   
   public class class_302 extends class_167
   {
      
      private static const const_1216:String = "iconpouch";
      
      private static const const_612:String = "handleQuickBuy.php";
      
      private static const const_1257:String = "tooLittleGold";
      
      private static const const_1190:String = "tooLittlePearls";
      
      private static const const_616:String = "gold";
      
      private static const const_464:String = "pearls";
       
      
      protected var var_2236:XML;
      
      protected var var_2422:String;
      
      protected var var_2024:String;
      
      protected var var_980:Array;
      
      protected var var_181:TextField;
      
      protected var var_308:class_1100;
      
      protected var var_582:TextField;
      
      protected var var_1043:int;
      
      protected var var_62:int;
      
      protected var var_309:String;
      
      protected var var_1433:Boolean;
      
      protected var var_1307:Number;
      
      protected var var_1221:Number;
      
      protected var var_557:int = 0;
      
      private var var_655:Sprite;
      
      private var var_505:TextField;
      
      private var var_2043:int = 18;
      
      public function class_302(param1:String, param2:String, param3:int, param4:int, param5:Array)
      {
         super();
         this.var_980 = param5;
         this.var_2024 = param1;
         this.var_2422 = param2;
         var_37 = param3;
         var_46 = param4;
      }
      
      private final function method_1990(param1:MouseEvent) : void
      {
         var _loc2_:URLLoader = null;
         var _loc3_:URLRequest = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:class_1100 = null;
         var _loc7_:TextField = null;
         if(!this.method_1494(int(this.var_181.text)))
         {
            CentralEventUnit.dispatchEvent(new class_1086(class_1086.const_954,class_1086.const_430));
            class_47.method_24.var_12.messageBoxContainer.method_348(this.var_308);
            _loc2_ = new URLLoader();
            _loc3_ = this.method_1646(this.var_1043,this.var_2024,parseInt(this.var_181.text));
            _loc2_.addEventListener(Event.COMPLETE,this.method_1868);
            this.method_1353("send");
            _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.method_1774);
            _loc2_.load(_loc3_);
         }
         else
         {
            _loc4_ = new Array(this.method_151);
            _loc5_ = new Array(var_112.method_20("ok"));
            _loc6_ = class_47.method_24.var_12.messageBoxContainer.method_252(_loc4_,_loc5_);
            _loc6_.name_42(var_112.method_20("txerror"));
            class_47.method_24.var_12.messageBoxContainer.method_348(this.var_308);
            _loc7_ = this.method_318(var_112.method_20(!!this.var_1433?const_1190:const_1257),const_151,200);
            _loc6_.addChild(_loc7_);
            _loc7_.x = 70;
            _loc7_.y = 50;
         }
      }
      
      private final function method_2340() : Sprite
      {
         this.var_655 = new Sprite();
         this.var_655.x = 165;
         this.var_655.y = 83;
         this.var_655.addChild(var_48.getEmbeddedBitmap(const_1763));
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Sprite = new Sprite();
         _loc3_.graphics.beginFill(16711680,0);
         _loc3_.graphics.drawRect(0,0,15,9);
         _loc3_.graphics.endFill();
         _loc4_.graphics.beginFill(65280,0);
         _loc4_.graphics.drawRect(0,0,15,9);
         _loc4_.graphics.endFill();
         _loc3_.x = this.var_655.width - _loc3_.width;
         _loc4_.x = this.var_655.width - _loc4_.width;
         _loc4_.y = 9;
         this.var_655.addChild(_loc3_);
         this.var_655.addChild(_loc4_);
         _loc3_.addEventListener(MouseEvent.MOUSE_DOWN,this.method_2504);
         _loc4_.addEventListener(MouseEvent.MOUSE_DOWN,this.method_2287);
         return this.var_655;
      }
      
      private final function method_2704(param1:String) : Sprite
      {
         var bmp:Bitmap = null;
         var name:String = param1;
         var bg:Sprite = new Sprite();
         bg.addChild(var_48.getEmbeddedBitmap(const_1139));
         try
         {
            bmp = var_48.getEmbeddedBitmap(name);
         }
         catch(e:Error)
         {
            bmp = var_48.getEmbeddedBitmap(const_220);
         }
         bg.addChild(bmp);
         bmp.x = (bg.width - bmp.width) * 0.5;
         bmp.y = (bg.height - bmp.height) * 0.5;
         bg.x = 10;
         bg.y = 30;
         var iconpouch:Bitmap = var_48.getEmbeddedBitmap(const_1216);
         iconpouch.x = 2;
         iconpouch.y = 2;
         bg.addChild(iconpouch);
         return bg;
      }
      
      protected final function method_501(param1:int) : XML
      {
         var type:String = null;
         var xml:XMLList = null;
         var id:int = param1;
         type = this.var_2024;
         xml = this.var_2236["buy"][0]["items"].(@type == type)[0]["item"].(@itemID == id);
         return xml[0];
      }
      
      private final function method_1953() : URLRequest
      {
         var _loc1_:URLVariables = new URLVariables();
         _loc1_["init"] = "data";
         return class_181.method_756(class_51.var_1008 + const_612,_loc1_);
      }
      
      private final function method_1646(param1:int, param2:String, param3:int) : URLRequest
      {
         var _loc4_:URLVariables = class_25.method_2852();
         _loc4_["itemID"] = param1;
         _loc4_["itemType"] = param2;
         _loc4_["itemAmount"] = param3;
         return class_181.method_756(class_51.var_1008 + const_612,_loc4_);
      }
      
      private final function method_1868(param1:Event) : void
      {
         this.method_958();
         var _loc2_:XML = new XML(param1.target["data"]);
         this.method_1916(_loc2_);
         var _loc3_:Array = new Array(this.method_151);
         var _loc4_:Array = new Array(var_112.method_20("ok"));
         var _loc5_:class_1100 = class_47.method_24.var_12.messageBoxContainer.method_252(_loc3_,_loc4_);
         _loc5_.name_42(var_112.method_20("messagebox_cannonBallsBuy_title"));
         _loc5_.method_970(".subMenBtnInfoTxtYellow");
         var _loc6_:String = _loc2_["result"];
         if(!(_loc6_ && _loc6_ != ""))
         {
            _loc6_ = _loc2_["error"];
         }
         if(!_loc6_ || _loc6_ == "")
         {
            _loc6_ = "error";
         }
         _loc5_.method_295(_loc6_);
         _loc5_.method_793();
         CentralEventUnit.dispatchEvent(new class_1086(class_1086.const_984,class_1086.const_430));
      }
      
      private final function method_151(param1:MouseEvent) : void
      {
         class_47.method_24.var_12.messageBoxContainer.method_348((param1.target as DisplayObject).parent.parent);
      }
      
      private final function method_1916(param1:XML) : void
      {
         class_25.method_1723(param1);
      }
      
      protected final function method_2504(param1:MouseEvent) : void
      {
         if(this.var_557 + 1 <= this.var_980.length - 1)
         {
            if(!this.method_1494(this.var_980[this.var_557 + 1]))
            {
               this.var_557++;
               this.var_181.text = String(this.var_980[this.var_557]);
            }
         }
         this.method_918();
      }
      
      protected final function method_2287(param1:MouseEvent) : void
      {
         if(this.var_557 - 1 >= 0)
         {
            this.var_557--;
            this.var_181.text = String(this.var_980[this.var_557]);
         }
         this.method_918();
      }
      
      private final function method_641(param1:IOErrorEvent) : void
      {
         const_3.fatal("Error in " + const_612 + ": " + param1.toString());
      }
      
      private final function method_1774(param1:IOErrorEvent) : void
      {
         const_3.fatal("Buy Error in " + const_612 + ": " + param1.toString());
         CentralEventUnit.dispatchEvent(new class_1086(class_1086.const_1060,class_1086.const_430));
      }
      
      private final function method_1353(param1:String = "load") : void
      {
         if(param1 == "load")
         {
            this.var_505 = this.method_318(var_112.method_20("phpCall_loading"),".globalDisplay",75);
         }
         else if(param1 == "send")
         {
            this.var_505 = this.method_318(var_112.method_20("phpCall_sending"),".globalDisplay",75);
         }
         this.var_505.x = 40;
         this.var_505.y = 2;
         this.method_191();
         class_47.method_24.var_12.addChild(this.var_505);
      }
      
      protected function method_1043() : void
      {
         this.method_958();
         this.var_1221 = class_225.name_36;
         this.var_1307 = class_225.name_32;
         var _loc1_:XML = this.method_501(this.var_1043);
         this.var_1433 = _loc1_[const_616] == "0";
         if(this.var_1433)
         {
            this.var_309 = var_1516.method_32(class_88.const_19,"2");
            this.var_62 = int(_loc1_[const_464]);
            if(this.var_1307 < this.var_62)
            {
               this.method_1130(const_464);
               return;
            }
         }
         else
         {
            this.var_309 = var_1516.method_32(class_88.const_19,"1");
            this.var_62 = int(_loc1_[const_616]);
            if(this.var_1221 < this.var_62)
            {
               this.method_1130(const_616);
               return;
            }
         }
         var _loc2_:Array = new Array(this.method_1990,this.method_151);
         var _loc3_:Array = new Array(var_112.method_20("buy"),var_112.method_20("cancel"));
         var _loc4_:TextField = this.method_318(this.method_1277(this.var_1043),const_151,160);
         _loc4_.x = 55;
         _loc4_.y = 30;
         this.var_308 = class_47.method_24.var_12.messageBoxContainer.method_252(_loc2_,_loc3_);
         this.var_308.name_42(this.method_2337());
         this.var_308.addChild(_loc4_);
         this.var_308.addChild(this.method_2704(this.var_2422 + this.var_1043));
         var _loc5_:TextField = this.method_318(var_112.method_20("messagebox_cannonBallsBuy_cash"),const_151,80);
         _loc5_.x = 200;
         _loc5_.y = 30;
         var _loc6_:Bitmap = var_48.getEmbeddedBitmap(const_1413);
         var _loc7_:Bitmap = var_48.getEmbeddedBitmap(const_1888);
         this.var_308.addChild(_loc5_);
         this.var_308.addChild(_loc6_);
         this.var_308.addChild(_loc7_);
         _loc7_.x = _loc6_.x = 203;
         _loc6_.y = 51 - 8;
         _loc7_.y = 51 + 6;
         var _loc9_:TextField = this.method_318(this.method_211(this.var_1221.toString()),const_151,90,TextAlign.RIGHT);
         var _loc10_:TextField = this.method_318(this.method_211(this.var_1307.toString()),const_151,90,TextAlign.RIGHT);
         _loc10_.x = _loc9_.x = 220;
         _loc9_.y = 51 - 9;
         _loc10_.y = 51 - 10 + 14;
         var _loc11_:TextField = this.method_318(var_112.method_20("messagebox_cannonBallsBuy_amount"),const_151,80);
         _loc11_.x = 58;
         _loc11_.y = 81;
         this.var_308.addChild(_loc9_);
         this.var_308.addChild(_loc10_);
         this.var_308.addChild(_loc11_);
         var _loc12_:Sprite = this.method_2340();
         var _loc13_:Object = var_85.getStyle(const_151);
         var _loc14_:TextFormat = var_85.transform(_loc13_);
         _loc14_.align = TextFormatAlign.RIGHT;
         _loc14_.bold = true;
         this.var_181 = new TextField();
         this.var_181.defaultTextFormat = _loc14_;
         this.var_181.x = _loc12_.x;
         this.var_181.y = 82;
         this.var_181.selectable = false;
         this.var_181.width = 75;
         this.var_181.height = 20;
         this.var_181.text = this.var_980[this.var_557];
         this.var_582 = this.var_308.method_2314(10,110);
         this.var_582.height = 22;
         this.var_582.mouseEnabled = false;
         this.var_582.defaultTextFormat = var_85.transform(_loc13_);
         this.var_308.addChild(_loc12_);
         this.var_308.addChild(this.var_181);
         this.var_308.addChild(this.var_582);
         this.method_918();
      }
      
      protected function method_918() : void
      {
      }
      
      protected function method_2337() : String
      {
         return null;
      }
      
      private final function method_958() : void
      {
         this.method_246();
         if(this.var_505 && this.var_505.parent)
         {
            this.var_505.parent.removeChild(this.var_505);
         }
      }
      
      private final function method_191() : void
      {
         TweenLite.to(this.var_505,0.15,{
            "alpha":0,
            "onComplete":this.method_2205
         });
      }
      
      private final function method_2205() : void
      {
         TweenLite.to(this.var_505,0.15,{
            "alpha":1,
            "onComplete":this.method_191
         });
      }
      
      private final function method_246() : void
      {
         TweenLite.to(this.var_505,0.15,{"alpha":1});
      }
      
      private final function method_318(param1:String, param2:String, param3:uint, param4:String = "left") : TextField
      {
         var _loc5_:Object = var_85.getStyle(param2);
         var _loc6_:TextField = new TextField();
         _loc6_.autoSize = _loc5_["autoSize"];
         _loc6_.wordWrap = true;
         _loc6_.multiline = _loc5_["multiline"] == "true";
         _loc6_.selectable = _loc5_["selectable"] == "true";
         _loc6_.mouseEnabled = _loc5_["mouseEnabled"] == "true";
         _loc6_.width = param3;
         var _loc7_:TextFormat = var_85.transform(_loc5_);
         _loc7_.align = param4;
         _loc6_.defaultTextFormat = _loc7_;
         _loc6_.htmlText = param1;
         return _loc6_;
      }
      
      override protected function method_2608() : void
      {
         var_64.visible = false;
         this.method_1630();
      }
      
      override protected function method_1630() : void
      {
         var _loc1_:URLLoader = new URLLoader();
         var _loc2_:URLRequest = this.method_1953();
         _loc1_.addEventListener(Event.COMPLETE,this.method_2447);
         this.method_1353();
         _loc1_.addEventListener(IOErrorEvent.IO_ERROR,this.method_641);
         _loc1_.load(_loc2_);
      }
      
      private final function method_2447(param1:Event) : void
      {
         this.method_958();
         this.var_2236 = new XML(param1.target["data"]);
         this.method_2332();
      }
      
      protected final function method_55() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         var _loc3_:class_1100 = null;
         var _loc4_:int = 0;
         var _loc5_:class_319 = null;
         var _loc6_:int = 0;
         var _loc7_:XML = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:Boolean = false;
         if(var_100.length == 0)
         {
            _loc1_ = new Array(this.method_151);
            _loc2_ = new Array(var_112.method_20("ok"));
            _loc3_ = class_47.method_24.var_12.messageBoxContainer.method_252(_loc1_,_loc2_);
            _loc3_.name_42(var_112.method_20("messagebox_cannonBallsBuy_title"));
            _loc3_.method_970(const_151);
            _loc3_.method_295(var_112.method_20("messagebox_nothingToBuy"));
            _loc3_.method_1350(28);
            _loc3_.method_793();
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < var_100.length)
            {
               _loc5_ = var_100[_loc4_] as class_319;
               _loc6_ = int(_loc5_.method_58().name_7);
               _loc7_ = this.method_501(_loc6_);
               if(_loc7_ == null || int(_loc7_["itemID"]) != _loc6_)
               {
                  _loc5_.visible = false;
               }
               else
               {
                  _loc8_ = int(_loc7_[const_464]);
                  _loc9_ = int(_loc7_[const_616]);
                  _loc10_ = _loc8_ != 0 && !isNaN(_loc8_);
                  _loc5_.method_255(!!_loc10_?int(_loc8_):int(_loc9_));
                  _loc5_.method_289(this.method_1277(_loc5_.method_58().name_7));
                  _loc5_.name_26 = true;
               }
               _loc4_++;
            }
            var_64.visible = true;
            if(!var_311)
            {
               this.y = Math.round(class_51.var_40 / 2 - this.var_2043 / 2);
               this.x = Math.round(class_51.var_39 / 2 - this.width / 2);
            }
         }
      }
      
      protected function method_1277(param1:int) : String
      {
         return param1.toString();
      }
      
      protected final function method_2332() : void
      {
         var _loc1_:XML = null;
         var _loc2_:class_319 = null;
         var _loc3_:MovieClip = null;
         var _loc4_:Bitmap = null;
         var_100 = new Vector.<class_319>();
         var_140 = new Vector.<class_158>();
         for each(_loc1_ in var_18.children())
         {
            if(_loc1_.name() == const_1152)
            {
               if(this.method_501(int(_loc1_.@id)) != null)
               {
                  method_275(_loc1_);
                  this.var_2043 = this.var_2043 + 45;
               }
            }
            else if(_loc1_.name() == const_1143)
            {
               method_363(_loc1_);
            }
         }
         this.method_55();
         method_91();
         for each(_loc2_ in var_100)
         {
            _loc3_ = _loc2_.method_135;
            _loc4_ = var_48.getEmbeddedBitmap(const_1216);
            _loc4_.x = 2;
            _loc4_.y = 2;
            _loc3_.addChild(_loc4_);
         }
      }
      
      private final function method_1130(param1:String) : void
      {
         var _loc2_:Array = new Array(this.method_151);
         var _loc3_:Array = new Array(var_112.method_20("ok"));
         var _loc4_:class_1100 = class_47.method_24.var_12.messageBoxContainer.method_252(_loc2_,_loc3_);
         _loc4_.name_42(class_47.method_22.method_20("txerror"));
         _loc4_.method_970(const_151);
         _loc4_.method_295(var_112.method_20(param1 == const_464?const_1190:const_1257));
         _loc4_.method_793();
      }
      
      public final function method_487(param1:class_148) : void
      {
         class_47.method_24.var_12.messageBoxContainer.method_1517();
         this.var_557 = 0;
         this.var_1043 = param1.name_22.name_7;
         this.method_1043();
      }
      
      protected function method_1494(param1:int) : Boolean
      {
         return !!this.var_1433?param1 * this.var_62 > this.var_1307:param1 * this.var_62 > this.var_1221;
      }
      
      protected final function method_211(param1:String) : String
      {
         var _loc2_:String = param1;
         var _loc3_:String = "";
         var _loc4_:int = 1;
         var _loc5_:int = 0;
         while(_loc2_.length >= _loc4_)
         {
            if(_loc5_ != 3)
            {
               _loc3_ = _loc2_.charAt(_loc2_.length - _loc4_) + _loc3_;
               _loc4_++;
               _loc5_++;
            }
            else
            {
               _loc3_ = "." + _loc3_;
               _loc5_ = 0;
            }
         }
         return _loc3_;
      }
   }
}
