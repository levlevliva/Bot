package com.bigpoint.seafight.tools
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.common.BlueButton;
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.RankingKeyValueItem;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.target;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.bit101.components.Style;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.LocalConnection;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_140.class_546;
   import package_154.class_677;
   import package_170.class_979;
   import package_18.class_855;
   import package_23.class_42;
   import package_30.class_1013;
   import package_30.class_62;
   import package_36.class_100;
   import package_47.class_522;
   import package_5.class_1026;
   import package_54.class_162;
   import package_6.class_14;
   import package_69.class_978;
   import package_9.class_447;
   import package_92.class_336;
   import package_92.class_944;
   import package_95.class_341;
   import package_97.class_343;
   import spark.components.Label;
   import spark.components.VScrollBar;
   import spark.filters.DropShadowFilter;
   
   use namespace mx_internal;
   
   public final class class_127
   {
       
      
      public function class_127()
      {
         super();
      }
      
      public static function method_3011(param1:Dictionary) : Boolean
      {
         var _loc2_:* = null;
         for(_loc2_ in param1)
         {
            return false;
         }
         return true;
      }
      
      public static function method_228(param1:Dictionary) : int
      {
         var _loc3_:* = undefined;
         var _loc2_:int = 0;
         for(_loc3_ in param1)
         {
            _loc2_++;
         }
         return _loc2_;
      }
      
      public static function method_54(param1:Dictionary) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in param1)
         {
            delete param1[_loc2_];
         }
      }
   }
}
