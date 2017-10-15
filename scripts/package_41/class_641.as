package package_41
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.common.AmsValuePair;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.StatisticItemVo;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.collections.ArrayList;
   import mx.graphics.SolidColor;
   import package_102.class_359;
   import package_124.class_434;
   import package_139.class_532;
   import package_14.class_47;
   import package_16.class_28;
   import package_47.class_129;
   import package_47.class_136;
   import package_47.class_522;
   import package_49.class_137;
   
   public class class_641 extends class_315
   {
      
      public static const name_3:class_641 = new class_641();
       
      
      private var var_646:int = 0;
      
      public var var_10:Number = 0;
      
      public function class_641(param1:Number = 0)
      {
         super();
         this.var_10 = param1;
      }
      
      override public function method_16() : int
      {
         return -14210;
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
         return 8;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 14 % 16 | (65535 & this.var_646) << 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_10 = param1.readDouble();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-14210);
         param1.writeShort(65535 & ((65535 & 0) << 14 % 16 | (65535 & 0) >>> 16 - 14 % 16));
         super.method_14(param1);
         param1.writeDouble(this.var_10);
      }
   }
}
