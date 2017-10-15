package com.bigpoint.seafight.view.popups.event.modules.common
{
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindow;
   import com.greensock.TweenLite;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import mx.logging.Log;
   import mx.states.State;
   import package_15.class_48;
   import package_16.class_28;
   import package_47.class_657;
   import package_7.class_1039;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public class TitleText extends HGroup
   {
       
      
      protected var _text:String;
      
      public function TitleText()
      {
         super();
      }
      
      public function set text(param1:String) : void
      {
         this._text = param1;
         invalidateProperties();
      }
      
      public function get text() : String
      {
         return this._text;
      }
   }
}
