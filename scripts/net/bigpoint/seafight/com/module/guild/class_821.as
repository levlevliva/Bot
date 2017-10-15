package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import package_42.class_959;
   import package_42.class_99;
   import package_5.class_939;
   import package_6.class_14;
   import spark.effects.Rotate3D;
   
   public final class class_821 implements class_14
   {
      
      public static const name_3:class_821 = new class_821();
       
      
      private var var_646:int = 0;
      
      public var var_955:Boolean = false;
      
      public var var_1284:Number = 0;
      
      public var var_681:int = 0;
      
      public var var_1317:Number = 0;
      
      public var var_539:int = 0;
      
      public var name_6:int = 0;
      
      public var var_1261:Number = 0;
      
      public var var_1322:Boolean = false;
      
      public var var_1254:Number = 0;
      
      public function class_821(param1:int = 0, param2:int = 0, param3:int = 0, param4:Number = 0, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Number = 0, param9:Number = 0)
      {
         super();
         this.var_955 = param7;
         this.var_1284 = param4;
         this.var_681 = param2;
         this.var_1317 = param9;
         this.var_539 = param3;
         this.name_6 = param1;
         this.var_1261 = param5;
         this.var_1322 = param6;
         this.var_1254 = param8;
      }
      
      public function method_16() : int
      {
         return -14313;
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
         return 42;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_955 = param1.readBoolean();
         this.var_1284 = param1.readDouble();
         this.var_681 = param1.readShort();
         this.var_1317 = param1.readDouble();
         this.var_539 = param1.readInt();
         this.var_539 = this.var_539 >>> 8 % 32 | this.var_539 << 32 - 8 % 32;
         this.name_6 = param1.readInt();
         this.name_6 = this.name_6 >>> 3 % 32 | this.name_6 << 32 - 3 % 32;
         this.var_1261 = param1.readDouble();
         this.var_1322 = param1.readBoolean();
         this.var_1254 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-14313);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         param1.writeBoolean(this.var_955);
         param1.writeDouble(this.var_1284);
         param1.writeShort(this.var_681);
         param1.writeDouble(this.var_1317);
         param1.writeInt(this.var_539 << 8 % 32 | this.var_539 >>> 32 - 8 % 32);
         param1.writeInt(this.name_6 << 3 % 32 | this.name_6 >>> 32 - 3 % 32);
         param1.writeDouble(this.var_1261);
         param1.writeBoolean(this.var_1322);
         param1.writeDouble(this.var_1254);
      }
   }
}
