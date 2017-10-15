package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.containers.Form;
   import mx.core.UIComponentDescriptor;
   import package_41.class_84;
   import package_6.class_14;
   import spark.components.Group;
   
   public final class class_869 implements class_14
   {
      
      public static const name_3:class_869 = new class_869();
       
      
      private var var_646:int = 0;
      
      public function class_869()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 30251;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(30251);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
      }
   }
}
