package package_25
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.IDataInput;
   import package_124.class_673;
   import package_41.class_93;
   import package_54.class_292;
   
   public final class class_293 extends class_292
   {
       
      
      private var name_66:TextField;
      
      private var var_1534:MovieClip;
      
      private var name_88:TextFormat;
      
      public function class_293(param1:MovieClip)
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
