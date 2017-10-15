package net.bigpoint.seafight.com.module.guild
{
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.ToolTipEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_152.class_776;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.Group;
   
   public final class class_737 implements class_14
   {
      
      public static const name_3:class_737 = new class_737();
       
      
      private var var_646:int = 0;
      
      public var name_7:class_84;
      
      public var name_13:String = "";
      
      public function class_737(param1:class_84 = null, param2:String = "")
      {
         super();
         if(param1 == null)
         {
            this.name_7 = new class_84();
         }
         else
         {
            this.name_7 = param1;
         }
         this.name_13 = param2;
      }
      
      public function method_16() : int
      {
         return -24989;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 8 % 16 | (65535 & this.var_646) << 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_7 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.name_7.method_15(param1);
         this.name_13 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-24989);
         param1.writeShort(65535 & ((65535 & 0) << 8 % 16 | (65535 & 0) >>> 16 - 8 % 16));
         this.name_7.method_14(param1);
         param1.writeUTF(this.name_13);
      }
   }
}
