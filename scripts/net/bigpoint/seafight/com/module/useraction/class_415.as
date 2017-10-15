package net.bigpoint.seafight.com.module.useraction
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.as3toolbox.filecollection.vo.LoadVO;
   import package_29.class_57;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_1012;
   import package_5.class_22;
   import package_54.class_158;
   import package_6.class_14;
   
   public final class class_415 implements class_14
   {
      
      public static const name_3:class_415 = new class_415();
       
      
      private var var_646:int = 0;
      
      public var var_17:class_84;
      
      public var var_1011:int = 0;
      
      public var var_334:int = 0;
      
      public function class_415(param1:class_84 = null, param2:int = 0, param3:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.var_17 = new class_84();
         }
         else
         {
            this.var_17 = param1;
         }
         this.var_1011 = param3;
         this.var_334 = param2;
      }
      
      public function method_16() : int
      {
         return -11845;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 9 % 16 | (65535 & this.var_646) << 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_17 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_17.method_15(param1);
         this.var_1011 = param1.readShort();
         this.var_334 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-11845);
         param1.writeShort(65535 & ((65535 & 0) << 9 % 16 | (65535 & 0) >>> 16 - 9 % 16));
         this.var_17.method_14(param1);
         param1.writeShort(this.var_1011);
         param1.writeShort(this.var_334);
      }
   }
}
