package package_101
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.net.LocalConnection;
   import flash.system.Capabilities;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_15.class_273;
   import package_41.class_84;
   import package_54.class_158;
   import package_6.class_14;
   import package_9.class_91;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_357 implements class_14
   {
      
      public static const name_3:class_357 = new class_357();
       
      
      private var var_646:int = 0;
      
      public var name_11:int = 0;
      
      public var var_20:Number = 0;
      
      public function class_357(param1:int = 0, param2:Number = 0)
      {
         super();
         this.name_11 = param1;
         this.var_20 = param2;
      }
      
      public function method_16() : int
      {
         return -19175;
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
         return 12;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_11 = param1.readInt();
         this.name_11 = this.name_11 << 5 % 32 | this.name_11 >>> 32 - 5 % 32;
         this.var_20 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-19175);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
         param1.writeInt(this.name_11 >>> 5 % 32 | this.name_11 << 32 - 5 % 32);
         param1.writeDouble(this.var_20);
      }
   }
}
