package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.popups.event.modules.EventModule;
   import flash.display.Bitmap;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_104.class_989;
   import package_14.class_47;
   import package_14.class_94;
   import package_18.class_855;
   import package_41.class_84;
   import package_41.class_93;
   import package_48.class_999;
   import package_49.class_140;
   import package_6.class_14;
   import spark.primitives.Rect;
   
   public final class class_635 implements class_14
   {
      
      public static const name_3:class_635 = new class_635();
       
      
      private var var_646:int = 0;
      
      public var var_115:class_84;
      
      public var var_106:class_826;
      
      public var var_341:String = "";
      
      public function class_635(param1:class_84 = null, param2:class_826 = null, param3:String = "")
      {
         super();
         if(param1 == null)
         {
            this.var_115 = new class_84();
         }
         else
         {
            this.var_115 = param1;
         }
         if(param2 == null)
         {
            this.var_106 = new class_826();
         }
         else
         {
            this.var_106 = param2;
         }
         this.var_341 = param3;
      }
      
      public function method_16() : int
      {
         return 11088;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_115 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_115.method_15(param1);
         this.var_106 = class_826(class_93.method_26().method_25(param1.readShort()));
         this.var_106.method_15(param1);
         this.var_341 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(11088);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
         this.var_115.method_14(param1);
         this.var_106.method_14(param1);
         param1.writeUTF(this.var_341);
      }
   }
}
