package package_163
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.greensock.TweenLite;
   import flash.filters.BevelFilter;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import package_104.class_448;
   import package_104.class_803;
   import package_104.class_989;
   import package_14.class_47;
   import package_14.class_49;
   import package_16.class_28;
   import package_29.class_57;
   import package_41.class_93;
   import package_49.class_137;
   import package_5.class_22;
   import package_6.class_14;
   import package_7.class_1039;
   import spark.primitives.Rect;
   
   public final class class_843 implements class_14
   {
      
      public static const name_3:class_843 = new class_843();
       
      
      private var var_646:int = 0;
      
      public var var_1108:Boolean = false;
      
      public var var_404:int = 0;
      
      public var var_206:Vector.<class_884>;
      
      public var var_692:int = 0;
      
      public var var_718:Vector.<class_137>;
      
      public var var_332:Vector.<class_137>;
      
      public var var_343:int = 0;
      
      public function class_843(param1:Vector.<class_884> = null, param2:Vector.<class_137> = null, param3:Boolean = false, param4:int = 0, param5:int = 0, param6:int = 0, param7:Vector.<class_137> = null)
      {
         super();
         this.var_1108 = param3;
         this.var_404 = param4;
         if(param1 == null)
         {
            this.var_206 = new Vector.<class_884>();
         }
         else
         {
            this.var_206 = param1;
         }
         this.var_692 = param5;
         if(param7 == null)
         {
            this.var_718 = new Vector.<class_137>();
         }
         else
         {
            this.var_718 = param7;
         }
         if(param2 == null)
         {
            this.var_332 = new Vector.<class_137>();
         }
         else
         {
            this.var_332 = param2;
         }
         this.var_343 = param6;
      }
      
      public function method_16() : int
      {
         return 6866;
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
         return 25;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_884 = null;
         var _loc5_:class_137 = null;
         var _loc6_:class_137 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1108 = param1.readBoolean();
         this.var_404 = param1.readInt();
         this.var_404 = this.var_404 << 12 % 32 | this.var_404 >>> 32 - 12 % 32;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_206.length > 0)
         {
            this.var_206.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_884(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_206.push(_loc4_);
            _loc2_++;
         }
         this.var_692 = param1.readInt();
         this.var_692 = this.var_692 >>> 10 % 32 | this.var_692 << 32 - 10 % 32;
         while(this.var_718.length > 0)
         {
            this.var_718.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_137(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_718.push(_loc5_);
            _loc2_++;
         }
         while(this.var_332.length > 0)
         {
            this.var_332.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc6_ = class_137(class_93.method_26().method_25(param1.readShort()));
            _loc6_.method_15(param1);
            this.var_332.push(_loc6_);
            _loc2_++;
         }
         this.var_343 = param1.readInt();
         this.var_343 = this.var_343 >>> 15 % 32 | this.var_343 << 32 - 15 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_884 = null;
         var _loc3_:class_137 = null;
         var _loc4_:class_137 = null;
         param1.writeShort(6866);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         param1.writeBoolean(this.var_1108);
         param1.writeInt(this.var_404 >>> 12 % 32 | this.var_404 << 32 - 12 % 32);
         param1.writeByte(this.var_206.length);
         for each(_loc2_ in this.var_206)
         {
            _loc2_.method_14(param1);
         }
         param1.writeInt(this.var_692 << 10 % 32 | this.var_692 >>> 32 - 10 % 32);
         param1.writeByte(this.var_718.length);
         for each(_loc3_ in this.var_718)
         {
            _loc3_.method_14(param1);
         }
         param1.writeByte(this.var_332.length);
         for each(_loc4_ in this.var_332)
         {
            _loc4_.method_14(param1);
         }
         param1.writeInt(this.var_343 << 15 % 32 | this.var_343 >>> 32 - 15 % 32);
      }
   }
}
