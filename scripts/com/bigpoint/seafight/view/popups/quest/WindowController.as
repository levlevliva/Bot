package com.bigpoint.seafight.view.popups.quest
{
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import package_104.class_641;
   import package_143.class_933;
   import package_170.class_979;
   import package_6.class_14;
   import spark.components.TitleWindow;
   
   public class WindowController extends EventDispatcher
   {
       
      
      protected var _window:TitleWindow;
      
      private var _viewComponent:Object;
      
      private var _name:String;
      
      public function WindowController(param1:String, param2:Object)
      {
         super();
         this.name = param1;
         this.viewComponent = param2;
         var _loc3_:IEventDispatcher = this.viewComponent as IEventDispatcher;
         _loc3_.addEventListener(FlexEvent.CREATION_COMPLETE,this.onWindowCreationComplete);
      }
      
      protected function onWindowCreationComplete(param1:FlexEvent) : void
      {
      }
      
      public function get viewComponent() : Object
      {
         return this._viewComponent;
      }
      
      public function set viewComponent(param1:Object) : void
      {
         this._viewComponent = param1;
      }
      
      protected function set win(param1:TitleWindow) : void
      {
         this._window = param1;
      }
      
      protected function get win() : TitleWindow
      {
         return this._window;
      }
      
      protected function get name() : String
      {
         return this._name;
      }
      
      protected function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function shutdown() : void
      {
         var _loc1_:IEventDispatcher = this.viewComponent as IEventDispatcher;
         _loc1_.removeEventListener(FlexEvent.CREATION_COMPLETE,this.onWindowCreationComplete);
      }
   }
}
