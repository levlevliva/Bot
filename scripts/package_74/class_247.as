package package_74
{
   import com.bigpoint.seafight.model.inventory.vo.gem.Gem_VO;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.vo.GemPopupBootybagTabVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import flash.events.Event;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import mx.collections.ArrayList;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_104.class_1160;
   import package_104.class_641;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_88;
   import package_15.class_273;
   import package_15.class_78;
   import package_169.class_1159;
   import package_190.*;
   import package_41.class_103;
   import package_5.class_43;
   import package_72.class_1442;
   import spark.components.HGroup;
   import spark.events.IndexChangeEvent;
   
   public final class class_247 extends class_78
   {
       
      
      private var var_1461:class_1159;
      
      public function class_247(param1:class_273)
      {
         super();
         this.var_1461 = param1.method_2303();
         method_35(this.var_1461);
      }
      
      override protected function method_1182() : Object
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:class_641 = null;
         var _loc6_:Array = null;
         var _loc1_:GemPopupBootybagTabVo = new GemPopupBootybagTabVo();
         if(this.var_1461.name_8)
         {
            _loc2_ = [];
            _loc3_ = [];
            _loc4_ = [];
            _loc4_[class_1160.const_1336] = _loc2_;
            _loc4_[class_1160.const_1591] = _loc2_;
            _loc4_[class_1160.const_1492] = _loc2_;
            _loc4_[class_1160.const_1819] = _loc3_;
            _loc4_[class_1160.const_1382] = _loc3_;
            _loc4_[class_1160.const_1400] = _loc3_;
            for each(_loc5_ in this.var_1461.name_8.name_9)
            {
               _loc6_ = _loc4_[_loc5_.var_13];
               if(_loc6_ && _loc5_.var_10 > 0)
               {
                  _loc6_.push(_loc5_);
                  if(_loc6_ == _loc3_)
                  {
                     _loc1_.petTotal = _loc1_.petTotal + _loc5_.var_10;
                  }
                  else if(_loc6_ == _loc2_)
                  {
                     _loc1_.shipTotal = _loc1_.shipTotal + _loc5_.var_10;
                  }
               }
            }
            _loc2_.sort(this.method_1453);
            _loc3_.sort(this.method_1453);
            _loc1_.regular = new ArrayList(_loc2_);
            _loc1_.pet = new ArrayList(_loc3_);
         }
         else
         {
            _loc1_.pet = _loc1_.regular = new ArrayList();
         }
         return _loc1_;
      }
      
      public function get name_8() : GemPopupBootybagTabVo
      {
         return method_38() as GemPopupBootybagTabVo;
      }
      
      private final function method_1453(param1:class_641, param2:class_641) : int
      {
         var _loc3_:int = param1.var_13;
         var _loc4_:int = param2.var_13;
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         return 0;
      }
   }
}
