package package_152
{
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.DynamicTabNavigator;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.controls.Spacer;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import package_14.class_88;
   import package_17.class_54;
   import package_41.class_89;
   import package_72.class_1080;
   import package_72.class_203;
   import package_9.class_91;
   import spark.components.VGroup;
   
   public final class class_776 extends class_611
   {
      
      public static const name_3:class_776 = new class_776();
       
      
      private var var_646:int = 0;
      
      public var var_1542:Number = 0;
      
      public function class_776(param1:Number = 0)
      {
         super();
         this.var_1542 = param1;
      }
      
      override public function method_16() : int
      {
         return 12560;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_1542 = param1.readFloat();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(12560);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         super.method_14(param1);
         param1.writeFloat(this.var_1542);
      }
   }
}
