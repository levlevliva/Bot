package com.bigpoint.seafight.net.events
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemStatListItemVo;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.greensock.core.TweenCore;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_105.class_369;
   import package_105.class_529;
   import package_18.class_392;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_975;
   import package_49.class_137;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.events.IndexChangeEvent;
   
   public final class class_178 extends Event
   {
      
      public static const const_833:String = "targetClick";
       
      
      protected var var_896:class_98;
      
      public function class_178(param1:String, param2:class_98, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.var_896 = param2;
      }
      
      override public function clone() : Event
      {
         return new class_178(type,this.var_896,bubbles,cancelable);
      }
      
      public function get method_1535() : class_98
      {
         return this.var_896;
      }
   }
}
