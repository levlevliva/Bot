package package_152
{
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.TextTuple;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.CloseEvent;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_14.class_47;
   import package_14.class_88;
   import package_41.class_93;
   import package_52.class_168;
   import spark.components.DataGroup;
   import spark.layouts.VerticalLayout;
   
   public final class class_934 extends class_611
   {
      
      public static const name_3:class_934 = new class_934();
       
      
      private var var_646:int = 0;
      
      public var var_103:int = 0;
      
      public var var_323:Vector.<class_661>;
      
      public function class_934(param1:int = 0, param2:Vector.<class_661> = null)
      {
         super();
         this.var_103 = param1;
         if(param2 == null)
         {
            this.var_323 = new Vector.<class_661>();
         }
         else
         {
            this.var_323 = param2;
         }
      }
      
      override public function method_16() : int
      {
         return 25223;
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
         return 6;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_661 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_103 = param1.readShort();
         this.var_103 = 65535 & ((65535 & this.var_103) << 9 % 16 | (65535 & this.var_103) >>> 16 - 9 % 16);
         this.var_103 = this.var_103 > 32767?int(this.var_103 - 65536):int(this.var_103);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_323.length > 0)
         {
            this.var_323.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_661(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_323.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_661 = null;
         param1.writeShort(25223);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
         super.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_103) >>> 9 % 16 | (65535 & this.var_103) << 16 - 9 % 16));
         param1.writeByte(this.var_323.length);
         for each(_loc2_ in this.var_323)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
