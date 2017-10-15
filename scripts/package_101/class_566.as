package package_101
{
   import flash.system.Capabilities;
   import flash.system.Security;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.graphics.LinearGradient;
   import package_11.class_130;
   import package_11.class_131;
   import package_190.class_1469;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_124;
   import package_47.class_129;
   import package_53.class_157;
   import package_6.class_14;
   import spark.components.Label;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_566 implements class_14
   {
      
      public static const name_3:class_566 = new class_566();
      
      public static const const_634:int = 0;
      
      public static const const_540:int = 1;
      
      public static const const_2170:int = 2;
      
      public static const const_1913:int = 3;
       
      
      private var var_646:int = 0;
      
      public var name_17:int = 0;
      
      public var var_260:int = 0;
      
      public var var_17:class_84;
      
      public var name_13:String = "";
      
      public function class_566(param1:String = "", param2:class_84 = null, param3:int = 0, param4:int = 0)
      {
         super();
         this.name_17 = param4;
         this.var_260 = param3;
         if(param2 == null)
         {
            this.var_17 = new class_84();
         }
         else
         {
            this.var_17 = param2;
         }
         this.name_13 = param1;
      }
      
      public function method_16() : int
      {
         return 21202;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_17 = param1.readShort();
         this.var_260 = param1.readShort();
         this.var_17 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_17.method_15(param1);
         this.name_13 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(21202);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         param1.writeShort(this.name_17);
         param1.writeShort(this.var_260);
         this.var_17.method_14(param1);
         param1.writeUTF(this.name_13);
      }
   }
}
