package package_56
{
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.model.vo.class_317;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import package_128.class_460;
   import package_14.class_220;
   import package_14.class_96;
   import package_170.class_979;
   import package_171.class_1058;
   import package_3.class_10;
   import package_6.class_14;
   import package_7.class_1039;
   import package_90.class_316;
   import package_90.class_352;
   import package_90.class_481;
   import spark.components.HGroup;
   
   public final class class_368 extends class_10
   {
      
      private static const const_859:class_223 = new class_223(class_223.const_860);
      
      private static var name_55:class_368;
       
      
      private var var_995:Array;
      
      private var var_1808:class_352;
      
      private var var_254:class_1058;
      
      public function class_368()
      {
         super();
         this.var_995 = [];
         this.var_254 = class_1058.method_21();
         method_23(class_352.name_3,this.method_2576);
         method_23(class_481.name_3,this.method_1596);
         method_23(class_460.name_3,this.method_2379);
      }
      
      public static function get name_3() : class_368
      {
         if(null == name_55)
         {
            name_55 = new class_368();
         }
         return name_55;
      }
      
      public static function get name_9() : Array
      {
         return name_3.var_995;
      }
      
      private final function method_34() : void
      {
         var _loc1_:Vector.<class_316> = null;
         var _loc4_:class_316 = null;
         var _loc5_:class_317 = null;
         _loc1_ = this.var_1808.var_802;
         var _loc2_:int = _loc1_.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = _loc1_[_loc3_];
            _loc5_ = this.var_995[_loc4_.var_13] as class_317;
            if(_loc5_)
            {
               _loc5_.method_34(_loc4_);
            }
            else
            {
               _loc5_ = class_317.method_193(_loc4_);
            }
            _loc5_.method_396 = this.method_1061(_loc5_.var_13);
            this.var_995[_loc5_.var_13] = _loc5_;
            _loc3_++;
         }
         dispatchEvent(const_859);
      }
      
      private final function method_1596(param1:class_14) : void
      {
         var _loc4_:class_316 = null;
         var _loc2_:class_481 = param1 as class_481;
         var _loc3_:class_223 = new class_223(class_223.const_581);
         _loc4_ = _loc2_.var_233;
         var _loc5_:int = _loc4_.var_13;
         _loc3_.name_7 = _loc5_;
         var _loc6_:class_317 = this.var_995[_loc5_] as class_317;
         if(null == _loc6_)
         {
            _loc6_ = class_317.method_193(_loc2_.var_233);
            _loc6_.method_396 = this.method_1061(_loc6_.var_13);
            this.var_995[_loc5_] = _loc6_;
         }
         _loc6_.var_353 = _loc4_.var_353;
         _loc6_.var_10 = _loc4_.var_10;
         dispatchEvent(_loc3_);
      }
      
      private final function method_2576(param1:class_14) : void
      {
         var _loc2_:class_316 = null;
         this.var_1808 = param1 as class_352;
         for each(_loc2_ in this.var_995)
         {
            _loc2_.var_10 = 0;
         }
         this.method_34();
         class_220.method_479(class_220.const_972);
      }
      
      private final function method_1061(param1:int) : Boolean
      {
         var _loc3_:ItemVO = null;
         if(!this.var_254.var_25)
         {
            return false;
         }
         var _loc2_:Vector.<ItemVO> = this.var_254.var_14;
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.default_VO.itemID == param1)
            {
               return param1 == class_317.const_1626 || param1 == class_317.const_966;
            }
         }
         return false;
      }
      
      private final function method_2379(param1:class_14) : void
      {
         this.var_254.method_105(param1);
         if(!this.var_1808)
         {
            return;
         }
         this.method_34();
      }
   }
}
