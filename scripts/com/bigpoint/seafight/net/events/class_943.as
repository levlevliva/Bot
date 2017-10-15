package com.bigpoint.seafight.net.events
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.GuildRankRightCheckBox;
   import com.oaxoa.fx.Lightning;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.events.CloseEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_165.class_1532;
   import spark.components.Group;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   
   public final class class_943 extends Event
   {
      
      public static const const_338:String = "mapZoom";
      
      public static const const_645:String = "mapZoomUpdate";
       
      
      protected var var_633:Number;
      
      public function class_943(param1:String, param2:Boolean = false, param3:Boolean = false, param4:Number = 1)
      {
         super(param1,param2,param3);
         this.var_633 = param4;
      }
      
      override public function clone() : Event
      {
         return new class_943(type,bubbles,cancelable);
      }
      
      public function set method_117(param1:Number) : void
      {
         this.var_633 = param1;
      }
      
      public function get method_117() : Number
      {
         return this.var_633;
      }
   }
}
