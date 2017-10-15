package package_9
{
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_14.class_47;
   import package_18.class_855;
   import package_55.class_164;
   import package_6.class_14;
   import package_69.class_978;
   import spark.components.List;
   
   public final class class_761 implements class_14
   {
      
      public static const name_3:class_761 = new class_761();
       
      
      private var var_646:int = 0;
      
      public var name_7:int = 0;
      
      public var var_10:int = 0;
      
      public var var_446:int = 0;
      
      public function class_761(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.name_7 = param1;
         this.var_10 = param2;
         this.var_446 = param3;
      }
      
      public function method_16() : int
      {
         return -3118;
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
         return 5;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_7 = param1.readShort();
         this.name_7 = 65535 & ((65535 & this.name_7) << 9 % 16 | (65535 & this.name_7) >>> 16 - 9 % 16);
         this.name_7 = this.name_7 > 32767?int(this.name_7 - 65536):int(this.name_7);
         this.var_10 = param1.readShort();
         this.var_10 = 65535 & ((65535 & this.var_10) >>> 13 % 16 | (65535 & this.var_10) << 16 - 13 % 16);
         this.var_10 = this.var_10 > 32767?int(this.var_10 - 65536):int(this.var_10);
         this.var_446 = param1.readByte();
         this.var_446 = 255 & ((255 & this.var_446) << 11 % 8 | (255 & this.var_446) >>> 8 - 11 % 8);
         this.var_446 = this.var_446 > 127?int(this.var_446 - 256):int(this.var_446);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-3118);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         param1.writeShort(65535 & ((65535 & this.name_7) >>> 9 % 16 | (65535 & this.name_7) << 16 - 9 % 16));
         param1.writeShort(65535 & ((65535 & this.var_10) << 13 % 16 | (65535 & this.var_10) >>> 16 - 13 % 16));
         param1.writeByte(255 & ((255 & this.var_446) >>> 11 % 8 | (255 & this.var_446) << 8 - 11 % 8));
      }
   }
}
