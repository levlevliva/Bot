package package_148
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.greensock.TweenLite;
   import com.greensock.easing.Strong;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.bitmapclip.BCBitmapData;
   import net.bigpoint.seafight.com.module.guild.class_767;
   import package_122.class_656;
   import package_123.class_1032;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_15.class_48;
   import package_16.class_28;
   import package_194.class_1183;
   import package_20.class_33;
   import package_23.class_42;
   import package_29.class_166;
   import package_34.class_115;
   import package_36.class_1417;
   import package_41.class_84;
   import package_41.class_89;
   import package_45.class_110;
   import package_47.class_135;
   import package_47.class_833;
   import package_47.class_861;
   import package_49.class_137;
   import package_5.class_214;
   import package_5.class_22;
   import package_6.class_14;
   import package_7.class_1039;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_679 implements class_14
   {
      
      public static const name_3:class_679 = new class_679();
       
      
      private var var_646:int = 0;
      
      public var var_815:Vector.<int>;
      
      public function class_679(param1:Vector.<int> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_815 = new Vector.<int>();
         }
         else
         {
            this.var_815 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 22267;
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
         var _loc4_:* = 0;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_815.length > 0)
         {
            this.var_815.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = int(param1.readShort());
            _loc4_ = 65535 & ((65535 & _loc4_) << 3 % 16 | (65535 & _loc4_) >>> 16 - 3 % 16);
            _loc4_ = int(_loc4_ > 32767?int(_loc4_ - 65536):int(_loc4_));
            this.var_815.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         param1.writeShort(22267);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         param1.writeByte(this.var_815.length);
         for each(_loc2_ in this.var_815)
         {
            param1.writeShort(65535 & ((65535 & _loc2_) >>> 3 % 16 | (65535 & _loc2_) << 16 - 3 % 16));
         }
      }
   }
}
