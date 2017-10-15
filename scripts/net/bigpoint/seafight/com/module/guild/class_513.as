package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import package_14.class_102;
   import package_41.class_93;
   import spark.components.Label;
   
   public final class class_513 extends class_67
   {
      
      public static const name_3:class_513 = new class_513();
       
      
      private var var_646:int = 0;
      
      public var var_962:class_739;
      
      public function class_513(param1:class_739 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_962 = new class_739();
         }
         else
         {
            this.var_962 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 23956;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_962 = class_739(class_93.method_26().method_25(param1.readShort()));
         this.var_962.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(23956);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         super.method_14(param1);
         this.var_962.method_14(param1);
      }
   }
}
