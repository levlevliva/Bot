package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_6.class_14;
   
   public final class class_670 implements class_14
   {
      
      public static const name_3:class_670 = new class_670();
       
      
      private var var_646:int = 0;
      
      public var var_459:int = 0;
      
      public function class_670(param1:int = 0)
      {
         super();
         this.var_459 = param1;
      }
      
      public function method_16() : int
      {
         return -8483;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_459 = param1.readByte();
         this.var_459 = 255 & ((255 & this.var_459) >>> 12 % 8 | (255 & this.var_459) << 8 - 12 % 8);
         this.var_459 = this.var_459 > 127?int(this.var_459 - 256):int(this.var_459);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-8483);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         param1.writeByte(255 & ((255 & this.var_459) << 12 % 8 | (255 & this.var_459) >>> 8 - 12 % 8));
      }
   }
}
