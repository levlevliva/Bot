package package_172
{
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tooltips.LeagueButtonTooltip;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueButtonTooltipVo;
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.ToolTipEvent;
   import mx.states.State;
   import package_111.class_696;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_51;
   import package_171.class_1276;
   import package_184.class_1135;
   import package_92.class_962;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VScrollBar;
   
   public final class class_992 extends class_962
   {
       
      
      public function class_992(param1:int, param2:int, param3:Boolean = true, param4:Boolean = true)
      {
         var t:Timer = null;
         var thiz:Sprite = null;
         var targetX:int = param1;
         var targetY:int = param2;
         var autohide:Boolean = param3;
         var valid:Boolean = param4;
         super();
         this.mouseEnabled = false;
         this.mouseChildren = false;
         var scale:Number = 1;
         var scalePostionTransition:Number = 1 - scale;
         var offsetX:Number = class_51.var_39 / 2;
         var offsetY:Number = class_51.var_40 / 2;
         var x:Number = (targetX + targetY) * 20;
         var y:Number = (targetX - targetY) * 14;
         var camera:Point = class_47.name_37.var_120;
         var camX:int = camera.x;
         var camY:int = camera.y;
         this.x = (x - camX) * scale + offsetX * scalePostionTransition + camX;
         this.y = (y - camY) * scale + offsetY * scalePostionTransition + camY;
         var color:uint = 16777215;
         alpha = 0.1;
         if(!valid)
         {
            this.alpha = 0.3;
            color = 16711680;
         }
         method_925(graphics,color);
         if(autohide)
         {
            t = new Timer(200,1);
            thiz = this;
            t.addEventListener(TimerEvent.TIMER_COMPLETE,function(param1:TimerEvent):void
            {
               t.removeEventListener(TimerEvent.TIMER_COMPLETE,arguments.callee);
               if(thiz.parent)
               {
                  thiz.parent.removeChild(thiz);
               }
            });
            t.start();
         }
      }
      
      public static function method_925(param1:Graphics, param2:int, param3:Number = 1.0) : void
      {
         param1.lineStyle(0,param2,1);
         param1.beginFill(param2,param3);
         param1.moveTo(-20,0);
         param1.lineTo(0,-14);
         param1.lineTo(20,0);
         param1.lineTo(0,14);
         param1.lineTo(-20,0);
      }
   }
}
