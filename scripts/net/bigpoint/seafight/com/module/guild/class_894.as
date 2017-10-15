package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.view.popups.common.TextInputSkin;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_20.class_33;
   import package_205.class_1353;
   import package_51.class_1355;
   import package_6.class_14;
   import spark.components.Label;
   import spark.components.TextInput;
   import spark.effects.animation.SimpleMotionPath;
   
   public final class class_894 implements class_14
   {
      
      public static const name_3:class_894 = new class_894();
       
      
      private var var_646:int = 0;
      
      public function class_894()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 32241;
      }
      
      public function method_17() : int
      {
         return 0;
      }
      
      public function method_18() : int
      {
         return this.var_646;
      }
      
      public function method_19() : int
      {
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 15 % 16 | (65535 & this.var_646) << 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(32241);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
      }
   }
}
