package package_43
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1192;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleSlotVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.RadioImageButton;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameModule;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.GuildColor;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankItemListItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.ShipEquipmentBuffTab;
   import com.bigpoint.seafight.view.popups.shipequipment.tabs.ShipEquipmentBuffTabController;
   import com.bigpoint.seafight.view.popups.shipequipment.tools.ShipEquipmentTools;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.storage.StorageTextVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.storage.StorageVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.utils.LinkedList;
   import mx.utils.LinkedListNode;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import package_104.class_448;
   import package_104.class_641;
   import package_107.class_380;
   import package_107.class_693;
   import package_111.class_741;
   import package_111.class_774;
   import package_118.class_725;
   import package_120.class_919;
   import package_130.class_711;
   import package_14.class_1313;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_94;
   import package_15.class_273;
   import package_15.class_78;
   import package_150.class_587;
   import package_150.class_805;
   import package_166.class_1589;
   import package_169.class_1130;
   import package_169.class_1131;
   import package_169.class_1133;
   import package_169.class_1134;
   import package_17.class_990;
   import package_184.class_1135;
   import package_185.class_1136;
   import package_186.class_1137;
   import package_20.class_33;
   import package_23.class_42;
   import package_26.class_1086;
   import package_30.class_62;
   import package_34.class_1526;
   import package_36.class_1417;
   import package_41.class_84;
   import package_46.class_1132;
   import package_46.class_1224;
   import package_5.class_984;
   import package_51.class_1355;
   import package_52.class_167;
   import package_76.class_279;
   import package_89.class_1138;
   import package_9.class_350;
   import package_9.class_899;
   import package_92.class_1278;
   import package_92.class_944;
   import package_95.class_341;
   import package_97.class_409;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.PopUpAnchor;
   import spark.components.Scroller;
   import spark.components.gridClasses.GridColumn;
   import spark.components.gridClasses.GridLayer;
   import spark.effects.animation.SimpleMotionPath;
   import spark.events.TextOperationEvent;
   import spark.primitives.Ellipse;
   import spark.primitives.Rect;
   
   public final class class_235 extends class_78
   {
       
      
      private var var_1971:class_1131;
      
      private var var_1991:class_1134;
      
      private var var_2098:class_1133;
      
      private var var_1965:class_1130;
      
      private var var_1703:class_269;
      
      public function class_235(param1:class_273, param2:class_269)
      {
         super();
         method_35(this.var_1703 = param2);
         method_35(this.var_1971 = param1.var_2418);
         method_35(this.var_1991 = param1.var_2128);
         method_35(this.var_2098 = param1.var_2325);
         method_35(this.var_1965 = param1.var_2343);
      }
      
      private static function method_1502(param1:class_587) : ShipEquipmentVo
      {
         var _loc2_:ShipEquipmentVo = null;
         var _loc3_:int = 0;
         _loc2_ = new ShipEquipmentVo();
         _loc3_ = param1.var_13;
         _loc2_.id = _loc3_;
         _loc2_.level = param1.name_10;
         _loc2_.equipPriority = param1.var_269;
         _loc2_.type = param1.var_535;
         _loc2_.slotType = param1.var_328;
         _loc2_.slots = param1.var_266;
         _loc2_.amount = 0;
         _loc2_.iconPath_small = method_1233(_loc3_);
         _loc2_.iconPath_large = method_1402(_loc3_);
         _loc2_.image = new class_1138(_loc2_.iconPath_small,48,48);
         _loc2_.showAmountInTooltip = false;
         _loc2_.itemName = method_1355(_loc3_);
         _loc2_.desc = method_1509(_loc3_);
         _loc2_.amsPrefix = class_47.method_22.method_20("amsEffect");
         _loc2_.amsConditionPrefix = class_47.method_22.method_20("amsCheckEffects");
         _loc2_.price = param1.var_271;
         class_1137.method_259(param1.var_93,_loc2_);
         return _loc2_;
      }
      
      public static function method_1355(param1:int) : String
      {
         var _loc2_:String = class_47.method_37.method_32(class_88.const_294,param1.toString());
         return _loc2_;
      }
      
      public static function method_1509(param1:int) : String
      {
         return class_47.method_108.method_32(class_94.const_497,param1.toString());
      }
      
      public static function method_1233(param1:int) : String
      {
         return class_42.method_47("images/merchant/pet/small/gfx_pet_small_" + param1 + class_984.const_9);
      }
      
      public static function method_1402(param1:int) : String
      {
         return class_42.method_47("images/merchant/pet/large/gfx_pet_large_" + param1 + class_984.const_9);
      }
      
      override protected function method_1182() : Object
      {
         var _loc6_:class_1135 = null;
         var _loc7_:ShipEquipmentVo = null;
         var _loc8_:class_587 = null;
         var _loc9_:class_693 = null;
         var _loc10_:class_641 = null;
         var _loc11_:ShipEquipmentVo = null;
         var _loc12_:int = 0;
         var _loc1_:class_380 = this.var_1971.name_8;
         var _loc2_:class_805 = this.var_1991.name_8;
         var _loc3_:class_448 = this.var_2098.name_8;
         var _loc4_:class_448 = this.var_1965.name_8;
         if(!_loc1_ || !_loc2_ || !_loc3_ || !_loc4_)
         {
            return null;
         }
         var _loc5_:DataVo_2870 = new DataVo_2870();
         for each(_loc8_ in _loc2_.name_9)
         {
            if(_loc8_.var_328 == class_1136.const_16)
            {
               _loc6_ = this.method_386(_loc5_.equipment,_loc8_.var_328);
               _loc6_.method_369(method_1502(_loc8_));
            }
         }
         for each(_loc9_ in _loc1_.name_9)
         {
            if(_loc9_.var_328 == class_1136.const_91)
            {
               _loc6_ = this.method_386(_loc5_.equipment,_loc9_.var_328);
               _loc11_ = class_1132.method_975(_loc9_);
               _loc12_ = _loc11_.getId();
               _loc11_.timeObtained = this.var_1703.method_1783(_loc12_);
               _loc11_.timeExpiring = this.var_1703.method_2713(_loc12_);
               _loc11_.timeRemainingWarning = 24 * 60 * 60 * 1000 * 5;
               _loc6_.method_369(_loc11_);
            }
         }
         _loc6_ = this.method_386(_loc5_.equipment,class_1136.const_16);
         for each(_loc10_ in _loc4_.name_9)
         {
            _loc7_ = _loc6_.method_321(_loc10_.var_13);
            if(_loc7_)
            {
               _loc7_.amount = _loc10_.var_10;
            }
         }
         _loc6_ = this.method_386(_loc5_.equipment,class_1136.const_91);
         for each(_loc10_ in _loc3_.name_9)
         {
            _loc7_ = _loc6_.method_321(_loc10_.var_13);
            if(_loc7_)
            {
               _loc7_.amount = _loc10_.var_10;
            }
         }
         ShipEquipmentTools.setHigherLevelsVisible(_loc6_);
         return _loc5_;
      }
      
      private final function method_386(param1:Dictionary, param2:int) : class_1135
      {
         var _loc3_:class_1135 = param1[param2] as class_1135;
         if(null == _loc3_)
         {
            param1[param2] = _loc3_ = new class_1135();
         }
         return _loc3_;
      }
      
      public final function method_1959() : class_1135
      {
         var _loc1_:DataVo_2870 = method_38() as DataVo_2870;
         return !!_loc1_?_loc1_.equipment[class_1136.const_16] as class_1135:null;
      }
      
      public final function method_1697() : class_1135
      {
         var _loc1_:DataVo_2870 = method_38() as DataVo_2870;
         return !!_loc1_?_loc1_.equipment[class_1136.const_91] as class_1135:null;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_1703);
         method_43(this.var_1971);
         method_43(this.var_1991);
         method_43(this.var_2098);
         method_43(this.var_1965);
      }
   }
}

import flash.utils.Dictionary;

class DataVo_2870
{
    
   
   public var equipment:Dictionary;
   
   function DataVo_2870()
   {
      this.equipment = new Dictionary();
      super();
   }
}
