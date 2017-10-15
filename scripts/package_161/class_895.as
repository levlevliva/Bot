package package_161
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.greensock.TweenLite;
   import com.greensock.core.TweenCore;
   import com.greensock.events.LoaderEvent;
   import com.greensock.events.TweenEvent;
   import com.oaxoa.fx.Lightning;
   import com.oaxoa.fx.LightningFadeType;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_134.class_504;
   import package_14.class_1002;
   import package_14.class_1003;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_170.class_979;
   import package_171.class_981;
   import package_174.class_1375;
   import package_210.class_1364;
   import package_210.class_1474;
   import package_30.class_62;
   import package_34.class_115;
   import package_41.class_93;
   import package_6.class_14;
   import package_73.class_228;
   import package_90.class_316;
   import package_93.class_339;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   public final class class_895 extends class_339
   {
      
      public static const name_3:class_895 = new class_895();
       
      
      private var var_646:int = 0;
      
      public var name_9:Vector.<class_819>;
      
      public var var_567:int = 0;
      
      public function class_895(param1:int = 0, param2:Vector.<class_819> = null)
      {
         super();
         if(param2 == null)
         {
            this.name_9 = new Vector.<class_819>();
         }
         else
         {
            this.name_9 = param2;
         }
         this.var_567 = param1;
      }
      
      override public function method_16() : int
      {
         return -14694;
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
         return 5;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_819 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_9.length > 0)
         {
            this.name_9.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_819(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
         this.var_567 = param1.readByte();
         this.var_567 = 255 & ((255 & this.var_567) >>> 6 % 8 | (255 & this.var_567) << 8 - 6 % 8);
         this.var_567 = this.var_567 > 127?int(this.var_567 - 256):int(this.var_567);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_819 = null;
         param1.writeShort(-14694);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         super.method_14(param1);
         param1.writeShort(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(255 & ((255 & this.var_567) << 6 % 8 | (255 & this.var_567) >>> 8 - 6 % 8));
      }
   }
}
