package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_43;
   import package_56.class_368;
   import package_6.class_14;
   
   public final class class_789 implements class_14
   {
      
      public static const name_3:class_789 = new class_789();
       
      
      private var var_646:int = 0;
      
      public var var_17:class_84;
      
      public function class_789(param1:class_84 = null)
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
      }
      
      public function method_16() : int
      {
         return -9549;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 6 % 16 | (65535 & this.var_646) << 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_17 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_17.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-9549);
         param1.writeShort(65535 & ((65535 & 0) << 6 % 16 | (65535 & 0) >>> 16 - 6 % 16));
         this.var_17.method_14(param1);
      }
   }
}
