package com.greensock.easing
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tooltips.TowerListItemToolTip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.ToolTipEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_104.class_641;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_745;
   import package_92.class_944;
   import package_92.class_962;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.ToggleButton;
   
   public final class Linear
   {
      
      public static const power:uint = 0;
       
      
      public function Linear()
      {
         super();
      }
      
      public static function easeNone(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param3 * param1 / param4 + param2;
      }
      
      public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param3 * param1 / param4 + param2;
      }
      
      public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param3 * param1 / param4 + param2;
      }
      
      public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param3 * param1 / param4 + param2;
      }
   }
}
