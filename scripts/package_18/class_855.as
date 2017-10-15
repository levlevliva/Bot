package package_18
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_41.class_93;
   import package_6.class_14;
   
   public final class class_855 implements class_14
   {
      
      public static const name_3:class_855 = new class_855();
       
      
      private var var_646:int = 0;
      
      public var var_86:int = 0;
      
      public var var_476:int = 0;
      
      public var name_5:class_571;
      
      public function class_855(param1:int = 0, param2:class_571 = null, param3:int = 0)
      {
         super();
         this.var_86 = param1;
         this.var_476 = param3;
         if(param2 == null)
         {
            this.name_5 = new class_571();
         }
         else
         {
            this.name_5 = param2;
         }
      }
      
      public function method_16() : int
      {
         return 26659;
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
         return 1;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_86 = param1.readShort();
         this.var_476 = param1.readByte();
         this.var_476 = 255 & ((255 & this.var_476) << 15 % 8 | (255 & this.var_476) >>> 8 - 15 % 8);
         this.var_476 = this.var_476 > 127?int(this.var_476 - 256):int(this.var_476);
         this.name_5 = class_571(class_93.method_26().method_25(param1.readShort()));
         this.name_5.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(26659);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         param1.writeShort(this.var_86);
         param1.writeByte(255 & ((255 & this.var_476) >>> 15 % 8 | (255 & this.var_476) << 8 - 15 % 8));
         this.name_5.method_14(param1);
      }
   }
}
