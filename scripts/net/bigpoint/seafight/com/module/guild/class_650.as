package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_41.class_93;
   import package_5.class_123;
   import package_5.class_939;
   import package_55.class_1007;
   import package_6.class_14;
   import package_92.class_336;
   import spark.components.DataGroup;
   import spark.effects.Rotate3D;
   
   public final class class_650 implements class_14
   {
      
      public static const name_3:class_650 = new class_650();
       
      
      private var var_646:int = 0;
      
      public var var_886:Vector.<class_635>;
      
      public var var_280:Vector.<class_913>;
      
      public function class_650(param1:Vector.<class_913> = null, param2:Vector.<class_635> = null)
      {
         super();
         if(param2 == null)
         {
            this.var_886 = new Vector.<class_635>();
         }
         else
         {
            this.var_886 = param2;
         }
         if(param1 == null)
         {
            this.var_280 = new Vector.<class_913>();
         }
         else
         {
            this.var_280 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -24552;
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
         var _loc4_:class_635 = null;
         var _loc5_:class_913 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_886.length > 0)
         {
            this.var_886.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_635(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_886.push(_loc4_);
            _loc2_++;
         }
         while(this.var_280.length > 0)
         {
            this.var_280.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_913(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_280.push(_loc5_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_635 = null;
         var _loc3_:class_913 = null;
         param1.writeShort(-24552);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
         param1.writeByte(this.var_886.length);
         for each(_loc2_ in this.var_886)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_280.length);
         for each(_loc3_ in this.var_280)
         {
            _loc3_.method_14(param1);
         }
      }
   }
}
