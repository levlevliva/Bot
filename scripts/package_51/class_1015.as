package package_51
{
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.TowerListItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.class_877;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_121.class_841;
   import package_171.class_981;
   import package_30.class_62;
   import package_41.class_89;
   import package_72.class_203;
   import spark.components.DataGroup;
   import spark.components.HGroup;
   import spark.components.RichText;
   import spark.components.VGroup;
   
   public final class class_1015 extends Event
   {
      
      public static const const_568:String = "ADVANCED_COOLDOWN_COMPLETED_EVENT";
       
      
      public var name_22:class_320;
      
      public function class_1015(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}
