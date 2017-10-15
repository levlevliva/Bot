package package_55
{
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentButtonClickEvent;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_18.class_571;
   import package_41.class_93;
   import package_51.class_148;
   import spark.primitives.Rect;
   
   public final class class_1009 extends Sprite
   {
      
      private static const const_831:int = 0;
      
      private static const const_986:int = 100;
       
      
      private var var_135:Sprite;
      
      private var var_373:Bitmap;
      
      private var var_85:StyleSheet;
      
      private var var_18:XML;
      
      private var var_397:Object;
      
      private var var_1448:Boolean = false;
      
      private var var_656:Number = 0;
      
      private var var_267:TextField;
      
      private var var_380:Stage;
      
      private var var_250:TextField;
      
      private var var_558:Number = 0;
      
      private var var_807:Number = 0;
      
      private var var_1808:Boolean;
      
      private var var_2039:int = 1;
      
      private var var_1869:String;
      
      public function class_1009(param1:Bitmap, param2:Bitmap, param3:StyleSheet)
      {
         super();
         this.var_135 = new Sprite();
         this.var_135.addChild(param1);
         this.var_373 = param2;
         this.var_85 = param3;
         this.var_380 = class_47.method_49;
         this.var_1808 = false;
         this.var_1869 = "";
      }
      
      public final function name_16(param1:XML) : void
      {
         this.var_18 = param1;
         this.var_397 = this.var_85.getStyle(this.var_18.@style);
         this.var_135.x = this.var_18.@xPos;
         this.var_135.y = this.var_18.@yPos;
         this.var_373.x = this.var_18.@xPos;
         this.var_373.y = this.var_18.@yPos;
         if(this.var_18.@slideMin && this.var_18.@slideMax)
         {
            this.var_558 = new Number(this.var_18.@slideMin);
            this.var_807 = new Number(this.var_18.@slideMax);
         }
         this.var_267 = new TextField();
         this.var_267.autoSize = this.var_397["autoSize"] || TextFieldAutoSize.LEFT;
         this.var_267.multiline = this.var_397["multiline"] == "true";
         this.var_267.selectable = this.var_397["selectable"] == "true";
         this.var_267.mouseEnabled = this.var_397["mouseEnabled"] == "true";
         this.var_267.border = this.var_397["border"] == "true";
         this.var_267.background = this.var_397["background"] == "true";
         this.var_267.backgroundColor = this.var_397["backgroundColor"];
         this.var_267.defaultTextFormat = this.var_85.transform(this.var_397);
         addChild(this.var_373);
         addChild(this.var_135);
         this.var_135.addEventListener(MouseEvent.MOUSE_DOWN,this.method_2245,false,2000);
      }
      
      public final function method_377(param1:XML) : void
      {
         var _loc2_:Object = this.var_85.getStyle(param1.@style);
         this.var_250 = new TextField();
         this.var_250.x = int(param1.@xPos);
         this.var_250.y = int(this.var_18.@yPos) + int(param1.@yPos);
         this.var_250.width = param1.@width;
         this.var_250.height = param1.@height;
         this.var_250.multiline = _loc2_["multiline"] == "true";
         this.var_250.selectable = _loc2_["selectable"] == "true";
         this.var_250.mouseEnabled = _loc2_["mouseEnabled"] == "true";
         this.var_250.border = _loc2_["border"] == "true";
         this.var_250.defaultTextFormat = this.var_85.transform(_loc2_);
         addChild(this.var_250);
      }
      
      public final function method_106(param1:String) : void
      {
         if(!this.var_250)
         {
            return;
         }
         this.var_250.text = param1;
      }
      
      private final function method_2431(param1:MouseEvent) : void
      {
         if(this.var_1448)
         {
            this.var_380.removeEventListener(MouseEvent.MOUSE_UP,this.method_855);
            this.var_380.removeEventListener(MouseEvent.MOUSE_MOVE,this.method_482);
            this.var_135.stopDrag();
            if(this.var_267.parent)
            {
               removeChild(this.var_267);
            }
         }
      }
      
      private final function method_2245(param1:MouseEvent) : void
      {
         param1.stopPropagation();
         this.var_135.addEventListener(MouseEvent.MOUSE_MOVE,this.method_482,false,2000);
         this.var_135.addEventListener(MouseEvent.MOUSE_UP,this.method_855);
         this.var_135.addEventListener(MouseEvent.MOUSE_OUT,this.method_2431);
         this.var_380.addEventListener(MouseEvent.MOUSE_UP,this.method_855);
         this.var_380.addEventListener(MouseEvent.MOUSE_MOVE,this.method_482,false,2000);
         this.var_135.startDrag(false,new Rectangle(new Number(this.var_18.@xPos),new Number(this.var_18.@yPos),new Number(this.var_18.@slideWidth),0));
         this.var_1448 = false;
      }
      
      private final function method_855(param1:MouseEvent) : void
      {
         this.var_135.removeEventListener(MouseEvent.MOUSE_MOVE,this.method_482);
         this.var_380.removeEventListener(MouseEvent.MOUSE_MOVE,this.method_482);
         this.var_1448 = true;
         this.var_135.stopDrag();
         if(this.var_267.parent)
         {
            removeChild(this.var_267);
         }
         this.method_972();
      }
      
      private final function method_482(param1:MouseEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = false;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         param1.stopPropagation();
         if(!this.var_1448)
         {
            _loc2_ = new Number(this.var_18.@xPos);
            _loc3_ = super.rotation == 0;
            this.var_656 = Math.round((this.var_135.x - _loc2_) * 100 / new Number(this.var_18.@slideWidth));
            if(this.var_558 != 0 || this.var_807 != 0)
            {
               _loc4_ = (this.var_807 - this.var_558) / 100;
               _loc5_ = Math.round(_loc4_ * this.var_656 + this.var_558);
               this.var_656 = _loc5_;
            }
            this.var_267.x = (!!_loc3_?0:this.var_135.height) + this.var_135.x + this.var_135.width + new Number(this.var_18.@labelOffX);
            this.var_267.y = this.var_135.y + new Number(this.var_18.@labelOffY);
            this.var_267.text = " " + (this.var_656 - this.var_656 % this.var_2039) + this.var_1869;
            addChild(this.var_267);
            if(this.var_1808)
            {
               this.method_972();
            }
         }
      }
      
      private final function method_972() : void
      {
         var _loc1_:class_148 = new class_148(class_148.const_13);
         _loc1_.name_22.name_5 = this.var_18.@target;
         _loc1_.name_22.name_7 = this.var_656;
         dispatchEvent(_loc1_);
      }
      
      public final function method_217() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.target = this.var_18.@target;
         _loc1_.value = this.var_656;
         return _loc1_;
      }
      
      public function get name_19() : int
      {
         return this.var_656;
      }
      
      public final function method_174(param1:Number) : void
      {
         var _loc4_:Number = NaN;
         if(this.var_558 > const_831)
         {
            if(param1 < this.var_558)
            {
               param1 = this.var_558;
            }
         }
         else if(param1 < const_831)
         {
            param1 = const_831;
         }
         if(this.var_807 != 0)
         {
            if(param1 > this.var_807)
            {
               param1 = this.var_807;
            }
         }
         else if(param1 > const_986)
         {
            param1 = const_986;
         }
         var _loc2_:int = this.var_656 = param1;
         var _loc3_:Number = new Number(this.var_18.@xPos);
         if(this.var_558 != 0 || this.var_807 != 0)
         {
            _loc4_ = (this.var_807 - this.var_558) / 100;
            _loc2_ = Math.round((param1 - this.var_558) / _loc4_);
         }
         this.var_135.x = _loc2_ * new Number(this.var_18.@slideWidth) / 100 + _loc3_;
         this.method_972();
      }
      
      public final function method_1498() : String
      {
         return this.var_18.@target;
      }
      
      public function get method_3012() : Number
      {
         return this.var_558;
      }
      
      public function get method_2992() : XML
      {
         return this.var_18;
      }
      
      public function set method_2794(param1:Boolean) : void
      {
         this.var_1808 = param1;
      }
      
      public final function method_2802(param1:int) : void
      {
         super.rotation = param1;
         this.var_267.rotation = -param1;
      }
      
      public function set name_93(param1:int) : void
      {
         this.var_2039 = param1;
      }
      
      public function set method_2235(param1:String) : void
      {
         this.var_1869 = param1;
      }
      
      public function get method_947() : TextField
      {
         return this.var_250;
      }
   }
}
