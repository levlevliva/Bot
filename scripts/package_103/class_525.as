package package_103
{
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import spark.primitives.Rect;
   
   public final class class_525 implements class_14
   {
      
      public static const name_3:class_525 = new class_525();
       
      
      private var var_646:int = 0;
      
      public var name_4:class_84;
      
      public var var_118:class_90;
      
      public var var_139:class_90;
      
      public var var_588:Number = 0;
      
      public var var_58:int = 0;
      
      public function class_525(param1:int = 0, param2:class_84 = null, param3:Number = 0, param4:class_90 = null, param5:class_90 = null)
      {
         super();
         if(param2 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param2;
         }
         if(param5 == null)
         {
            this.var_118 = new class_90();
         }
         else
         {
            this.var_118 = param5;
         }
         if(param4 == null)
         {
            this.var_139 = new class_90();
         }
         else
         {
            this.var_139 = param4;
         }
         this.var_588 = param3;
         this.var_58 = param1;
      }
      
      public function method_16() : int
      {
         return 8067;
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
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 9 % 16 | (65535 & this.var_646) << 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 4 % 16 | (65535 & this.name_4.var_6) << 16 - 4 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.var_118 = class_90(class_93.method_26().method_25(param1.readShort()));
         this.var_118.method_15(param1);
         this.var_139 = class_90(class_93.method_26().method_25(param1.readShort()));
         this.var_139.method_15(param1);
         this.var_588 = param1.readDouble();
         this.var_58 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(8067);
         param1.writeShort(65535 & ((65535 & 0) << 9 % 16 | (65535 & 0) >>> 16 - 9 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 4 % 16 | (65535 & this.name_4.var_6) >>> 16 - 4 % 16));
         param1.writeDouble(this.name_4.name_4);
         this.var_118.method_14(param1);
         this.var_139.method_14(param1);
         param1.writeDouble(this.var_588);
         param1.writeShort(this.var_58);
      }
   }
}
