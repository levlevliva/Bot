package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_6.class_14;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichText;
   
   public final class class_736 implements class_14
   {
      
      public static const name_3:class_736 = new class_736();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var name_13:String = "";
      
      public function class_736(param1:String = "", param2:int = 0)
      {
         super();
         this.name_5 = param2;
         this.name_13 = param1;
      }
      
      public function method_16() : int
      {
         return 11202;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.name_13 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(11202);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
         param1.writeShort(this.name_5);
         param1.writeUTF(this.name_13);
      }
   }
}
