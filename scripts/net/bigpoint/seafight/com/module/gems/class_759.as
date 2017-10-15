package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemsList;
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
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.ToolTipEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_41.class_641;
   import package_51.class_148;
   import package_72.class_203;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public final class class_759 extends class_641
   {
      
      public static const name_3:class_759 = new class_759();
       
      
      private var var_646:int = 0;
      
      public var var_521:int = 0;
      
      public function class_759(param1:int = 0)
      {
         super();
         this.var_521 = param1;
      }
      
      override public function method_16() : int
      {
         return -3110;
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
         return 2;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 8 % 16 | (65535 & this.var_646) << 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_521 = param1.readShort();
         this.var_521 = 65535 & ((65535 & this.var_521) >>> 7 % 16 | (65535 & this.var_521) << 16 - 7 % 16);
         this.var_521 = this.var_521 > 32767?int(this.var_521 - 65536):int(this.var_521);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-3110);
         param1.writeShort(65535 & ((65535 & 0) << 8 % 16 | (65535 & 0) >>> 16 - 8 % 16));
         super.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_521) << 7 % 16 | (65535 & this.var_521) >>> 16 - 7 % 16));
      }
   }
}
