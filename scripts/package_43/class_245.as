package package_43
{
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.class_1234;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.itemrenderers.MateyActionsItemRenderer;
   import com.bigpoint.seafight.view.popups.shipequipment.skins.StatisticListSkin;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentDecksVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPresetsVo;
   import com.bit101.components.Style;
   import com.greensock.TweenMax;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_111.class_425;
   import package_111.class_742;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_88;
   import package_15.class_273;
   import package_15.class_78;
   import package_152.class_668;
   import package_169.class_1152;
   import package_169.class_1153;
   import package_169.class_1154;
   import package_169.class_1155;
   import package_169.class_1156;
   import package_41.class_84;
   import package_5.class_22;
   import package_72.class_203;
   import spark.components.Label;
   import spark.components.List;
   import spark.primitives.Rect;
   
   public final class class_245 extends class_78
   {
       
      
      private var var_2397:class_1152;
      
      private var var_2183:class_1153;
      
      private var var_2047:class_1155;
      
      private var var_2145:class_1154;
      
      private var var_2125:class_1156;
      
      public function class_245(param1:class_273)
      {
         super();
         this.var_2397 = param1.var_2376;
         this.var_2183 = param1.var_2435;
         this.var_2047 = param1.var_2159;
         this.var_2145 = param1.var_2109;
         this.var_2125 = param1.var_2259;
         method_35(this.var_2397);
         method_35(this.var_2183);
         method_35(this.var_2047);
         method_35(this.var_2145);
         method_35(this.var_2125);
      }
      
      override protected function method_1182() : Object
      {
         var _loc6_:class_742 = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:class_742 = null;
         var _loc10_:Boolean = false;
         var _loc12_:DeckSailsPreset_VO = null;
         var _loc13_:DeckSailsPreset_VO = null;
         var _loc1_:ShipEquipmentDecksVo = new ShipEquipmentDecksVo();
         var _loc2_:Vector.<DeckSailsPreset_VO> = new Vector.<DeckSailsPreset_VO>();
         var _loc3_:class_425 = this.var_2047.name_8;
         var _loc4_:Number = _loc3_.name_38;
         var _loc5_:String = class_47.method_22.method_20("newpreset");
         for each(_loc6_ in _loc3_.var_96)
         {
            _loc13_ = new DeckSailsPreset_VO();
            if(!_loc6_.name_13 || _loc6_.name_13 == "")
            {
               _loc6_.name_13 = _loc5_;
            }
            _loc13_.itmVO = _loc6_;
            _loc2_.push(_loc13_);
         }
         _loc7_ = 1;
         _loc8_ = 0;
         _loc10_ = false;
         _loc8_ = 0;
         while(_loc8_ < _loc3_.var_96.length)
         {
            _loc9_ = _loc3_.var_96[_loc8_];
            if(_loc9_.name_13 == _loc5_)
            {
               _loc10_ = true;
               break;
            }
            _loc8_++;
         }
         if(_loc10_)
         {
            _loc8_ = 0;
            while(_loc8_ < _loc3_.var_96.length)
            {
               _loc9_ = _loc3_.var_96[_loc8_];
               if(_loc9_.name_13.indexOf(_loc5_) != -1)
               {
                  _loc9_.name_13 = _loc5_ + " " + _loc7_;
                  _loc7_++;
               }
               _loc8_++;
            }
         }
         var _loc11_:ShipEquipmentPresetsVo = _loc1_.presets = new ShipEquipmentPresetsVo();
         _loc11_.names.length = 0;
         _loc11_.ids.length = 0;
         _loc11_.activeId = _loc4_;
         for each(_loc12_ in _loc2_)
         {
            _loc11_.ids.push(_loc12_.itmVO.var_32);
            _loc11_.names.push(_loc12_.itmVO.name_13);
            if(_loc12_.itmVO.var_32 == _loc11_.activeId)
            {
               _loc11_.activeConf = _loc12_.itmVO;
            }
         }
         return _loc1_;
      }
      
      public function get name_8() : ShipEquipmentDecksVo
      {
         return method_38() as ShipEquipmentDecksVo;
      }
   }
}
