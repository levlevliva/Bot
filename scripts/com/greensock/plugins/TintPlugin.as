package com.greensock.plugins
{
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.DeckStatsComponent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemLevelsVo;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.PropTween;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.geom.Transform;
   import mx.binding.BindingManager;
   import mx.core.IUIComponent;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_166.class_1502;
   import package_17.class_54;
   import package_170.class_979;
   import package_174.class_1373;
   import package_23.class_42;
   import package_48.class_996;
   import package_51.class_148;
   import package_54.class_1006;
   import package_54.class_161;
   import package_69.class_1614;
   import package_69.class_978;
   import package_92.class_944;
   import spark.components.Group;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public class TintPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1.0;
      
      protected static var _props:Array = ["redMultiplier","greenMultiplier","blueMultiplier","alphaMultiplier","redOffset","greenOffset","blueOffset","alphaOffset"];
       
      
      protected var _transform:Transform;
      
      public function TintPlugin()
      {
         super();
         this.propName = "tint";
         this.overwriteProps = ["tint"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if(!(param1 is DisplayObject))
         {
            return false;
         }
         var _loc4_:ColorTransform = new ColorTransform();
         if(param2 != null && param3.vars.removeTint != true)
         {
            _loc4_.color = uint(param2);
         }
         this._transform = DisplayObject(param1).transform;
         var _loc5_:ColorTransform = this._transform.colorTransform;
         _loc4_.alphaMultiplier = _loc5_.alphaMultiplier;
         _loc4_.alphaOffset = _loc5_.alphaOffset;
         this.init(_loc5_,_loc4_);
         return true;
      }
      
      public final function init(param1:ColorTransform, param2:ColorTransform) : void
      {
         var _loc4_:String = null;
         var _loc3_:int = _props.length;
         var _loc5_:int = _tweens.length;
         while(_loc3_--)
         {
            _loc4_ = _props[_loc3_];
            if(param1[_loc4_] != param2[_loc4_])
            {
               _tweens[_loc5_++] = new PropTween(param1,_loc4_,param1[_loc4_],param2[_loc4_] - param1[_loc4_],"tint",false);
            }
         }
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _loc2_:ColorTransform = null;
         var _loc3_:PropTween = null;
         var _loc4_:int = 0;
         if(this._transform)
         {
            _loc2_ = this._transform.colorTransform;
            _loc4_ = _tweens.length;
            while(--_loc4_ > -1)
            {
               _loc3_ = _tweens[_loc4_];
               _loc2_[_loc3_.property] = _loc3_.start + _loc3_.change * param1;
            }
            this._transform.colorTransform = _loc2_;
         }
      }
   }
}
