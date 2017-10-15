package package_9
{
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_34.class_115;
   import package_6.class_14;
   import spark.filters.DropShadowFilter;
   
   public final class class_899 implements class_14
   {
      
      public static const name_3:class_899 = new class_899();
       
      
      private var var_646:int = 0;
      
      public var name_35:int = 0;
      
      public var var_449:int = 0;
      
      public function class_899(param1:int = 0, param2:int = 0)
      {
         super();
         this.name_35 = param1;
         this.var_449 = param2;
      }
      
      public function method_16() : int
      {
         return -16075;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_35 = param1.readShort();
         this.name_35 = 65535 & ((65535 & this.name_35) << 8 % 16 | (65535 & this.name_35) >>> 16 - 8 % 16);
         this.name_35 = this.name_35 > 32767?int(this.name_35 - 65536):int(this.name_35);
         this.var_449 = param1.readShort();
         this.var_449 = 65535 & ((65535 & this.var_449) >>> 5 % 16 | (65535 & this.var_449) << 16 - 5 % 16);
         this.var_449 = this.var_449 > 32767?int(this.var_449 - 65536):int(this.var_449);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-16075);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         param1.writeShort(65535 & ((65535 & this.name_35) >>> 8 % 16 | (65535 & this.name_35) << 16 - 8 % 16));
         param1.writeShort(65535 & ((65535 & this.var_449) << 5 % 16 | (65535 & this.var_449) >>> 16 - 5 % 16));
      }
   }
}
