package package_47
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MetaCurrencyIndicatorList;
   import flash.events.SecurityErrorEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_10.class_18;
   import package_10.class_38;
   import package_15.class_48;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1500;
   import package_46.class_1501;
   import package_6.class_14;
   import spark.effects.Rotate3D;
   import spark.filters.GlowFilter;
   import spark.layouts.TileLayout;
   import spark.primitives.Rect;
   
   public final class class_522 implements class_14
   {
      
      public static const name_3:class_522 = new class_522();
       
      
      private var var_646:int = 0;
      
      public var var_38:int = 0;
      
      public var var_528:Vector.<class_685>;
      
      public var name_4:class_84;
      
      public var var_198:int = 0;
      
      public function class_522(param1:class_84 = null, param2:int = 0, param3:int = 0, param4:Vector.<class_685> = null)
      {
         super();
         this.var_38 = param3;
         if(param4 == null)
         {
            this.var_528 = new Vector.<class_685>();
         }
         else
         {
            this.var_528 = param4;
         }
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         this.var_198 = param2;
      }
      
      public function method_16() : int
      {
         return 10927;
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
         var _loc4_:class_685 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 5 % 16 | (65535 & this.var_646) >>> 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_38 = param1.readInt();
         this.var_38 = this.var_38 >>> 4 % 32 | this.var_38 << 32 - 4 % 32;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_528.length > 0)
         {
            this.var_528.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_685(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_528.push(_loc4_);
            _loc2_++;
         }
         this.name_4 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.name_4.method_15(param1);
         this.var_198 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_685 = null;
         param1.writeShort(10927);
         param1.writeShort(65535 & ((65535 & 0) >>> 5 % 16 | (65535 & 0) << 16 - 5 % 16));
         param1.writeInt(this.var_38 << 4 % 32 | this.var_38 >>> 32 - 4 % 32);
         param1.writeByte(this.var_528.length);
         for each(_loc2_ in this.var_528)
         {
            _loc2_.method_14(param1);
         }
         this.name_4.method_14(param1);
         param1.writeShort(this.var_198);
      }
   }
}
