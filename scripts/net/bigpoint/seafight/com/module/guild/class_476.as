package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.common.thiz;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import package_121.class_841;
   import package_14.class_88;
   import package_41.class_93;
   import spark.components.VScrollBar;
   import spark.filters.DropShadowFilter;
   
   public final class class_476 extends class_67
   {
      
      public static const name_3:class_476 = new class_476();
       
      
      private var var_646:int = 0;
      
      public var var_256:class_936;
      
      public var var_359:class_938;
      
      public function class_476(param1:class_938 = null, param2:class_936 = null)
      {
         super();
         if(param2 == null)
         {
            this.var_256 = new class_936();
         }
         else
         {
            this.var_256 = param2;
         }
         if(param1 == null)
         {
            this.var_359 = new class_938();
         }
         else
         {
            this.var_359 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 8085;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_256 = class_936(class_93.method_26().method_25(param1.readShort()));
         this.var_256.method_15(param1);
         this.var_359 = class_938(class_93.method_26().method_25(param1.readShort()));
         this.var_359.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(8085);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         super.method_14(param1);
         this.var_256.method_14(param1);
         this.var_359.method_14(param1);
      }
   }
}
