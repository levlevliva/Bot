package package_47
{
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.IUIComponent;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_5.class_939;
   import package_51.class_148;
   import package_6.class_14;
   import package_72.class_1080;
   import package_72.class_1442;
   import package_9.class_91;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.effects.Rotate3D;
   
   public final class class_861 implements class_14
   {
      
      public static const name_3:class_861 = new class_861();
       
      
      private var var_646:int = 0;
      
      public var var_889:Vector.<class_930>;
      
      public function class_861(param1:Vector.<class_930> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_889 = new Vector.<class_930>();
         }
         else
         {
            this.var_889 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -20449;
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
         var _loc4_:class_930 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_889.length > 0)
         {
            this.var_889.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_930(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_889.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_930 = null;
         param1.writeShort(-20449);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         param1.writeShort(this.var_889.length);
         for each(_loc2_ in this.var_889)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
