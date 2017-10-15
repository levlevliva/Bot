package com.bigpoint.seafight.net.events
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.greensock.TweenLite;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import package_120.class_919;
   import package_123.class_652;
   import package_123.class_837;
   import package_14.class_47;
   import package_14.class_87;
   import package_20.class_33;
   import package_36.class_1417;
   import package_5.class_43;
   import package_95.class_341;
   import package_97.class_409;
   import spark.components.Group;
   import spark.filters.GlowFilter;
   import spark.primitives.Rect;
   
   public final class MapScrollEvent extends Event
   {
      
      public static const SHIP_SCROLL:String = "mapScrollToShip";
      
      public static const KEYBOARD_SCROLL:String = "mapKeyboardScroll";
      
      public static const MOUSE_SCROLL:String = "mapMouseScroll";
       
      
      protected var _x:int;
      
      protected var _y:int;
      
      protected var _incX:int;
      
      protected var _incY:int;
      
      public function MapScrollEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new MapScrollEvent(type,bubbles,cancelable);
      }
      
      public function set x(param1:int) : void
      {
         this._x = param1;
      }
      
      public function set y(param1:int) : void
      {
         this._y = param1;
      }
      
      public function set incX(param1:int) : void
      {
         this._incX = param1;
      }
      
      public function set incY(param1:int) : void
      {
         this._incY = param1;
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this._y;
      }
      
      public function get incX() : int
      {
         return this._incX;
      }
      
      public function get incY() : int
      {
         return this._incY;
      }
   }
}
