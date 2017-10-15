package package_74
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.popups.boarding.skins.CommonEquipmentListSkin;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.event.modules.EventModule;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.shipequipment.component.common.VScrollerGroup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import com.greensock.events.LoaderEvent;
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.containers.Form;
   import mx.controls.Spacer;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.gems.class_593;
   import net.bigpoint.seafight.com.module.gems.class_772;
   import net.bigpoint.seafight.com.module.gems.class_862;
   import package_121.class_841;
   import package_14.class_47;
   import package_15.class_273;
   import package_15.class_78;
   import package_41.class_103;
   import package_8.class_114;
   import package_80.class_1162;
   import spark.components.DataGroup;
   import spark.components.HGroup;
   import spark.components.List;
   
   public final class class_249 extends class_78
   {
       
      
      private var var_1324:class_1162;
      
      public function class_249(param1:class_273)
      {
         super();
         method_35(this.var_1324 = param1.method_2348());
      }
      
      override protected function method_1182() : Object
      {
         var _loc6_:class_593 = null;
         var _loc7_:class_772 = null;
         var _loc1_:class_862 = this.var_1324.name_8;
         if(_loc1_ == null)
         {
            return null;
         }
         var _loc2_:PriceDataVo = new PriceDataVo();
         var _loc3_:Vector.<class_593> = _loc1_.var_650;
         var _loc4_:Vector.<class_772> = _loc1_.var_791;
         var _loc5_:int = 0;
         for each(_loc6_ in _loc3_)
         {
            if(_loc5_ < _loc6_.name_10)
            {
               _loc5_ = _loc6_.name_10;
            }
            _loc2_.prices[_loc6_.name_10] = _loc6_;
         }
         for each(_loc7_ in _loc4_)
         {
            _loc2_.modifiers[_loc7_.var_501] = _loc7_;
         }
         _loc2_.maxLevel = _loc5_;
         return _loc2_;
      }
      
      public final function method_339() : Boolean
      {
         return this.var_1324.name_8 != null;
      }
      
      public final function method_609() : int
      {
         if(!this.method_339())
         {
            return 0;
         }
         var _loc1_:class_862 = this.var_1324.name_8;
         var _loc2_:Vector.<class_593> = _loc1_.var_650;
         return _loc2_[_loc2_.length - 1].name_10 - 1;
      }
      
      public final function method_548(param1:int, param2:int) : class_841
      {
         var _loc3_:PriceDataVo = method_38() as PriceDataVo;
         if(_loc3_ == null)
         {
            return null;
         }
         var _loc4_:class_841 = new class_841();
         var _loc5_:class_772 = _loc3_.modifiers[param1] as class_772;
         var _loc6_:class_593 = _loc3_.prices[param2];
         if(null == _loc6_)
         {
            throw new Error("No price defined for level " + param2);
         }
         if(_loc6_.name_40 > 0)
         {
            _loc4_.name_5 = class_103.name_36;
            _loc4_.var_10 = _loc6_.name_40;
         }
         else
         {
            _loc4_.name_5 = class_103.name_32;
            _loc4_.var_10 = _loc6_.name_39;
         }
         if(_loc5_)
         {
            _loc4_.var_10 = _loc4_.var_10 * _loc5_.var_1448;
         }
         return _loc4_;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_1324);
      }
   }
}

import flash.utils.Dictionary;

class PriceDataVo
{
    
   
   public var prices:Dictionary;
   
   public var modifiers:Dictionary;
   
   public var maxLevel:int;
   
   function PriceDataVo()
   {
      this.prices = new Dictionary();
      this.modifiers = new Dictionary();
      super();
   }
}
