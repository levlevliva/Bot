package package_154
{
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.CloseEvent;
   import spark.components.Label;
   import spark.layouts.VerticalLayout;
   
   public final class class_868 extends class_677
   {
      
      public static const name_3:class_868 = new class_868();
       
      
      private var var_646:int = 0;
      
      public var name_49:int = 0;
      
      public function class_868(param1:int = 0)
      {
         super();
         this.name_49 = param1;
      }
      
      override public function method_16() : int
      {
         return -7183;
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
         return 4;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 16 % 16 | (65535 & this.var_646) << 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.name_49 = param1.readInt();
         this.name_49 = this.name_49 >>> 15 % 32 | this.name_49 << 32 - 15 % 32;
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-7183);
         param1.writeShort(65535 & ((65535 & 0) << 16 % 16 | (65535 & 0) >>> 16 - 16 % 16));
         super.method_14(param1);
         param1.writeInt(this.name_49 << 15 % 32 | this.name_49 >>> 32 - 15 % 32);
      }
   }
}
