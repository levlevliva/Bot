package package_25
{
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.net.events.class_1446;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import package_14.class_47;
   
   public class class_294 extends Sprite
   {
      
      private static const const_80:ILogger = Log.getLogger("DragWindow");
       
      
      protected var var_2311:int;
      
      protected var var_1863:int;
      
      protected var name_73:int;
      
      private var var_1961:int;
      
      private var var_2217:int;
      
      private var name_42:String;
      
      private var var_1079:TextField;
      
      private var var_882:Sprite;
      
      public function class_294(param1:String = "untitled", param2:int = 300, param3:int = 100)
      {
         super();
         this.name_42 = param1;
         this.var_2217 = Math.max(20,param3);
         this.var_1961 = Math.max(200,param2);
         this.var_2311 = 1646376;
         this.var_1863 = 6914472;
         this.name_73 = 16777215;
         this.method_2539();
         this.method_1628();
      }
      
      private final function method_1628() : void
      {
         this.var_882 = new Sprite();
         this.var_882.graphics.beginFill(this.var_1863);
         this.var_882.graphics.drawRect(0,0,this.var_1961,20);
         this.var_882.graphics.endFill();
         this.var_1079 = new TextField();
         this.var_1079.autoSize = TextFieldAutoSize.LEFT;
         this.var_1079.text = this.name_42;
         this.var_1079.selectable = false;
         this.var_1079.setTextFormat(new TextFormat("Verdana",14,this.name_73));
         this.var_882.addChild(this.var_1079);
         this.var_882.addEventListener(MouseEvent.MOUSE_DOWN,this.method_1728);
         this.var_882.addEventListener(MouseEvent.MOUSE_UP,this.method_2280);
         addChild(this.var_882);
      }
      
      private final function method_1728(param1:MouseEvent) : void
      {
         startDrag();
      }
      
      private final function method_2280(param1:MouseEvent) : void
      {
         const_80.debug("releaseTitleHandler: " + x + ":" + y);
         stopDrag();
      }
      
      private final function method_2539() : void
      {
         graphics.beginFill(this.var_2311);
         graphics.lineStyle(2,this.var_1863);
         graphics.drawRect(0,0,this.var_1961,this.var_2217);
         graphics.endFill();
      }
   }
}
