package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.tools.class_13;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_88;
   import package_152.class_776;
   import package_17.class_326;
   import package_41.class_84;
   import package_41.class_93;
   
   public final class class_760 extends class_67
   {
      
      public static const name_3:class_760 = new class_760();
       
      
      private var var_646:int = 0;
      
      public var var_17:class_84;
      
      public function class_760(param1:class_84 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_17 = new class_84();
         }
         else
         {
            this.var_17 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 5230;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_17 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_17.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(5230);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         super.method_14(param1);
         this.var_17.method_14(param1);
      }
   }
}
