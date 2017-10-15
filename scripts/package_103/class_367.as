package package_103
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.greensock.TweenLite;
   import com.greensock.easing.Linear;
   import com.greensock.easing.Sine;
   import flash.filters.ColorMatrixFilter;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.ship.class_1119;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_94;
   import package_152.class_934;
   import package_175.time;
   import package_41.class_84;
   import package_48.class_996;
   import package_5.class_22;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_367 implements class_14
   {
      
      public static const name_3:class_367 = new class_367();
       
      
      private var var_646:int = 0;
      
      public var var_59:class_84;
      
      public var var_132:int = 0;
      
      public var var_330:class_84;
      
      public function class_367(param1:class_84 = null, param2:class_84 = null, param3:int = 0)
      {
         super();
         if(param2 == null)
         {
            this.var_59 = new class_84();
         }
         else
         {
            this.var_59 = param2;
         }
         this.var_132 = param3;
         if(param1 == null)
         {
            this.var_330 = new class_84();
         }
         else
         {
            this.var_330 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -32559;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_59 = new class_84();
         this.var_59.var_6 = param1.readShort();
         this.var_59.var_6 = 65535 & ((65535 & this.var_59.var_6) >>> 8 % 16 | (65535 & this.var_59.var_6) << 16 - 8 % 16);
         this.var_59.var_6 = this.var_59.var_6 > 32767?int(this.var_59.var_6 - 65536):int(this.var_59.var_6);
         this.var_59.name_4 = param1.readDouble();
         this.var_132 = param1.readShort();
         this.var_132 = 65535 & ((65535 & this.var_132) >>> 6 % 16 | (65535 & this.var_132) << 16 - 6 % 16);
         this.var_132 = this.var_132 > 32767?int(this.var_132 - 65536):int(this.var_132);
         this.var_330 = new class_84();
         this.var_330.var_6 = param1.readShort();
         this.var_330.var_6 = 65535 & ((65535 & this.var_330.var_6) >>> 8 % 16 | (65535 & this.var_330.var_6) << 16 - 8 % 16);
         this.var_330.var_6 = this.var_330.var_6 > 32767?int(this.var_330.var_6 - 65536):int(this.var_330.var_6);
         this.var_330.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-32559);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         param1.writeShort(65535 & ((65535 & this.var_59.var_6) << 8 % 16 | (65535 & this.var_59.var_6) >>> 16 - 8 % 16));
         param1.writeDouble(this.var_59.name_4);
         param1.writeShort(65535 & ((65535 & this.var_132) << 6 % 16 | (65535 & this.var_132) >>> 16 - 6 % 16));
         param1.writeShort(65535 & ((65535 & this.var_330.var_6) << 8 % 16 | (65535 & this.var_330.var_6) >>> 16 - 8 % 16));
         param1.writeDouble(this.var_330.name_4);
      }
   }
}
