package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.graphics.SolidColor;
   import package_111.class_696;
   import package_14.class_47;
   import package_184.class_1135;
   import package_205.class_1353;
   import package_211.class_1369;
   import package_41.class_93;
   import package_51.class_1355;
   import package_6.class_14;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VScrollBar;
   import spark.layouts.TileLayout;
   import spark.primitives.BitmapImage;
   
   public final class class_925 implements class_14
   {
      
      public static const name_3:class_925 = new class_925();
       
      
      private var var_646:int = 0;
      
      public var var_729:Vector.<class_637>;
      
      public var var_114:int = 0;
      
      public function class_925(param1:int = 0, param2:Vector.<class_637> = null)
      {
         super();
         if(param2 == null)
         {
            this.var_729 = new Vector.<class_637>();
         }
         else
         {
            this.var_729 = param2;
         }
         this.var_114 = param1;
      }
      
      public function method_16() : int
      {
         return 21549;
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
         var _loc4_:class_637 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_729.length > 0)
         {
            this.var_729.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_637(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_729.push(_loc4_);
            _loc2_++;
         }
         this.var_114 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_637 = null;
         param1.writeShort(21549);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         param1.writeShort(this.var_729.length);
         for each(_loc2_ in this.var_729)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(this.var_114);
      }
   }
}
