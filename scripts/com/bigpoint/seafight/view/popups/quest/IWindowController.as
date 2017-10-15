package com.bigpoint.seafight.view.popups.quest
{
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import flash.events.IEventDispatcher;
   
   public interface IWindowController extends IEventDispatcher
   {
       
      
      function get viewComponent() : Object;
      
      function set data(param1:ContentVo) : void;
      
      function shutdown() : void;
   }
}
