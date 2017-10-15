package package_34
{
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderCheckBoxRenderer;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tooltips.EligibleUpgradeTooltip;
   import com.bigpoint.seafight.view.popups.spymenu.SpyTableEvent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.GemOverviewListSkin;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.events.ToolTipEvent;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.class_1476;
   import package_108.class_581;
   import package_136.class_926;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_96;
   import package_170.class_979;
   import package_174.class_1375;
   import package_179.class_1064;
   import package_186.class_1137;
   import package_190.class_1181;
   import package_214.class_1598;
   import package_22.class_645;
   import package_22.class_671;
   import package_22.class_689;
   import package_22.class_705;
   import package_22.class_743;
   import package_22.class_802;
   import package_22.class_832;
   import package_32.class_64;
   import package_41.class_84;
   import package_42.class_98;
   import package_43.class_1189;
   import package_5.class_22;
   import package_52.class_167;
   import package_54.class_159;
   import package_55.class_1007;
   import package_93.class_876;
   import package_93.class_987;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_117 extends class_69
   {
      
      private static var name_55:class_117;
       
      
      public function class_117()
      {
         super();
      }
      
      public static function get name_3() : class_117
      {
         if(!name_55)
         {
            name_55 = new class_117();
         }
         return name_55;
      }
      
      public final function method_942() : void
      {
         var_125.method_31(new class_705());
      }
      
      public final function method_1732() : void
      {
         var_125.method_31(new class_671());
      }
      
      public final function method_2501() : void
      {
         var_125.method_31(new class_876(class_987.const_1785));
      }
      
      public final function method_1179() : void
      {
         var_125.method_31(new class_876(class_987.const_1724));
      }
      
      public final function method_1871() : void
      {
         var_125.method_31(new class_689());
      }
      
      public final function method_2725() : void
      {
         var_125.method_31(new class_832());
      }
      
      public final function method_643(param1:int) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var_125.method_31(new class_743(param1));
      }
      
      public final function method_778(param1:int, param2:String, param3:int = 0) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc4_:class_802 = new class_802();
         _loc4_.var_89 = param1;
         _loc4_.var_137 = param2;
         _loc4_.var_6 = param3;
         _loc4_.var_427 = param3 <= 0;
         var_125.method_31(_loc4_);
      }
      
      public final function method_524(param1:int, param2:int, param3:int, param4:int = 0) : void
      {
         if(param1 < 0)
         {
            return;
         }
         var _loc5_:class_645 = new class_645();
         _loc5_.var_89 = param1;
         _loc5_.name_34 = param2;
         _loc5_.var_427 = param4 <= 0;
         _loc5_.var_131 = param3;
         _loc5_.var_6 = param4;
         var_125.method_31(_loc5_);
      }
   }
}
