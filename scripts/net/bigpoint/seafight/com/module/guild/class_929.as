package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_51.class_148;
   import package_6.class_14;
   import package_72.class_203;
   import spark.primitives.BitmapImage;
   
   public final class class_929 implements class_14
   {
      
      public static const name_3:class_929 = new class_929();
       
      
      private var var_646:int = 0;
      
      public function class_929()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -2744;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 13 % 16 | (65535 & this.var_646) << 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-2744);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
      }
   }
}
