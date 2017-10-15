package package_18
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_93;
   import package_6.class_14;
   
   public final class class_620 implements class_14
   {
      
      public static const name_3:class_620 = new class_620();
       
      
      private var var_646:int = 0;
      
      public var var_20:Number = 0;
      
      public var var_1366:int = 0;
      
      public var var_763:Vector.<class_855>;
      
      public function class_620(param1:Number = 0, param2:int = 0, param3:Vector.<class_855> = null)
      {
         super();
         this.var_20 = param1;
         this.var_1366 = param2;
         if(param3 == null)
         {
            this.var_763 = new Vector.<class_855>();
         }
         else
         {
            this.var_763 = param3;
         }
      }
      
      public function method_16() : int
      {
         return 1571;
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
         var _loc4_:class_855 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_20 = param1.readDouble();
         this.var_1366 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_763.length > 0)
         {
            this.var_763.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_855(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_763.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_855 = null;
         param1.writeShort(1571);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         param1.writeDouble(this.var_20);
         param1.writeShort(this.var_1366);
         param1.writeByte(this.var_763.length);
         for each(_loc2_ in this.var_763)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
