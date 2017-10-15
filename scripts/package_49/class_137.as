package package_49
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import flash.display.Sprite;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.containers.Form;
   import mx.core.UIComponentDescriptor;
   import package_100.class_1186;
   import package_111.class_1176;
   import package_14.class_47;
   import package_20.class_33;
   import package_34.class_116;
   import package_5.class_940;
   import package_55.class_164;
   import package_6.class_14;
   
   public final class class_137 implements class_14
   {
      
      public static const name_3:class_137 = new class_137();
       
      
      private var var_646:int = 0;
      
      public var var_771:int = 0;
      
      public var var_10:int = 0;
      
      public var var_13:int = 0;
      
      public var var_2057:Boolean = false;
      
      public var name_5:int = 0;
      
      public function class_137(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:Boolean = false)
      {
         super();
         this.var_771 = param4;
         this.var_10 = param3;
         this.var_13 = param2;
         this.var_2057 = param5;
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return -8503;
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
         return 13;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 13 % 16 | (65535 & this.var_646) << 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_771 = param1.readInt();
         this.var_771 = this.var_771 >>> 8 % 32 | this.var_771 << 32 - 8 % 32;
         this.var_10 = param1.readInt();
         this.var_10 = this.var_10 >>> 10 % 32 | this.var_10 << 32 - 10 % 32;
         this.var_13 = param1.readInt();
         this.var_13 = this.var_13 << 7 % 32 | this.var_13 >>> 32 - 7 % 32;
         this.var_2057 = param1.readBoolean();
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-8503);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
         param1.writeInt(this.var_771 << 8 % 32 | this.var_771 >>> 32 - 8 % 32);
         param1.writeInt(this.var_10 << 10 % 32 | this.var_10 >>> 32 - 10 % 32);
         param1.writeInt(this.var_13 >>> 7 % 32 | this.var_13 << 32 - 7 % 32);
         param1.writeBoolean(this.var_2057);
         param1.writeShort(this.name_5);
      }
   }
}
