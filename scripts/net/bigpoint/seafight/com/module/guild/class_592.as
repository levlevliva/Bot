package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.DynamicImageButton;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_47;
   import package_170.class_979;
   import package_41.class_84;
   import package_41.class_93;
   
   public final class class_592 extends class_67
   {
      
      public static const name_3:class_592 = new class_592();
       
      
      private var var_646:int = 0;
      
      public var var_17:class_84;
      
      public function class_592(param1:class_84 = null)
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
         return -26706;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 8 % 16 | (65535 & this.var_646) << 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_17 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_17.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-26706);
         param1.writeShort(65535 & ((65535 & 0) << 8 % 16 | (65535 & 0) >>> 16 - 8 % 16));
         super.method_14(param1);
         this.var_17.method_14(param1);
      }
   }
}
