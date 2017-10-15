package package_124
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_93;
   import package_6.class_14;
   
   public final class class_434 implements class_14
   {
      
      public static const name_3:class_434 = new class_434();
       
      
      private var var_646:int = 0;
      
      public var var_757:Vector.<class_673>;
      
      public var var_794:int = 0;
      
      public function class_434(param1:int = 0, param2:Vector.<class_673> = null)
      {
         super();
         if(param2 == null)
         {
            this.var_757 = new Vector.<class_673>();
         }
         else
         {
            this.var_757 = param2;
         }
         this.var_794 = param1;
      }
      
      public function method_16() : int
      {
         return -9871;
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
         var _loc4_:class_673 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_757.length > 0)
         {
            this.var_757.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_673(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_757.push(_loc4_);
            _loc2_++;
         }
         this.var_794 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_673 = null;
         param1.writeShort(-9871);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeByte(this.var_757.length);
         for each(_loc2_ in this.var_757)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(this.var_794);
      }
   }
}
