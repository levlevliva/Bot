package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_94;
   import package_41.class_93;
   import spark.layouts.TileLayout;
   import spark.primitives.Rect;
   
   public final class class_459 extends class_67
   {
      
      public static const name_3:class_459 = new class_459();
       
      
      private var var_646:int = 0;
      
      public var var_280:Vector.<class_913>;
      
      public var var_1147:class_826;
      
      public function class_459(param1:class_826 = null, param2:Vector.<class_913> = null)
      {
         super();
         if(param2 == null)
         {
            this.var_280 = new Vector.<class_913>();
         }
         else
         {
            this.var_280 = param2;
         }
         if(param1 == null)
         {
            this.var_1147 = new class_826();
         }
         else
         {
            this.var_1147 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 3809;
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
         var _loc4_:class_913 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_280.length > 0)
         {
            this.var_280.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_913(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_280.push(_loc4_);
            _loc2_++;
         }
         this.var_1147 = class_826(class_93.method_26().method_25(param1.readShort()));
         this.var_1147.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_913 = null;
         param1.writeShort(3809);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_280.length);
         for each(_loc2_ in this.var_280)
         {
            _loc2_.method_14(param1);
         }
         this.var_1147.method_14(param1);
      }
   }
}
