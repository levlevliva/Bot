package package_26
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.GemOverviewListSkin;
   import com.greensock.events.TweenEvent;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLVariables;
   import mx.binding.BindingManager;
   import package_34.class_1053;
   import package_34.class_73;
   import spark.components.Group;
   import spark.components.List;
   
   public final class class_218 extends Event
   {
      
      public static const const_1045:String = "quickbar_duplicate";
      
      public static const const_1198:String = "quickbar_clean";
       
      
      private var var_513:int;
      
      private var var_1924:int;
      
      public function class_218(param1:String = "quickbar_duplicate", param2:int = -1, param3:int = 0, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.var_513 = param2;
         this.var_1924 = param3;
      }
      
      override public function clone() : Event
      {
         return new class_1088(type,this.var_513,this.bubbles,this.cancelable);
      }
      
      public function set name_7(param1:int) : void
      {
         this.var_513 = param1;
      }
      
      public function get name_7() : int
      {
         return this.var_513;
      }
      
      public function get method_1447() : int
      {
         return this.var_1924;
      }
      
      public function set method_1447(param1:int) : void
      {
         this.var_1924 = param1;
      }
   }
}
