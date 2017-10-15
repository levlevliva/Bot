package package_47
{
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public final class class_575 implements class_14
   {
      
      public static const name_3:class_575 = new class_575();
       
      
      private var var_646:int = 0;
      
      public var name_7:int = 0;
      
      public function class_575(param1:int = 0)
      {
         super();
         this.name_7 = param1;
      }
      
      public function method_16() : int
      {
         return 29254;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_7 = param1.readShort();
         this.name_7 = 65535 & ((65535 & this.name_7) >>> 8 % 16 | (65535 & this.name_7) << 16 - 8 % 16);
         this.name_7 = this.name_7 > 32767?int(this.name_7 - 65536):int(this.name_7);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(29254);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         param1.writeShort(65535 & ((65535 & this.name_7) << 8 % 16 | (65535 & this.name_7) >>> 16 - 8 % 16));
      }
   }
}
