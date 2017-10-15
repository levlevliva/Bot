package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import package_6.class_14;
   
   public final class class_713 implements class_14
   {
      
      public static const name_3:class_713 = new class_713();
       
      
      private var var_646:int = 0;
      
      public function class_713()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -13826;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-13826);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
      }
   }
}
