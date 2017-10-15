package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_154.class_677;
   import package_170.class_979;
   import package_30.class_1013;
   import package_30.class_62;
   import package_41.class_315;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VScrollBar;
   
   public final class class_584 extends class_315
   {
      
      public static const name_3:class_584 = new class_584();
       
      
      private var var_646:int = 0;
      
      public var var_534:int = 0;
      
      public function class_584(param1:int = 0)
      {
         super();
         this.var_534 = param1;
      }
      
      override public function method_16() : int
      {
         return 8160;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_534 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(8160);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         super.method_14(param1);
         param1.writeShort(this.var_534);
      }
   }
}
