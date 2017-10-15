package package_3
{
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.vo.class_1372;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.ButtonBarIconButton;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_1119;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_61;
   import package_14.class_87;
   import package_14.class_96;
   import package_16.class_28;
   import package_171.class_1270;
   import package_2.class_9;
   import package_49.class_140;
   import package_49.class_1481;
   import package_49.class_633;
   import package_49.class_857;
   import package_5.class_133;
   import package_5.class_22;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_146;
   import spark.components.ButtonBar;
   import spark.components.DataGroup;
   import spark.components.RichText;
   import spark.components.VGroup;
   
   public final class class_26 implements class_9
   {
      
      public static const const_699:String = "grid";
      
      public static const const_775:String = "debug";
       
      
      public function class_26()
      {
         super();
      }
      
      public static function method_1105() : Boolean
      {
         var _loc1_:Object = class_61.method_21().method_835();
         return _loc1_[class_26.const_699] != null;
      }
      
      public function method_248(param1:class_14) : void
      {
         var _loc2_:class_146 = param1 as class_146;
         class_51.var_1118 = _loc2_.var_1693;
         class_51.var_696 = _loc2_.var_1546 || _loc2_.name_89;
         var _loc3_:Object = class_61.method_21().method_835();
         if(class_51.var_696)
         {
            _loc3_[const_775] = 1;
            class_61.method_21().method_783();
         }
         else
         {
            delete _loc3_[const_775];
         }
         if(class_51.var_1118)
         {
            _loc3_[const_699] = 1;
            class_61.method_21().method_783();
         }
         else
         {
            delete _loc3_[const_699];
         }
         class_61.method_21().method_783();
         if(class_51.var_696)
         {
            class_47.method_24.method_1222();
         }
      }
   }
}
