package package_55
{
   import com.bigpoint.seafight.model.vo.class_320;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_14.class_94;
   import package_51.class_148;
   import spark.components.DataGroup;
   
   public class class_1007 extends Sprite
   {
       
      
      protected var var_745:MovieClip;
      
      protected var var_868:Boolean;
      
      protected var var_401:class_320;
      
      protected var var_250:TextField;
      
      private var var_85:StyleSheet;
      
      private var var_18:XML;
      
      private var var_397:Object;
      
      public function class_1007(param1:MovieClip, param2:StyleSheet, param3:XML)
      {
         super();
         this.var_18 = param3;
         this.var_85 = param2;
         this.var_397 = this.var_85.getStyle(this.var_18.@style);
         this.var_745 = param1;
         this.var_745.gotoAndStop(1);
         addChild(this.var_745);
         this.addClickListener();
         this.scaleX = this.var_397["scale"];
         this.scaleY = this.var_397["scale"];
         this.alpha = this.var_397["alpha"];
         this.visible = this.var_397["visible"] == "true";
      }
      
      private final function addClickListener() : void
      {
         addEventListener(MouseEvent.CLICK,this.method_1245);
      }
      
      private final function removeClickListener() : void
      {
         removeEventListener(MouseEvent.CLICK,this.method_1245);
      }
      
      public function set name_26(param1:Boolean) : void
      {
         this.removeClickListener();
         if(param1)
         {
            this.addClickListener();
            alpha = 1;
         }
         else
         {
            alpha = 0.3;
         }
      }
      
      public final function method_162(param1:String) : void
      {
         if(!this.var_401)
         {
            this.var_401 = new class_320();
         }
         this.var_401.name_5 = param1;
      }
      
      public final function method_377(param1:XML) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this.var_85.getStyle(param1.@style);
         this.var_250 = new TextField();
         this.var_250.x = this.var_745.width + 3;
         this.var_250.y = 0;
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
      
      public final function method_217() : Boolean
      {
         return this.var_868;
      }
      
      public final function method_58() : String
      {
         return this.var_401.name_5;
      }
      
      public final function method_174(param1:Boolean, param2:Boolean = true) : void
      {
         this.var_868 = param1;
         this.method_1050();
         if(param2)
         {
            this.method_1010();
         }
      }
      
      private final function method_1050() : void
      {
         if(this.var_868)
         {
            this.var_745.gotoAndStop(2);
         }
         else
         {
            this.var_745.gotoAndStop(1);
         }
      }
      
      protected function method_1245(param1:MouseEvent) : void
      {
         this.var_868 = !this.var_868;
         this.method_1050();
         this.method_1010();
      }
      
      protected final function method_1010() : void
      {
         var _loc1_:class_148 = new class_148(class_148.const_13);
         if(this.var_868)
         {
            _loc1_.name_22 = this.var_401;
         }
         else
         {
            _loc1_.name_22.name_5 = this.var_401.name_5 + "_switchBack";
         }
         dispatchEvent(_loc1_);
      }
      
      public function get method_947() : TextField
      {
         return this.var_250;
      }
   }
}
