package net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams
{
   import com.bigpoint.seafight.net.events.class_1256;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.events.CloseEvent;
   import package_123.class_432;
   import package_14.class_47;
   import package_23.class_42;
   import package_29.class_57;
   import package_30.class_62;
   import package_48.class_1534;
   import package_5.class_984;
   import package_51.class_148;
   import package_55.class_164;
   import package_6.class_14;
   import package_89.class_1138;
   import package_95.class_341;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.RichText;
   import spark.primitives.Rect;
   
   public final class class_912 extends class_602
   {
      
      public static const name_3:class_912 = new class_912();
       
      
      private var var_646:int = 0;
      
      public var var_748:int = 0;
      
      public function class_912(param1:int = 0)
      {
         super();
         this.var_748 = param1;
      }
      
      override public function method_16() : int
      {
         return -8861;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 4;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_748 = param1.readInt();
         this.var_748 = this.var_748 >>> 5 % 32 | this.var_748 << 32 - 5 % 32;
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-8861);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
         super.method_14(param1);
         param1.writeInt(this.var_748 << 5 % 32 | this.var_748 >>> 32 - 5 % 32);
      }
   }
}
