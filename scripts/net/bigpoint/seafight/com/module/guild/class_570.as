package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_17.class_326;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_123;
   import package_6.class_14;
   import package_69.class_978;
   
   public final class class_570 implements class_14
   {
      
      public static const name_3:class_570 = new class_570();
       
      
      private var var_646:int = 0;
      
      public var name_13:String = "";
      
      public var var_106:class_826;
      
      public var name_7:class_84;
      
      public function class_570(param1:class_84 = null, param2:String = "", param3:class_826 = null)
      {
         super();
         this.name_13 = param2;
         if(param3 == null)
         {
            this.var_106 = new class_826();
         }
         else
         {
            this.var_106 = param3;
         }
         if(param1 == null)
         {
            this.name_7 = new class_84();
         }
         else
         {
            this.name_7 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -26106;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 4 % 16 | (65535 & this.var_646) << 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_13 = param1.readUTF();
         this.var_106 = class_826(class_93.method_26().method_25(param1.readShort()));
         this.var_106.method_15(param1);
         this.name_7 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.name_7.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-26106);
         param1.writeShort(65535 & ((65535 & 0) << 4 % 16 | (65535 & 0) >>> 16 - 4 % 16));
         param1.writeUTF(this.name_13);
         this.var_106.method_14(param1);
         this.name_7.method_14(param1);
      }
   }
}
