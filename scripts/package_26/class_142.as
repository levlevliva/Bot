package package_26
{
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import flash.display.Bitmap;
   import flash.events.Event;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import package_39.class_973;
   import package_41.class_84;
   import spark.components.Group;
   import spark.components.Label;
   
   public final class class_142 extends Event
   {
      
      public static const const_116:String = "GAME_STATE_CHANGE";
       
      
      public var var_2454:int;
      
      public var var_2466:int;
      
      public function class_142(param1:int, param2:int, param3:Boolean = false, param4:Boolean = false)
      {
         this.var_2466 = param2;
         this.var_2454 = param1;
         super(const_116,param3,param4);
      }
   }
}
