package package_154
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_41.class_1365;
   import package_41.class_93;
   import package_5.class_123;
   import package_55.class_1018;
   import package_6.class_14;
   import package_91.class_1246;
   import package_92.class_336;
   import package_92.class_944;
   
   public final class class_842 implements class_14
   {
      
      public static const name_3:class_842 = new class_842();
       
      
      private var var_646:int = 0;
      
      public var var_10:int = 0;
      
      public var var_831:Vector.<class_619>;
      
      public var name_5:int = 0;
      
      public function class_842(param1:int = 0, param2:int = 0, param3:Vector.<class_619> = null)
      {
         super();
         this.var_10 = param2;
         if(param3 == null)
         {
            this.var_831 = new Vector.<class_619>();
         }
         else
         {
            this.var_831 = param3;
         }
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return -32340;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_619 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_10 = param1.readInt();
         this.var_10 = this.var_10 << 11 % 32 | this.var_10 >>> 32 - 11 % 32;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_831.length > 0)
         {
            this.var_831.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_619(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_831.push(_loc4_);
            _loc2_++;
         }
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_619 = null;
         param1.writeShort(-32340);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         param1.writeInt(this.var_10 >>> 11 % 32 | this.var_10 << 32 - 11 % 32);
         param1.writeByte(this.var_831.length);
         for each(_loc2_ in this.var_831)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(this.name_5);
      }
   }
}
