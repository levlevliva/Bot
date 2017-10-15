package package_50
{
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import com.greensock.easing.Quad;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import mx.logging.ILogger;
   import mx.logging.Log;
   
   public final class class_219
   {
      
      private static const const_80:ILogger = Log.getLogger("ServerRestartView");
      
      private static const const_558:String = "server_restart_label";
       
      
      private var var_277:TextField;
      
      private var var_1351:DisplayObjectContainer;
      
      private var var_2247:int;
      
      private var var_2398:int;
      
      private var var_2371:String;
      
      private var var_2406:TextFormat;
      
      public function class_219(param1:DisplayObjectContainer, param2:XML, param3:StyleSheet)
      {
         super();
         this.var_1351 = param1;
         this.var_2247 = param2[const_558][0].@xPos;
         this.var_2398 = param2[const_558][0].@yPos;
         this.var_2371 = param2[const_558][0].@textKey;
         this.var_2406 = param3.transform(param3.getStyle(param2[const_558][0].@style));
      }
      
      public final function method_2285(param1:Number) : void
      {
         var _loc2_:TimelineMax = null;
         if(param1 < 1000)
         {
            if(this.var_277 != null)
            {
               this.var_277.visible = false;
            }
            return;
         }
         if(this.var_277 == null)
         {
            this.var_277 = new TextField();
            this.var_277.defaultTextFormat = this.var_2406;
            this.var_277.x = this.var_2247;
            this.var_277.y = this.var_2398;
            this.var_277.autoSize = TextFieldAutoSize.LEFT;
            this.var_277.multiline = false;
            this.var_277.selectable = false;
            this.var_277.mouseEnabled = false;
            this.var_277.wordWrap = false;
            this.var_1351.addChild(this.var_277);
            _loc2_ = new TimelineMax({
               "tweens":[TweenMax.to(this.var_277,1,{"colorMatrixFilter":{
                  "colorize":16763955,
                  "ease":Quad.easeIn,
                  "amount":1,
                  "brightness":5
               }}),TweenMax.to(this.var_277,1,{"colorMatrixFilter":{
                  "colorize":14483456,
                  "ease":Quad.easeInOut,
                  "amount":0,
                  "brightness":1
               }})],
               "align":TweenAlign.SEQUENCE,
               "repeat":-1
            });
         }
         this.var_277.visible = true;
         this.var_277.text = class_13.method_78(this.var_2371,new Array(class_125.method_178(param1)));
      }
   }
}
