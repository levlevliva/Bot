package package_136
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_93;
   import package_6.class_14;
   
   public final class class_533 implements class_14
   {
      
      public static const name_3:class_533 = new class_533();
       
      
      private var var_646:int = 0;
      
      public var var_256:Vector.<class_926>;
      
      public function class_533(param1:Vector.<class_926> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_256 = new Vector.<class_926>();
         }
         else
         {
            this.var_256 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -5199;
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
         var _loc4_:class_926 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 16 % 16 | (65535 & this.var_646) >>> 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_256.length > 0)
         {
            this.var_256.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_926(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_256.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_926 = null;
         param1.writeShort(-5199);
         param1.writeShort(65535 & ((65535 & 0) >>> 16 % 16 | (65535 & 0) << 16 - 16 % 16));
         param1.writeByte(this.var_256.length);
         for each(_loc2_ in this.var_256)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
