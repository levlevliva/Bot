package net.bigpoint.seafight.com.module.guild
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_29.class_57;
   import package_41.class_93;
   import spark.components.Group;
   
   public final class class_501 extends class_67
   {
      
      public static const name_3:class_501 = new class_501();
       
      
      private var var_646:int = 0;
      
      public var var_49:Vector.<class_570>;
      
      public function class_501(param1:Vector.<class_570> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_49 = new Vector.<class_570>();
         }
         else
         {
            this.var_49 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -21906;
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
         var _loc4_:class_570 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_49.length > 0)
         {
            this.var_49.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_570(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_49.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_570 = null;
         param1.writeShort(-21906);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_49.length);
         for each(_loc2_ in this.var_49)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
