package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.component.target;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import package_170.class_979;
   import package_5.class_12;
   import package_6.class_14;
   
   use namespace mx_internal;
   
   public final class class_638 implements class_14
   {
      
      public static const name_3:class_638 = new class_638();
       
      
      private var var_646:int = 0;
      
      public function class_638()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -27932;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 13 % 16 | (65535 & this.var_646) >>> 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-27932);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
      }
   }
}
