package package_101
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.BoardingInfoTooltipListItemSubItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import package_34.class_1499;
   import package_41.class_84;
   import package_6.class_14;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   
   public final class class_562 implements class_14
   {
      
      public static const name_3:class_562 = new class_562();
       
      
      private var var_646:int = 0;
      
      public var var_20:Number = 0;
      
      public var name_11:int = 0;
      
      public var var_260:int = 0;
      
      public function class_562(param1:int = 0, param2:Number = 0, param3:int = 0)
      {
         super();
         this.var_20 = param2;
         this.name_11 = param1;
         this.var_260 = param3;
      }
      
      public function method_16() : int
      {
         return -4722;
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
         return 12;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_20 = param1.readDouble();
         this.name_11 = param1.readInt();
         this.name_11 = this.name_11 >>> 2 % 32 | this.name_11 << 32 - 2 % 32;
         this.var_260 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-4722);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeDouble(this.var_20);
         param1.writeInt(this.name_11 << 2 % 32 | this.name_11 >>> 32 - 2 % 32);
         param1.writeShort(this.var_260);
      }
   }
}
