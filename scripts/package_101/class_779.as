package package_101
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import com.greensock.easing.Quad;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import package_143.class_933;
   import package_5.class_123;
   import package_6.class_14;
   import spark.components.Label;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public final class class_779 implements class_14
   {
      
      public static const name_3:class_779 = new class_779();
       
      
      private var var_646:int = 0;
      
      public var var_20:Number = 0;
      
      public var var_33:int = 0;
      
      public function class_779(param1:Number = 0, param2:int = 0)
      {
         super();
         this.var_20 = param1;
         this.var_33 = param2;
      }
      
      public function method_16() : int
      {
         return 25986;
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
         return 12;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_20 = param1.readDouble();
         this.var_33 = param1.readInt();
         this.var_33 = this.var_33 << 4 % 32 | this.var_33 >>> 32 - 4 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(25986);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         param1.writeDouble(this.var_20);
         param1.writeInt(this.var_33 >>> 4 % 32 | this.var_33 << 32 - 4 % 32);
      }
   }
}
