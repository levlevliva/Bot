package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.GemOverviewListSkin;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_104.class_989;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_94;
   import package_17.class_54;
   import package_34.class_1272;
   import package_41.class_84;
   import package_5.class_22;
   import package_5.class_43;
   import package_54.class_319;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.List;
   
   public final class class_440 implements class_14
   {
      
      public static const name_3:class_440 = new class_440();
       
      
      private var var_646:int = 0;
      
      public var var_327:Number = 0;
      
      public function class_440(param1:Number = 0)
      {
         super();
         this.var_327 = param1;
      }
      
      public function method_16() : int
      {
         return -24460;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_327 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-24460);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         param1.writeDouble(this.var_327);
      }
   }
}
