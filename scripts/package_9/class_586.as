package package_9
{
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_108.class_596;
   import package_108.class_755;
   import package_14.class_47;
   import package_20.class_33;
   import package_34.class_1576;
   import package_6.class_14;
   import spark.components.VGroup;
   
   public final class class_586 implements class_14
   {
      
      public static const name_3:class_586 = new class_586();
       
      
      private var var_646:int = 0;
      
      public var name_11:int = 0;
      
      public function class_586(param1:int = 0)
      {
         super();
         this.name_11 = param1;
      }
      
      public function method_16() : int
      {
         return -31040;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_11 = param1.readShort();
         this.name_11 = 65535 & ((65535 & this.name_11) >>> 6 % 16 | (65535 & this.name_11) << 16 - 6 % 16);
         this.name_11 = this.name_11 > 32767?int(this.name_11 - 65536):int(this.name_11);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-31040);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         param1.writeShort(65535 & ((65535 & this.name_11) << 6 % 16 | (65535 & this.name_11) >>> 16 - 6 % 16));
      }
   }
}
