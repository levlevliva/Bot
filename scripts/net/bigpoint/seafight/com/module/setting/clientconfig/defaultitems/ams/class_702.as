package net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.SimpleBorder;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_152.class_776;
   import package_167.class_1024;
   import package_9.class_761;
   import spark.components.Group;
   import spark.components.Label;
   import spark.primitives.BitmapImage;
   
   public final class class_702 extends class_602
   {
      
      public static const name_3:class_702 = new class_702();
       
      
      private var var_646:int = 0;
      
      public var var_65:int = 0;
      
      public function class_702(param1:int = 0)
      {
         super();
         this.var_65 = param1;
      }
      
      override public function method_16() : int
      {
         return -13688;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 0;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_65 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-13688);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
         super.method_14(param1);
         param1.writeShort(this.var_65);
      }
   }
}
