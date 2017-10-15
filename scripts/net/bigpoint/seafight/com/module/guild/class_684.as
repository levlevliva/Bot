package net.bigpoint.seafight.com.module.guild
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_96;
   import package_41.class_93;
   import package_6.class_14;
   
   public final class class_684 implements class_14
   {
      
      public static const name_3:class_684 = new class_684();
       
      
      private var var_646:int = 0;
      
      public var var_980:Vector.<class_681>;
      
      public function class_684(param1:Vector.<class_681> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_980 = new Vector.<class_681>();
         }
         else
         {
            this.var_980 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 4239;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_980.length > 0)
         {
            this.var_980.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_681(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_980.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_681 = null;
         param1.writeShort(4239);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         param1.writeByte(this.var_980.length);
         for each(_loc2_ in this.var_980)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
