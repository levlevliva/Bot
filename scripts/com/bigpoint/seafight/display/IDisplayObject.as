package com.bigpoint.seafight.display
{
   import flash.display.IBitmapDrawable;
   import flash.events.IEventDispatcher;
   
   public interface IDisplayObject extends IBitmapDrawable, IEventDispatcher
   {
       
      
      function set x(param1:Number) : void;
      
      function set y(param1:Number) : void;
      
      function set name(param1:String) : void;
      
      function set visible(param1:Boolean) : void;
      
      function set scaleX(param1:Number) : void;
      
      function set scaleY(param1:Number) : void;
      
      function get x() : Number;
      
      function get y() : Number;
      
      function get name() : String;
      
      function get visible() : Boolean;
      
      function get scaleX() : Number;
      
      function get scaleY() : Number;
   }
}
