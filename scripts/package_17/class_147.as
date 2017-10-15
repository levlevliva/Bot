package package_17
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizableTitleWindow;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuEquipmentTab;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandMenuEquipmentTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildProfileView;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.target;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverview;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.FavoriteButtonSkin;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BCBitmapData;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_108.class_581;
   import package_130.class_1143;
   import package_14.class_232;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_87;
   import package_171.class_1275;
   import package_204.class_1280;
   import package_204.class_1295;
   import package_215.class_1600;
   import package_29.class_166;
   import package_34.class_1000;
   import package_36.class_100;
   import package_41.class_84;
   import package_42.class_98;
   import package_5.class_123;
   import package_51.class_1355;
   import package_59.class_180;
   import package_88.class_1093;
   import package_9.class_91;
   import package_9.class_917;
   import package_99.class_786;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.ToggleButton;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_147
   {
      
      private static const const_80:ILogger = Log.getLogger("MapChangeControl");
      
      private static var name_55:class_147;
       
      
      private var var_2434:Boolean = false;
      
      public function class_147(param1:Function)
      {
         super();
         if(param1 !== method_976)
         {
            throw new class_166();
         }
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_147
      {
         if(name_55 == null)
         {
            name_55 = new class_147(method_976);
         }
         return name_55;
      }
      
      public final function method_843(param1:int) : void
      {
         class_47.method_29.method_75.method_598(false);
         var _loc2_:class_232 = class_47.method_51;
         if(_loc2_.method_489())
         {
            this.method_1022(param1);
            return;
         }
         if(param1 >= 99 && param1 < 500)
         {
            this.method_1022(param1);
         }
         else if(param1 > 0)
         {
            this.method_1842(param1);
         }
         else
         {
            const_80.warn("MapJump called to be engaged but no valid mapID found!");
         }
      }
      
      private final function method_1022(param1:int) : void
      {
         class_1000.name_3.method_2191(param1);
      }
      
      private final function method_1842(param1:int) : void
      {
         class_1000.name_3.method_2830(param1);
      }
      
      public function get method_514() : Boolean
      {
         return this.var_2434;
      }
      
      public function set method_514(param1:Boolean) : void
      {
         this.var_2434 = param1;
      }
   }
}
