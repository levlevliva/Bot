package package_3
{
   import com.bigpoint.seafight.model.vo.class_1067;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.popups.calendar.vo.CalendarPopupVo;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenCalendarWindow;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.events.DragEvent;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_14.class_47;
   import package_142.class_541;
   import package_171.class_981;
   import package_26.class_218;
   import package_36.class_100;
   import package_46.class_1224;
   import package_46.class_1501;
   import package_6.class_14;
   import package_69.class_978;
   import package_8.class_1315;
   
   public final class class_468 extends class_10
   {
       
      
      public function class_468()
      {
         super();
         method_23(class_541.name_3,this.method_2821);
      }
      
      private final function method_2821(param1:class_14) : void
      {
         var _loc2_:class_541 = param1 as class_541;
         var _loc3_:CalendarPopupVo = new CalendarPopupVo();
         _loc3_.activeDoor = _loc2_.var_456;
         _loc3_.openDoors = _loc2_.var_811;
         StatelessCMD.invoke(CmdSL_OpenCalendarWindow,_loc3_);
      }
   }
}
