package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.popups.common.BadgeLootIcon;
   import com.bigpoint.seafight.view.popups.common.LootIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.states.State;
   import package_190.class_1168;
   import package_23.class_42;
   import package_49.class_140;
   import package_5.class_984;
   import package_6.class_14;
   import package_89.class_1378;
   import package_89.class_1379;
   import spark.primitives.BitmapImage;
   
   public final class class_621 implements class_14
   {
      
      public static const name_3:class_621 = new class_621();
       
      
      private var var_646:int = 0;
      
      public var var_1666:int = 0;
      
      public function class_621(param1:int = 0)
      {
         super();
         this.var_1666 = param1;
      }
      
      public function method_16() : int
      {
         return -10130;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 14 % 16 | (65535 & this.var_646) << 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1666 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-10130);
         param1.writeShort(65535 & ((65535 & 0) << 14 % 16 | (65535 & 0) >>> 16 - 14 % 16));
         param1.writeShort(this.var_1666);
      }
   }
}
