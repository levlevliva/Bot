package package_25
{
   import com.bigpoint.seafight.model.vo.class_1031;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import mx.core.IVisualElement;
   import mx.events.FlexEvent;
   import package_14.class_232;
   import package_185.class_1136;
   import package_54.class_296;
   
   public final class class_297 extends class_296
   {
       
      
      private var name_66:TextField;
      
      private var var_1534:MovieClip;
      
      private var name_88:TextFormat;
      
      public function class_297(param1:MovieClip)
      {
         super(param1);
         this.var_1534 = param1;
      }
      
      public final function method_106(param1:String) : void
      {
         if(!this.name_66)
         {
            this.name_66 = new TextField();
            this.name_66.multiline = false;
            this.name_66.selectable = false;
            this.name_66.mouseEnabled = false;
         }
         this.name_66.width = this.var_1534.width - 5;
         this.name_66.height = this.var_1534.height - 3;
         this.name_66.x = 5;
         this.name_66.y = 3;
         if(!this.name_88)
         {
            this.name_88 = new TextFormat();
         }
         this.name_88.align = TextFormatAlign.CENTER;
         this.name_88.font = "Verdana";
         this.name_88.color = 16777215;
         this.name_88.size = 9;
         this.name_66.defaultTextFormat = this.name_88;
         this.name_66.text = param1;
         this.var_1534.addChild(this.name_66);
      }
   }
}
