package package_48
{
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.event.modules.common.skins.RankingModuleSkin;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.GuildMenuVanity;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverviewContentMask;
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.event.EventType;
   import package_123.class_1032;
   import package_174.class_1375;
   import package_29.class_166;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.layouts.BasicLayout;
   
   public final class class_999 extends class_126
   {
      
      private static var name_55:class_999;
       
      
      public function class_999()
      {
         super(EventType);
      }
      
      public static function method_124(param1:String) : int
      {
         return name_3.method_124(param1);
      }
      
      public static function method_27(param1:int) : String
      {
         return name_3.method_27(param1);
      }
      
      private static function get name_3() : class_999
      {
         return !!name_55?name_55:name_55 = new class_999();
      }
   }
}
