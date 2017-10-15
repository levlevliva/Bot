package package_9
{
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.events.ToolTipEvent;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.as3toolbox.filecollection.vo.LoadVO;
   import package_17.class_54;
   import package_41.class_84;
   import package_5.class_939;
   import package_6.class_14;
   
   public final class class_447 implements class_14
   {
      
      public static const name_3:class_447 = new class_447();
       
      
      private var var_646:int = 0;
      
      public var name_6:class_91;
      
      public var var_391:int = 0;
      
      public var name_4:class_84;
      
      public function class_447(param1:class_84 = null, param2:class_91 = null, param3:int = 0)
      {
         super();
         if(param2 == null)
         {
            this.name_6 = new class_91();
         }
         else
         {
            this.name_6 = param2;
         }
         this.var_391 = param3;
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -16568;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 2 % 16 | (65535 & this.var_646) << 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_6 = new class_91();
         this.name_6.var_8 = param1.readShort();
         this.name_6.var_8 = 65535 & ((65535 & this.name_6.var_8) >>> 5 % 16 | (65535 & this.name_6.var_8) << 16 - 5 % 16);
         this.name_6.var_8 = this.name_6.var_8 > 32767?int(this.name_6.var_8 - 65536):int(this.name_6.var_8);
         this.name_6.var_9 = param1.readShort();
         this.name_6.var_9 = 65535 & ((65535 & this.name_6.var_9) << 4 % 16 | (65535 & this.name_6.var_9) >>> 16 - 4 % 16);
         this.name_6.var_9 = this.name_6.var_9 > 32767?int(this.name_6.var_9 - 65536):int(this.name_6.var_9);
         this.var_391 = param1.readByte();
         this.var_391 = 255 & ((255 & this.var_391) >>> 13 % 8 | (255 & this.var_391) << 8 - 13 % 8);
         this.var_391 = this.var_391 > 127?int(this.var_391 - 256):int(this.var_391);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 16 % 16 | (65535 & this.name_4.var_6) << 16 - 16 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-16568);
         param1.writeShort(65535 & ((65535 & 0) << 2 % 16 | (65535 & 0) >>> 16 - 2 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_8) << 5 % 16 | (65535 & this.name_6.var_8) >>> 16 - 5 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_9) >>> 4 % 16 | (65535 & this.name_6.var_9) << 16 - 4 % 16));
         param1.writeByte(255 & ((255 & this.var_391) << 13 % 8 | (255 & this.var_391) >>> 8 - 13 % 8));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 16 % 16 | (65535 & this.name_4.var_6) >>> 16 - 16 % 16));
         param1.writeDouble(this.name_4.name_4);
      }
   }
}
