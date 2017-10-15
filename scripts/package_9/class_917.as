package package_9
{
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverview;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_14.class_25;
   import package_14.class_51;
   import package_41.class_89;
   import package_46.class_1455;
   import package_6.class_14;
   import package_69.class_978;
   import spark.primitives.BitmapImage;
   
   public final class class_917 implements class_14
   {
      
      public static const name_3:class_917 = new class_917();
       
      
      private var var_646:int = 0;
      
      public var name_11:int = 0;
      
      public var name_30:int = 0;
      
      public function class_917(param1:int = 0, param2:int = 0)
      {
         super();
         this.name_11 = param1;
         this.name_30 = param2;
      }
      
      public function method_16() : int
      {
         return -15810;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 13 % 16 | (65535 & this.var_646) >>> 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_11 = param1.readShort();
         this.name_11 = 65535 & ((65535 & this.name_11) << 5 % 16 | (65535 & this.name_11) >>> 16 - 5 % 16);
         this.name_11 = this.name_11 > 32767?int(this.name_11 - 65536):int(this.name_11);
         this.name_30 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-15810);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
         param1.writeShort(65535 & ((65535 & this.name_11) >>> 5 % 16 | (65535 & this.name_11) << 16 - 5 % 16));
         param1.writeShort(this.name_30);
      }
   }
}
