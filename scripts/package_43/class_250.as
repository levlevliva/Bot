package package_43
{
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.greensock.TweenLite;
   import com.greensock.easing.Strong;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_123.class_652;
   import package_123.class_837;
   import package_15.class_273;
   import package_15.class_78;
   import package_187.class_1164;
   import package_20.class_33;
   import package_72.class_203;
   import package_92.class_336;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_250 extends class_78
   {
       
      
      private var var_2093:class_1164;
      
      public function class_250(param1:class_273)
      {
         super();
         this.var_2093 = param1.var_2276;
         method_35(this.var_2093);
      }
      
      override protected function method_1182() : Object
      {
         var _loc1_:SpyServicePrice = new SpyServicePrice();
         _loc1_.message = this.var_2093.name_8;
         return _loc1_;
      }
      
      public function get name_8() : SpyServicePrice
      {
         return method_38() as class_250;
      }
   }
}

import package_147.class_1163;
import package_147.class_918;

class SpyServicePrice
{
    
   
   public var message:class_918;
   
   function SpyServicePrice()
   {
      super();
   }
   
   public function get locateUserPearls() : int
   {
      return this.getPrice(class_1163.const_1585);
   }
   
   public function get locateGuildPearls() : int
   {
      return this.getPrice(class_1163.const_1788);
   }
   
   public function get inspectUserPearls() : int
   {
      return this.getPrice(class_1163.const_1803);
   }
   
   public function get strategicUserPearls() : int
   {
      return this.getPrice(class_1163.const_1693);
   }
   
   private function getPrice(param1:int) : int
   {
      if(this.message)
      {
         return this.message.var_186[param1].var_860;
      }
      return 0;
   }
}
