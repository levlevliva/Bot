package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.net.events.class_943;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_118.class_1445;
   import package_14.class_47;
   import package_152.class_924;
   import package_41.class_93;
   import package_6.class_14;
   import spark.primitives.BitmapImage;
   
   public final class class_653 implements class_14
   {
      
      public static const name_3:class_653 = new class_653();
       
      
      private var var_646:int = 0;
      
      public var var_2009:Number = 0;
      
      public var var_386:int = 0;
      
      public var name_41:Vector.<class_749>;
      
      public var var_2055:Number = 0;
      
      public var var_978:int = 0;
      
      public function class_653(param1:Vector.<class_749> = null, param2:int = 0, param3:int = 0, param4:Number = 0, param5:Number = 0)
      {
         super();
         this.var_2009 = param5;
         this.var_386 = param2;
         if(param1 == null)
         {
            this.name_41 = new Vector.<class_749>();
         }
         else
         {
            this.name_41 = param1;
         }
         this.var_2055 = param4;
         this.var_978 = param3;
      }
      
      public function method_16() : int
      {
         return 82;
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
         return 28;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_749 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_2009 = param1.readDouble();
         this.var_386 = param1.readInt();
         this.var_386 = this.var_386 >>> 1 % 32 | this.var_386 << 32 - 1 % 32;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_41.length > 0)
         {
            this.name_41.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_749(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_41.push(_loc4_);
            _loc2_++;
         }
         this.var_2055 = param1.readDouble();
         this.var_978 = param1.readInt();
         this.var_978 = this.var_978 >>> 15 % 32 | this.var_978 << 32 - 15 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_749 = null;
         param1.writeShort(82);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         param1.writeDouble(this.var_2009);
         param1.writeInt(this.var_386 << 1 % 32 | this.var_386 >>> 32 - 1 % 32);
         param1.writeByte(this.name_41.length);
         for each(_loc2_ in this.name_41)
         {
            _loc2_.method_14(param1);
         }
         param1.writeDouble(this.var_2055);
         param1.writeInt(this.var_978 << 15 % 32 | this.var_978 >>> 32 - 15 % 32);
      }
   }
}
