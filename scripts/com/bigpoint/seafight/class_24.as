package com.bigpoint.seafight
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.LevelTooltipItemRenderer;
   import com.bigpoint.seafight.view.popups.common.BorderType3_1;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_14.class_51;
   import spark.components.Group;
   
   public final class class_24
   {
      
      private static const const_1869:String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
       
      
      public function class_24()
      {
         super();
      }
      
      public static function method_434(param1:String, param2:String = "?", param3:Boolean = false, param4:Boolean = true) : URLRequest
      {
         var _loc5_:Boolean = !!param3?Boolean(param4):!class_51.var_571;
         if(_loc5_)
         {
            return new URLRequest(param1 + param2 + method_521(8));
         }
         return new URLRequest(param1);
      }
      
      public static function method_521(param1:uint = 1) : String
      {
         var _loc2_:Array = const_1869.split("");
         var _loc3_:int = _loc2_.length;
         var _loc4_:String = "";
         var _loc5_:uint = 0;
         while(_loc5_ < param1)
         {
            _loc4_ = _loc4_ + _loc2_[int(Math.floor(Math.random() * _loc3_))];
            _loc5_++;
         }
         return _loc4_;
      }
   }
}
