package package_86
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.vo.class_1192;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.ImageDisplay;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipNameTextArea;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.ShipEquipmentBuffTab;
   import com.bigpoint.seafight.view.popups.shipequipment.tabs.ShipEquipmentBuffTabController;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.storage.StorageTextVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.storage.StorageVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_1119;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_111.class_696;
   import package_14.class_47;
   import package_14.class_87;
   import package_146.class_1209;
   import package_146.class_1223;
   import package_15.class_273;
   import package_15.class_78;
   import package_159.class_718;
   import package_159.class_756;
   import package_166.class_1589;
   import package_171.class_1270;
   import package_184.class_1135;
   import package_20.class_982;
   import package_41.class_84;
   import package_51.class_1355;
   import package_69.class_978;
   import package_9.class_761;
   import package_9.class_872;
   import package_9.class_91;
   import package_92.class_944;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public final class class_278 extends class_78
   {
       
      
      private var var_2017:class_1223;
      
      private var var_2118:class_1209;
      
      private var var_1065:Dictionary;
      
      public function class_278(param1:class_273)
      {
         super();
         method_35(this.var_2017 = param1.var_2393);
         method_35(this.var_2118 = param1.var_2388);
      }
      
      override protected function method_1182() : Object
      {
         var _loc1_:* = null;
         var _loc2_:class_872 = null;
         var _loc3_:int = 0;
         var _loc4_:class_761 = null;
         var _loc5_:class_1192 = null;
         if(!this.var_2017.name_8 || !this.var_2118.name_8)
         {
            return null;
         }
         if(this.var_1065 == null)
         {
            this.var_1065 = this.method_2335();
         }
         for(_loc1_ in this.var_1065)
         {
            (this.var_1065[_loc1_] as class_1192).var_10 = 0;
         }
         _loc2_ = this.var_2118.name_8;
         _loc3_ = _loc2_.var_663.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = _loc2_.var_663[_loc3_];
            _loc5_ = this.var_1065[_loc4_.name_7] as class_1192;
            _loc5_.var_10 = _loc4_.var_10;
            _loc5_.var_2030 = _loc4_.var_446;
            _loc3_--;
         }
         return this.var_1065;
      }
      
      private final function method_2335() : Dictionary
      {
         var _loc4_:class_756 = null;
         var _loc5_:int = 0;
         var _loc6_:class_1192 = null;
         var _loc1_:Dictionary = new Dictionary();
         var _loc2_:class_718 = this.var_2017.name_8;
         var _loc3_:int = _loc2_.name_9.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = _loc2_.name_9[_loc3_];
            _loc5_ = _loc4_.var_13;
            _loc6_ = new class_1192();
            _loc6_.var_1802 = _loc4_.var_485;
            _loc6_.var_536 = _loc4_.var_509;
            _loc1_[_loc5_] = _loc6_;
            _loc3_--;
         }
         return _loc1_;
      }
      
      public final function method_761(param1:int) : class_1192
      {
         var _loc2_:Dictionary = method_38() as Dictionary;
         return !!_loc2_?_loc2_[param1] as class_1192:null;
      }
      
      public final function method_2666(param1:int) : int
      {
         var _loc2_:class_1192 = this.method_761(param1);
         return !!_loc2_?int(_loc2_.var_10):0;
      }
      
      public final function method_898() : Dictionary
      {
         return method_38() as Dictionary;
      }
   }
}
