package package_118
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import flash.events.KeyboardEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_14.class_1002;
   import package_14.class_1003;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_165.class_952;
   import package_190.class_1181;
   import package_34.class_107;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_22;
   import package_5.class_43;
   import package_6.class_14;
   import spark.components.HGroup;
   import spark.primitives.Graphic;
   
   public final class class_412 implements class_14
   {
      
      public static const name_3:class_412 = new class_412();
       
      
      private var var_646:int = 0;
      
      public var var_464:int = 0;
      
      public var var_86:int = 0;
      
      public var var_20:Number = 0;
      
      public function class_412(param1:Number = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_464 = param3;
         this.var_86 = param2;
         this.var_20 = param1;
      }
      
      public function method_16() : int
      {
         return -29675;
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
         return 10;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_464 = param1.readShort();
         this.var_464 = 65535 & ((65535 & this.var_464) << 10 % 16 | (65535 & this.var_464) >>> 16 - 10 % 16);
         this.var_464 = this.var_464 > 32767?int(this.var_464 - 65536):int(this.var_464);
         this.var_86 = param1.readShort();
         this.var_20 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-29675);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         param1.writeShort(65535 & ((65535 & this.var_464) >>> 10 % 16 | (65535 & this.var_464) << 16 - 10 % 16));
         param1.writeShort(this.var_86);
         param1.writeDouble(this.var_20);
      }
   }
}
