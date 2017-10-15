package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_17.class_151;
   import package_51.class_1005;
   import package_54.class_319;
   import package_6.class_14;
   import package_9.class_91;
   import spark.components.List;
   import spark.effects.easing.Power;
   
   public final class class_400 implements class_14
   {
      
      public static const name_3:class_400 = new class_400();
       
      
      private var var_646:int = 0;
      
      public var name_25:int = 0;
      
      public var var_164:class_91;
      
      public function class_400(param1:class_91 = null, param2:int = 0)
      {
         super();
         this.name_25 = param2;
         if(param1 == null)
         {
            this.var_164 = new class_91();
         }
         else
         {
            this.var_164 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 22222;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_25 = param1.readShort();
         this.name_25 = 65535 & ((65535 & this.name_25) << 16 % 16 | (65535 & this.name_25) >>> 16 - 16 % 16);
         this.name_25 = this.name_25 > 32767?int(this.name_25 - 65536):int(this.name_25);
         this.var_164 = new class_91();
         this.var_164.var_8 = param1.readShort();
         this.var_164.var_8 = 65535 & ((65535 & this.var_164.var_8) << 6 % 16 | (65535 & this.var_164.var_8) >>> 16 - 6 % 16);
         this.var_164.var_8 = this.var_164.var_8 > 32767?int(this.var_164.var_8 - 65536):int(this.var_164.var_8);
         this.var_164.var_9 = param1.readShort();
         this.var_164.var_9 = 65535 & ((65535 & this.var_164.var_9) << 13 % 16 | (65535 & this.var_164.var_9) >>> 16 - 13 % 16);
         this.var_164.var_9 = this.var_164.var_9 > 32767?int(this.var_164.var_9 - 65536):int(this.var_164.var_9);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(22222);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
         param1.writeShort(65535 & ((65535 & this.name_25) >>> 16 % 16 | (65535 & this.name_25) << 16 - 16 % 16));
         param1.writeShort(65535 & ((65535 & this.var_164.var_8) >>> 6 % 16 | (65535 & this.var_164.var_8) << 16 - 6 % 16));
         param1.writeShort(65535 & ((65535 & this.var_164.var_9) >>> 13 % 16 | (65535 & this.var_164.var_9) << 16 - 13 % 16));
      }
   }
}
