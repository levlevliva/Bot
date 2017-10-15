package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_96;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.Group;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   public final class class_847 implements class_14
   {
      
      public static const name_3:class_847 = new class_847();
       
      
      private var var_646:int = 0;
      
      public var var_740:Vector.<class_681>;
      
      public function class_847(param1:Vector.<class_681> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_740 = new Vector.<class_681>();
         }
         else
         {
            this.var_740 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 22992;
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
         var _loc4_:class_681 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 13 % 16 | (65535 & this.var_646) >>> 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_740.length > 0)
         {
            this.var_740.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_681(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_740.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_681 = null;
         param1.writeShort(22992);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
         param1.writeByte(this.var_740.length);
         for each(_loc2_ in this.var_740)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
