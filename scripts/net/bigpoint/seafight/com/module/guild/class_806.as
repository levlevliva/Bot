package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_14.class_102;
   import package_152.class_612;
   import package_23.class_42;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_6.class_14;
   import package_89.class_1138;
   import package_89.class_1378;
   import package_9.class_91;
   import spark.components.DataGroup;
   
   public final class class_806 implements class_14
   {
      
      public static const name_3:class_806 = new class_806();
       
      
      private var var_646:int = 0;
      
      public var var_49:Vector.<class_737>;
      
      public function class_806(param1:Vector.<class_737> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_49 = new Vector.<class_737>();
         }
         else
         {
            this.var_49 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -12753;
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
         var _loc4_:class_737 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
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
            _loc4_ = class_737(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_49.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_737 = null;
         param1.writeShort(-12753);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         param1.writeByte(this.var_49.length);
         for each(_loc2_ in this.var_49)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
