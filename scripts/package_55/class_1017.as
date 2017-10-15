package package_55
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import package_54.class_319;
   
   public class class_1017 extends Sprite
   {
       
      
      protected var var_1295:XML;
      
      private var var_1400:Sprite;
      
      private var name_53:TextField;
      
      private var var_1842:TextFormat;
      
      public function class_1017(param1:XML, param2:StyleSheet)
      {
         super();
         var _loc3_:Object = param2.getStyle(param1.@style);
         this.var_1295 = param1;
         var _loc4_:Sprite = new Sprite();
         this.addChild(_loc4_);
         _loc4_.x = 0;
         _loc4_.y = 0;
         _loc4_.graphics.lineStyle(1,0,0);
         _loc4_.graphics.drawRect(0,0,1,1);
         this.var_1400 = new Sprite();
         this.addChild(this.var_1400);
         this.name_53 = new TextField();
         this.addChild(this.name_53);
         this.var_1842 = param2.transform(_loc3_);
         this.name_53.defaultTextFormat = this.var_1842;
         this.name_53.x = param1.@leftText;
         this.name_53.y = param1.@topText;
         this.name_53.width = param1.@rightText - param1.@leftText;
         this.name_53.autoSize = TextFieldAutoSize.LEFT;
         this.name_53.border = false;
         this.name_53.wordWrap = true;
         this.name_53.multiline = true;
         this.name_53.selectable = true;
         this.name_53.mouseEnabled = true;
      }
      
      public final function method_54() : void
      {
         while(this.var_1400.numChildren > 0)
         {
            this.var_1400.removeChildAt(0);
         }
         this.name_53.htmlText = "";
      }
      
      public final function method_414(param1:DisplayObject) : void
      {
         this.var_1400.addChild(param1);
         param1.x = this.var_1295.@leftImage;
         param1.y = this.var_1295.@topImage;
      }
      
      public final function method_257(param1:String) : void
      {
         this.name_53.htmlText = param1;
         this.name_53.setTextFormat(this.var_1842);
      }
   }
}
