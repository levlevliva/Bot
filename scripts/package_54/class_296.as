package package_54
{
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.TweenCore;
   import com.greensock.easing.Strong;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.media.SoundChannel;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.IVisualElement;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import package_105.class_369;
   import package_105.class_529;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_163.class_884;
   import package_18.class_392;
   import package_204.class_1338;
   import package_26.class_1088;
   import package_30.class_62;
   import package_41.class_93;
   import package_45.class_110;
   import package_46.class_1356;
   import package_46.class_975;
   import package_49.class_137;
   import package_5.class_22;
   import package_5.class_984;
   import package_6.class_14;
   import package_7.class_1039;
   import package_7.class_1538;
   import package_8.class_16;
   import package_9.class_76;
   import package_92.class_962;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public class class_296 extends Sprite
   {
      
      private static const const_80:ILogger = Log.getLogger("UI");
       
      
      protected var var_467:MovieClip;
      
      private var var_1240:Boolean = false;
      
      public function class_296(param1:MovieClip)
      {
         super();
         this.var_467 = param1;
         this.var_467.gotoAndStop(1);
         addEventListener(MouseEvent.MOUSE_OVER,this.method_352);
         useHandCursor = true;
         addChild(this.var_467);
      }
      
      protected final function method_416(param1:MouseEvent) : void
      {
         if(!this.var_1240)
         {
            this.var_467.gotoAndStop(1);
            removeEventListener(MouseEvent.MOUSE_DOWN,this.method_393);
            removeEventListener(MouseEvent.MOUSE_UP,this.method_452);
            addEventListener(MouseEvent.MOUSE_OVER,this.method_352);
            removeEventListener(MouseEvent.MOUSE_OUT,this.method_416);
         }
         else
         {
            this.var_467.gotoAndStop(2);
            removeEventListener(MouseEvent.MOUSE_DOWN,this.method_393);
            removeEventListener(MouseEvent.MOUSE_UP,this.method_452);
            addEventListener(MouseEvent.MOUSE_OVER,this.method_352);
            removeEventListener(MouseEvent.MOUSE_OUT,this.method_416);
         }
      }
      
      protected final function method_352(param1:MouseEvent) : void
      {
         this.var_467.gotoAndStop(2);
         addEventListener(MouseEvent.MOUSE_DOWN,this.method_393);
         addEventListener(MouseEvent.MOUSE_UP,this.method_452);
         removeEventListener(MouseEvent.MOUSE_OVER,this.method_352);
         addEventListener(MouseEvent.MOUSE_OUT,this.method_416);
      }
      
      protected final function method_452(param1:MouseEvent) : void
      {
         this.var_467.gotoAndStop(2);
         removeEventListener(MouseEvent.MOUSE_DOWN,this.method_393);
         removeEventListener(MouseEvent.MOUSE_UP,this.method_452);
         removeEventListener(MouseEvent.MOUSE_OVER,this.method_352);
         addEventListener(MouseEvent.MOUSE_OUT,this.method_416);
         if(!this.var_1240)
         {
            this.var_1240 = true;
         }
         else
         {
            this.var_1240 = false;
         }
      }
      
      protected final function method_393(param1:MouseEvent) : void
      {
         this.var_467.gotoAndStop(3);
         removeEventListener(MouseEvent.MOUSE_DOWN,this.method_393);
         addEventListener(MouseEvent.MOUSE_UP,this.method_452);
         removeEventListener(MouseEvent.MOUSE_OVER,this.method_352);
         addEventListener(MouseEvent.MOUSE_OUT,this.method_416);
      }
      
      public final function method_916() : void
      {
         this.var_467.removeEventListener(MouseEvent.MOUSE_DOWN,this.method_393);
         this.var_467.removeEventListener(MouseEvent.MOUSE_UP,this.method_452);
         this.var_467.removeEventListener(MouseEvent.MOUSE_OVER,this.method_352);
         this.var_467.removeEventListener(MouseEvent.MOUSE_OUT,this.method_416);
      }
   }
}
