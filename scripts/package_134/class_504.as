package package_134
{
   import com.greensock.events.LoaderEvent;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_100.class_1186;
   import package_111.class_1176;
   import package_34.class_116;
   import package_93.class_339;
   
   public final class class_504 extends class_339
   {
      
      public static const name_3:class_504 = new class_504();
       
      
      private var var_646:int = 0;
      
      public var var_721:Vector.<int>;
      
      public function class_504(param1:Vector.<int> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_721 = new Vector.<int>();
         }
         else
         {
            this.var_721 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 23629;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 4;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:* = 0;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_721.length > 0)
         {
            this.var_721.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = int(param1.readInt());
            _loc4_ = _loc4_ >>> 3 % 32 | _loc4_ << 32 - 3 % 32;
            this.var_721.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         param1.writeShort(23629);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_721.length);
         for each(_loc2_ in this.var_721)
         {
            param1.writeInt(_loc2_ << 3 % 32 | _loc2_ >>> 32 - 3 % 32);
         }
      }
   }
}
