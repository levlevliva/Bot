package com.greensock.core
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.display.utils.createText;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import package_10.class_18;
   import package_10.class_38;
   import package_118.class_725;
   import package_17.class_304;
   import package_185.class_1136;
   import package_210.class_1364;
   import package_210.class_1474;
   import package_6.class_14;
   import package_9.class_445;
   import spark.components.Group;
   
   public final class PropTween
   {
       
      
      public var target:Object;
      
      public var property:String;
      
      public var start:Number;
      
      public var change:Number;
      
      public var name:String;
      
      public var priority:int;
      
      public var isPlugin:Boolean;
      
      public var nextNode:PropTween;
      
      public var prevNode:PropTween;
      
      public function PropTween(param1:Object, param2:String, param3:Number, param4:Number, param5:String, param6:Boolean, param7:PropTween = null, param8:int = 0)
      {
         super();
         this.target = param1;
         this.property = param2;
         this.start = param3;
         this.change = param4;
         this.name = param5;
         this.isPlugin = param6;
         if(param7)
         {
            param7.prevNode = this;
            this.nextNode = param7;
         }
         this.priority = param8;
      }
   }
}
