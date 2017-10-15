package net.bigpoint.seafight.com.module.useraction
{
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bit101.components.LabelBar;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_131.class_573;
   import package_14.class_47;
   import package_34.class_1499;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import package_9.class_91;
   import spark.layouts.VerticalLayout;
   
   public final class class_364 implements class_14
   {
      
      public static const name_3:class_364 = new class_364();
       
      
      private var var_646:int = 0;
      
      public var var_17:class_84;
      
      public var var_334:int = 0;
      
      public function class_364(param1:class_84 = null, param2:int = 0)
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
         this.var_334 = param2;
      }
      
      public function method_16() : int
      {
         return -24692;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 8 % 16 | (65535 & this.var_646) << 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_17 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_17.method_15(param1);
         this.var_334 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-24692);
         param1.writeShort(65535 & ((65535 & 0) << 8 % 16 | (65535 & 0) >>> 16 - 8 % 16));
         this.var_17.method_14(param1);
         param1.writeShort(this.var_334);
      }
   }
}
