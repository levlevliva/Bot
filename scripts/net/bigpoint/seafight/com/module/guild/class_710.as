package net.bigpoint.seafight.com.module.guild
{
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.logging.Log;
   import package_154.class_619;
   import package_6.class_14;
   import spark.components.Group;
   import spark.effects.animation.SimpleMotionPath;
   import spark.primitives.Rect;
   
   public final class class_710 implements class_14
   {
      
      public static const name_3:class_710 = new class_710();
       
      
      private var var_646:int = 0;
      
      public function class_710()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 13826;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(13826);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
      }
   }
}
