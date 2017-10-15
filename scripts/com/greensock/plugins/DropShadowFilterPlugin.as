package com.greensock.plugins
{
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import com.greensock.TweenLite;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.filters.DropShadowFilter;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_214.class_1559;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public final class DropShadowFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1.0;
      
      private static var _propNames:Array = ["distance","angle","color","alpha","blurX","blurY","strength","quality","inner","knockout","hideObject"];
       
      
      public function DropShadowFilterPlugin()
      {
         super();
         this.propName = "dropShadowFilter";
         this.overwriteProps = ["dropShadowFilter"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         _target = param1;
         _type = DropShadowFilter;
         initFilter(param2,new DropShadowFilter(0,45,0,0,0,0,1,int(param2.quality) || 2,param2.inner,param2.knockout,param2.hideObject),_propNames);
         return true;
      }
   }
}
