package package_47
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_47;
   import package_14.class_51;
   import package_41.class_84;
   import package_41.class_93;
   import package_53.class_1100;
   import package_54.class_319;
   import package_6.class_14;
   import spark.components.HGroup;
   import spark.primitives.Rect;
   
   public final class class_662 implements class_14
   {
      
      public static const name_3:class_662 = new class_662();
       
      
      private var var_646:int = 0;
      
      public function class_662()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -27331;
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
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-27331);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
      }
   }
}
