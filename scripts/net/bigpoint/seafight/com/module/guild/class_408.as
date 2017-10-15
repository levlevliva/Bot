package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.events.FlexEvent;
   import package_6.class_14;
   import spark.components.Group;
   
   public final class class_408 implements class_14
   {
      
      public static const name_3:class_408 = new class_408();
       
      
      private var var_646:int = 0;
      
      public var name_11:int = 0;
      
      public var var_337:String = "";
      
      public function class_408(param1:int = 0, param2:String = "")
      {
         super();
         this.name_11 = param1;
         this.var_337 = param2;
      }
      
      public function method_16() : int
      {
         return 1295;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_11 = param1.readShort();
         this.name_11 = 65535 & ((65535 & this.name_11) << 12 % 16 | (65535 & this.name_11) >>> 16 - 12 % 16);
         this.name_11 = this.name_11 > 32767?int(this.name_11 - 65536):int(this.name_11);
         this.var_337 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(1295);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
         param1.writeShort(65535 & ((65535 & this.name_11) >>> 12 % 16 | (65535 & this.name_11) << 16 - 12 % 16));
         param1.writeUTF(this.var_337);
      }
   }
}
