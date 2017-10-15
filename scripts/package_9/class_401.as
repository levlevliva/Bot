package package_9
{
   import com.bigpoint.seafight.view.mainmenu.MainMenuButton;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.containers.Form;
   import mx.controls.Spacer;
   import package_170.class_979;
   import package_41.class_93;
   import package_49.class_137;
   import package_6.class_14;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   
   public final class class_401 implements class_14
   {
      
      public static const name_3:class_401 = new class_401();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var name_11:int = 0;
      
      public function class_401(param1:int = 0, param2:int = 0)
      {
         super();
         this.name_5 = param2;
         this.name_11 = param1;
      }
      
      public function method_16() : int
      {
         return -2147;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 13 % 16 | (65535 & this.var_646) << 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.name_11 = param1.readShort();
         this.name_11 = 65535 & ((65535 & this.name_11) << 10 % 16 | (65535 & this.name_11) >>> 16 - 10 % 16);
         this.name_11 = this.name_11 > 32767?int(this.name_11 - 65536):int(this.name_11);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-2147);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
         param1.writeShort(this.name_5);
         param1.writeShort(65535 & ((65535 & this.name_11) >>> 10 % 16 | (65535 & this.name_11) << 16 - 10 % 16));
      }
   }
}
