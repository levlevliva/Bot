package package_47
{
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.modules.EventModule;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import package_18.class_1521;
   import package_26.class_1354;
   import package_41.class_93;
   import package_54.class_319;
   import package_6.class_14;
   import package_90.class_316;
   import spark.components.Label;
   
   public final class class_643 implements class_14
   {
      
      public static const name_3:class_643 = new class_643();
       
      
      private var var_646:int = 0;
      
      public var var_62:int = 0;
      
      public var name_7:int = 0;
      
      public function class_643(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_62 = param2;
         this.name_7 = param1;
      }
      
      public function method_16() : int
      {
         return 20312;
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
         return 6;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_62 = param1.readInt();
         this.var_62 = this.var_62 << 9 % 32 | this.var_62 >>> 32 - 9 % 32;
         this.name_7 = param1.readShort();
         this.name_7 = 65535 & ((65535 & this.name_7) >>> 3 % 16 | (65535 & this.name_7) << 16 - 3 % 16);
         this.name_7 = this.name_7 > 32767?int(this.name_7 - 65536):int(this.name_7);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(20312);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         param1.writeInt(this.var_62 >>> 9 % 32 | this.var_62 << 32 - 9 % 32);
         param1.writeShort(65535 & ((65535 & this.name_7) << 3 % 16 | (65535 & this.name_7) >>> 16 - 3 % 16));
      }
   }
}
