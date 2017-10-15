package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_17.class_54;
   import package_5.class_43;
   import package_55.class_1017;
   import package_6.class_14;
   import package_72.class_203;
   import spark.filters.GlowFilter;
   
   public final class class_827 implements class_14
   {
      
      public static const name_3:class_827 = new class_827();
       
      
      private var var_646:int = 0;
      
      public var var_1002:int = 0;
      
      public function class_827(param1:int = 0)
      {
         super();
         this.var_1002 = param1;
      }
      
      public function method_16() : int
      {
         return -13414;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1002 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-13414);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         param1.writeShort(this.var_1002);
      }
   }
}
