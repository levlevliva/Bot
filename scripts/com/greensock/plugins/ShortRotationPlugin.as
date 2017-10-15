package com.greensock.plugins
{
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType2;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.greensock.TweenLite;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import package_14.class_47;
   import package_152.class_664;
   import package_212.class_1537;
   import package_5.class_984;
   import package_55.class_1007;
   
   public final class ShortRotationPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1.0;
       
      
      public function ShortRotationPlugin()
      {
         super();
         this.propName = "shortRotation";
         this.overwriteProps = [];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _loc5_:* = null;
         if(typeof param2 == "number")
         {
            return false;
         }
         var _loc4_:Boolean = Boolean(param2.useRadians == true);
         for(_loc5_ in param2)
         {
            if(_loc5_ != "useRadians")
            {
               this.initRotation(param1,_loc5_,param1[_loc5_],typeof param2[_loc5_] == "number"?Number(Number(param2[_loc5_])):Number(param1[_loc5_] + Number(param2[_loc5_])),_loc4_);
            }
         }
         return true;
      }
      
      public final function initRotation(param1:Object, param2:String, param3:Number, param4:Number, param5:Boolean = false) : void
      {
         var _loc6_:Number = !!param5?Number(Math.PI * 2):Number(360);
         var _loc7_:Number = (param4 - param3) % _loc6_;
         if(_loc7_ != _loc7_ % (_loc6_ / 2))
         {
            _loc7_ = _loc7_ < 0?Number(_loc7_ + _loc6_):Number(_loc7_ - _loc6_);
         }
         addTween(param1,param2,param3,param3 + _loc7_,param2);
         this.overwriteProps[this.overwriteProps.length] = param2;
      }
   }
}
