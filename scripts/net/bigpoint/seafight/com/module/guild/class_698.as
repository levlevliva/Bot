package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_102;
   import package_23.class_42;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import package_89.class_1138;
   import package_89.class_1378;
   import spark.components.List;
   import spark.primitives.Rect;
   
   public final class class_698 implements class_14
   {
      
      public static const name_3:class_698 = new class_698();
       
      
      private var var_646:int = 0;
      
      public var var_309:int = 0;
      
      public var var_10:int = 0;
      
      public var var_115:class_84;
      
      public function class_698(param1:class_84 = null, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_309 = param2;
         this.var_10 = param3;
         if(param1 == null)
         {
            this.var_115 = new class_84();
         }
         else
         {
            this.var_115 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 18316;
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
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 16 % 16 | (65535 & this.var_646) << 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_309 = param1.readShort();
         this.var_10 = param1.readInt();
         this.var_10 = this.var_10 << 5 % 32 | this.var_10 >>> 32 - 5 % 32;
         this.var_115 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_115.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(18316);
         param1.writeShort(65535 & ((65535 & 0) << 16 % 16 | (65535 & 0) >>> 16 - 16 % 16));
         param1.writeShort(this.var_309);
         param1.writeInt(this.var_10 >>> 5 % 32 | this.var_10 << 32 - 5 % 32);
         this.var_115.method_14(param1);
      }
   }
}
