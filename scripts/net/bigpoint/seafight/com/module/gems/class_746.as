package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.view.popups.common.SimpleBorder;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import package_166.class_961;
   import package_42.class_959;
   import package_6.class_14;
   import spark.components.HGroup;
   import spark.primitives.BitmapImage;
   
   public final class class_746 implements class_14
   {
      
      public static const name_3:class_746 = new class_746();
      
      public static const const_1689:int = 0;
      
      public static const const_1010:int = 1;
      
      public static const const_1791:int = 2;
      
      public static const const_1802:int = 3;
      
      public static const const_2661:int = 4;
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public function class_746(param1:int = 0)
      {
         super();
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return 2721;
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
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 16 % 16 | (65535 & this.var_646) << 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(2721);
         param1.writeShort(65535 & ((65535 & 0) << 16 % 16 | (65535 & 0) >>> 16 - 16 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
