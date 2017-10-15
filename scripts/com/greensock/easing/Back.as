package com.greensock.easing
{
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.avatarupload.vo.AvatarUploadPopupVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenAvatarUploadWindow;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.LinearGradientStroke;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_26.class_101;
   import package_41.class_84;
   import package_5.class_43;
   import package_54.class_160;
   import spark.components.Label;
   
   public final class Back
   {
       
      
      public function Back()
      {
         super();
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 1.70158) : Number
      {
         param1 = param1 / param4;
         return param3 * _loc6_ * param1 * ((param5 + 1) * param1 - param5) + param2;
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 1.70158) : Number
      {
         param1 = param1 / param4 - 1;
         return param3 * (_loc6_ * param1 * ((param5 + 1) * param1 + param5) + 1) + param2;
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = 1.70158) : Number
      {
         param1 = param1 / (param4 * 0.5);
         if(_loc6_ < 1)
         {
            param5 = param5 * 1.525;
            return param3 * 0.5 * (param1 * param1 * ((_loc6_ + 1) * param1 - param5)) + param2;
         }
         param1 = param1 - 2;
         param5 = param5 * 1.525;
         return param3 / 2 * (_loc6_ * param1 * ((_loc6_ + 1) * param1 + param5) + 2) + param2;
      }
   }
}
