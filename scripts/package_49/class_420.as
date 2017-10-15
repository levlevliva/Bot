package package_49
{
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.event.EventType;
   import package_14.class_102;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_152.class_934;
   import package_17.class_54;
   import package_41.class_93;
   import package_53.class_1100;
   import package_54.class_319;
   import package_6.class_14;
   import package_72.class_1080;
   import package_72.class_203;
   import spark.components.Group;
   
   public final class class_420 implements class_14
   {
      
      public static const name_3:class_420 = new class_420();
       
      
      private var var_646:int = 0;
      
      public var var_870:int = 0;
      
      public var name_7:int = 0;
      
      public var var_320:int = 0;
      
      public var name_9:Vector.<class_137>;
      
      public function class_420(param1:Vector.<class_137> = null, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         this.var_870 = param3;
         this.name_7 = param2;
         this.var_320 = param4;
         if(param1 == null)
         {
            this.name_9 = new Vector.<class_137>();
         }
         else
         {
            this.name_9 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -10439;
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
         return 6;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_137 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_870 = param1.readShort();
         this.name_7 = param1.readShort();
         this.name_7 = 65535 & ((65535 & this.name_7) << 7 % 16 | (65535 & this.name_7) >>> 16 - 7 % 16);
         this.name_7 = this.name_7 > 32767?int(this.name_7 - 65536):int(this.name_7);
         this.var_320 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_9.length > 0)
         {
            this.name_9.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_137(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_137 = null;
         param1.writeShort(-10439);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         param1.writeShort(this.var_870);
         param1.writeShort(65535 & ((65535 & this.name_7) >>> 7 % 16 | (65535 & this.name_7) << 16 - 7 % 16));
         param1.writeShort(this.var_320);
         param1.writeByte(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
