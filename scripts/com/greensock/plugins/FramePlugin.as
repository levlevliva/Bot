package com.greensock.plugins
{
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.event.modules.eventstatistics.StatisticItemFactory;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   import mx.collections.ArrayList;
   import mx.core.IUIComponent;
   import package_14.class_51;
   import package_174.class_1373;
   import package_95.class_341;
   import package_99.class_493;
   import package_99.class_911;
   
   public class FramePlugin extends TweenPlugin
   {
      
      public static const API:Number = 1.0;
       
      
      public var frame:int;
      
      protected var _target:MovieClip;
      
      public function FramePlugin()
      {
         super();
         this.propName = "frame";
         this.overwriteProps = ["frame","frameLabel"];
         this.round = true;
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if(!(param1 is MovieClip) || isNaN(param2))
         {
            return false;
         }
         this._target = param1 as MovieClip;
         this.frame = this._target.currentFrame;
         addTween(this,"frame",this.frame,param2,"frame");
         return true;
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         updateTweens(param1);
         if(this.frame != this._target.currentFrame)
         {
            this._target.gotoAndStop(this.frame);
         }
      }
   }
}
