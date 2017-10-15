package package_163
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.colorpicker.ColorPicker;
   import com.bigpoint.seafight.view.popups.gempopup.vo.GemConfigTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.LogCategoryCheckBox;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import package_14.class_47;
   import package_174.class_1375;
   import package_41.class_93;
   import package_42.class_1034;
   import package_47.class_129;
   import package_49.class_137;
   import package_5.class_939;
   import package_52.class_168;
   import package_6.class_14;
   import package_88.class_1014;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.components.Scroller;
   import spark.effects.Rotate3D;
   
   public final class class_884 implements class_14
   {
      
      public static const name_3:class_884 = new class_884();
       
      
      private var var_646:int = 0;
      
      public var var_206:Vector.<class_137>;
      
      public function class_884(param1:Vector.<class_137> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_206 = new Vector.<class_137>();
         }
         else
         {
            this.var_206 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 29750;
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
         var _loc4_:class_137 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
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
            _loc4_ = class_137(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_206.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_137 = null;
         param1.writeShort(29750);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
         param1.writeByte(this.var_206.length);
         for each(_loc2_ in this.var_206)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
