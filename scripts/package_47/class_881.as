package package_47
{
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButton;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   
   public final class class_881 implements class_14
   {
      
      public static const name_3:class_881 = new class_881();
       
      
      private var var_646:int = 0;
      
      public var name_17:int = 0;
      
      public var var_38:int = 0;
      
      public function class_881(param1:int = 0, param2:int = 0)
      {
         super();
         this.name_17 = param2;
         this.var_38 = param1;
      }
      
      public function method_16() : int
      {
         return 91;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 2 % 16 | (65535 & this.var_646) << 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_17 = param1.readShort();
         this.var_38 = param1.readShort();
         this.var_38 = 65535 & ((65535 & this.var_38) << 5 % 16 | (65535 & this.var_38) >>> 16 - 5 % 16);
         this.var_38 = this.var_38 > 32767?int(this.var_38 - 65536):int(this.var_38);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(91);
         param1.writeShort(65535 & ((65535 & 0) << 2 % 16 | (65535 & 0) >>> 16 - 2 % 16));
         param1.writeShort(this.name_17);
         param1.writeShort(65535 & ((65535 & this.var_38) >>> 5 % 16 | (65535 & this.var_38) << 16 - 5 % 16));
      }
   }
}
