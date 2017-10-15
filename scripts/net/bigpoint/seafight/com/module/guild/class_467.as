package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_10.class_18;
   import package_10.class_38;
   import package_6.class_14;
   import spark.components.Label;
   
   public final class class_467 implements class_14
   {
      
      public static const name_3:class_467 = new class_467();
       
      
      private var var_646:int = 0;
      
      public var var_337:String = "";
      
      public var var_123:String = "";
      
      public function class_467(param1:String = "", param2:String = "")
      {
         super();
         this.var_337 = param1;
         this.var_123 = param2;
      }
      
      public function method_16() : int
      {
         return -18729;
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
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 13 % 16 | (65535 & this.var_646) >>> 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_337 = param1.readUTF();
         this.var_123 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-18729);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
         param1.writeUTF(this.var_337);
         param1.writeUTF(this.var_123);
      }
   }
}
