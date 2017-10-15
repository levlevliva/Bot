package package_9
{
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.HGroup;
   import spark.primitives.Rect;
   
   public final class class_478 implements class_14
   {
      
      public static const name_3:class_478 = new class_478();
       
      
      private var var_646:int = 0;
      
      public var name_4:class_84;
      
      public var var_150:Vector.<class_91>;
      
      public function class_478(param1:class_84 = null, param2:Vector.<class_91> = null)
      {
         super();
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         if(param2 == null)
         {
            this.var_150 = new Vector.<class_91>();
         }
         else
         {
            this.var_150 = param2;
         }
      }
      
      public function method_16() : int
      {
         return 22467;
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
         var _loc4_:class_91 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 2 % 16 | (65535 & this.var_646) >>> 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) << 8 % 16 | (65535 & this.name_4.var_6) >>> 16 - 8 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_150.length > 0)
         {
            this.var_150.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_91(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_150.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_91 = null;
         param1.writeShort(22467);
         param1.writeShort(65535 & ((65535 & 0) >>> 2 % 16 | (65535 & 0) << 16 - 2 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) >>> 8 % 16 | (65535 & this.name_4.var_6) << 16 - 8 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeShort(this.var_150.length);
         for each(_loc2_ in this.var_150)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
