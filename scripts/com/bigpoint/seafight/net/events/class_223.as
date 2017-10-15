package com.bigpoint.seafight.net.events
{
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_742;
   import package_111.class_745;
   import package_122.class_656;
   import package_14.class_47;
   import package_14.class_88;
   import package_4.class_11;
   import package_41.class_84;
   import package_42.class_98;
   import package_48.class_996;
   import package_49.class_137;
   import package_88.class_1093;
   import spark.components.List;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_223 extends Event
   {
      
      public static const const_860:String = "actionItemStatusChange";
      
      public static const const_581:String = "updateItem";
      
      public static const const_1022:String = "updateQuickButtons";
       
      
      protected var var_513:int = -1;
      
      protected var var_2232:int;
      
      public function class_223(param1:String = "actionItemStatusChange", param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         return new class_223(type,bubbles,cancelable);
      }
      
      public function set name_7(param1:int) : void
      {
         this.var_513 = param1;
      }
      
      public function get name_7() : int
      {
         return this.var_513;
      }
      
      public function set name_19(param1:int) : void
      {
         this.var_2232 = param1;
      }
      
      public function get name_19() : int
      {
         return this.var_2232;
      }
   }
}
