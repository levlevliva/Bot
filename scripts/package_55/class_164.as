package package_55
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_17.class_29;
   import package_5.class_940;
   import package_52.class_152;
   import package_52.class_153;
   import spark.components.HGroup;
   
   public final class class_164 extends Sprite
   {
       
      
      private var var_250:TextField;
      
      private var var_249:TextField;
      
      private var var_85:StyleSheet;
      
      private var var_18:XML;
      
      private var var_908:String;
      
      private var var_1908:int;
      
      public var name_83:class_153;
      
      private var var_1705:Number;
      
      private var var_48:SWFFinisher;
      
      public function class_164(param1:StyleSheet, param2:XML, param3:class_152, param4:SWFFinisher)
      {
         super();
         this.var_85 = param1;
         this.var_18 = param2;
         this.name_83 = param3 as class_153;
         this.var_48 = param4;
         this.method_376(this.var_18.labelFieldConfig[0]);
         this.method_1719(this.var_18.scanFieldConfig[0]);
         useHandCursor = true;
      }
      
      public final function method_2723(param1:String) : void
      {
         this.var_908 = param1;
      }
      
      public final function method_899() : String
      {
         return this.var_908;
      }
      
      private final function method_376(param1:XML) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this.var_85.getStyle(param1.@style);
         this.var_250 = new TextField();
         this.var_250.x = 0;
         this.var_250.y = new Number(this.var_18.msgFieldConfig[0].@height) + new Number(param1.@spacerToMsgField);
         this.var_250.width = param1.@width;
         this.var_250.height = param1.@height;
         this.var_250.multiline = _loc2_["multiline"] == "true";
         this.var_250.selectable = _loc2_["selectable"] == "true";
         this.var_250.mouseEnabled = _loc2_["mouseEnabled"] == "true";
         this.var_250.border = _loc2_["border"] == "true";
         this.var_250.defaultTextFormat = this.var_85.transform(_loc2_);
         this.var_250.text = "";
         addChild(this.var_250);
      }
      
      private final function method_1719(param1:XML) : void
      {
         this.var_1705 = new Number(param1.@spacerToLabelField);
         var _loc2_:Bitmap = this.var_48.getEmbeddedBitmap(param1.@bkgGfx);
         _loc2_.x = this.var_250.width + this.var_1705;
         _loc2_.y = this.var_250.y;
         addChild(_loc2_);
         var _loc3_:Object = this.var_85.getStyle(param1.@style);
         this.var_249 = new TextField();
         this.var_249.x = this.var_250.width + this.var_1705;
         this.var_249.y = this.var_250.y;
         this.var_249.width = param1.@width;
         this.var_249.height = param1.@height;
         this.var_249.multiline = _loc3_["multiline"] == "true";
         this.var_249.selectable = _loc3_["selectable"] == "true";
         this.var_249.mouseEnabled = _loc3_["mouseEnabled"] == "true";
         this.var_249.border = _loc3_["border"] == "true";
         this.var_249.background = _loc3_["background"] == "true";
         this.var_249.backgroundColor = _loc3_["backgroundColor"];
         this.var_249.defaultTextFormat = this.var_85.transform(_loc3_);
         this.var_249.text = "";
         addChild(this.var_249);
         this.var_249.addEventListener(MouseEvent.CLICK,this.method_1822);
      }
      
      private final function method_1822(param1:MouseEvent) : void
      {
         class_29.method_21().method_1789(this,this.var_908);
         this.name_83.method_484(class_153.const_951);
      }
      
      public final function method_2720() : void
      {
         this.var_249.text = "";
      }
      
      public final function method_106(param1:String) : void
      {
         if(!this.var_250)
         {
            return;
         }
         this.var_250.text = param1;
         this.var_249.x = this.var_250.width + this.var_1705;
      }
      
      public final function method_336(param1:String, param2:int) : void
      {
         if(!this.var_249)
         {
            return;
         }
         this.var_1908 = param2;
         this.var_249.text = param1;
      }
      
      public final function method_217() : Object
      {
         var _loc1_:Object = new Object();
         _loc1_.keyCode = this.var_1908;
         _loc1_.keyID = this.var_908;
         return _loc1_;
      }
      
      public function get method_1932() : int
      {
         return this.var_1908;
      }
   }
}
