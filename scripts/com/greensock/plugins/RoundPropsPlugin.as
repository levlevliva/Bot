package com.greensock.plugins
{
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.BoardingInfoTooltipListItemSubItem;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.PropTween;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_104.class_448;
   import package_104.class_641;
   import package_111.class_741;
   import package_111.class_774;
   import package_114.class_551;
   import package_14.class_96;
   import package_166.class_970;
   import package_170.class_979;
   import package_34.class_1526;
   import package_50.class_141;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.gridClasses.GridLayer;
   
   public final class RoundPropsPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1.0;
       
      
      protected var _tween:TweenLite;
      
      public function RoundPropsPlugin()
      {
         super();
         this.propName = "roundProps";
         this.overwriteProps = ["roundProps"];
         this.round = true;
         this.priority = -1;
         this.onInitAllProps = this._initAllProps;
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         this._tween = param3;
         this.overwriteProps = this.overwriteProps.concat(param2 as Array);
         return true;
      }
      
      protected final function _initAllProps() : void
      {
         var _loc1_:String = null;
         var _loc2_:* = null;
         var _loc4_:PropTween = null;
         var _loc3_:Array = this._tween.vars.roundProps;
         var _loc5_:int = _loc3_.length;
         while(--_loc5_ > -1)
         {
            _loc1_ = _loc3_[_loc5_];
            _loc4_ = this._tween.cachedPT1;
            while(_loc4_)
            {
               if(_loc4_.name == _loc1_)
               {
                  if(_loc4_.isPlugin)
                  {
                     _loc4_.target.round = true;
                  }
                  else
                  {
                     this.add(_loc4_.target,_loc1_,_loc4_.start,_loc4_.change);
                     this._removePropTween(_loc4_);
                     this._tween.propTweenLookup[_loc1_] = this._tween.propTweenLookup.roundProps;
                  }
               }
               else if(_loc4_.isPlugin && _loc4_.name == "_MULTIPLE_" && !_loc4_.target.round)
               {
                  _loc2_ = " " + _loc4_.target.overwriteProps.join(" ") + " ";
                  if(_loc2_.indexOf(" " + _loc1_ + " ") != -1)
                  {
                     _loc4_.target.round = true;
                  }
               }
               _loc4_ = _loc4_.nextNode;
            }
         }
      }
      
      protected final function _removePropTween(param1:PropTween) : void
      {
         if(param1.nextNode)
         {
            param1.nextNode.prevNode = param1.prevNode;
         }
         if(param1.prevNode)
         {
            param1.prevNode.nextNode = param1.nextNode;
         }
         else if(this._tween.cachedPT1 == param1)
         {
            this._tween.cachedPT1 = param1.nextNode;
         }
         if(param1.isPlugin && param1.target.onDisable)
         {
            param1.target.onDisable();
         }
      }
      
      public final function add(param1:Object, param2:String, param3:Number, param4:Number) : void
      {
         addTween(param1,param2,param3,param3 + param4,param2);
         this.overwriteProps[this.overwriteProps.length] = param2;
      }
   }
}
