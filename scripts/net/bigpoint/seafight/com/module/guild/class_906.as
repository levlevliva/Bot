package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_41.class_89;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.DataGroup;
   import spark.components.HGroup;
   
   public final class class_906 implements class_14
   {
      
      public static const name_3:class_906 = new class_906();
       
      
      private var var_646:int = 0;
      
      public var name_7:class_89;
      
      public function class_906(param1:class_89 = null)
      {
         super();
         if(param1 == null)
         {
            this.name_7 = new class_89();
         }
         else
         {
            this.name_7 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -15030;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 9 % 16 | (65535 & this.var_646) << 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_7 = class_89(class_93.method_26().method_25(param1.readShort()));
         this.name_7.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-15030);
         param1.writeShort(65535 & ((65535 & 0) << 9 % 16 | (65535 & 0) >>> 16 - 9 % 16));
         this.name_7.method_14(param1);
      }
   }
}
