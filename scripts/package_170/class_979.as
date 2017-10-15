package package_170
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.common.dragdrop.EquipSlotAmountDragDropInterface;
   import flash.events.Event;
   
   public final class class_979 extends Event
   {
      
      public static const const_5:String = "HELP_PRESSED";
      
      public static const const_24:String = "REFRESH_PRESSED";
      
      public static const const_676:String = "QUESTINFO_PRESSED";
      
      public static const const_32:String = "LOCKWINDOW_PRESSED";
      
      public static const const_49:String = "TOGGLE_MINMAX_PRESSED";
       
      
      public function class_979(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new class_979(type,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("RTileWinEvent","type","bubbles","cancelable","eventPhase");
      }
   }
}
