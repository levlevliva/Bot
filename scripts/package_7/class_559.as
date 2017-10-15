package package_7
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.logging.Log;
   import package_104.class_448;
   import package_104.class_803;
   import package_104.class_989;
   import package_16.class_28;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import package_92.class_1278;
   import package_97.class_752;
   import spark.components.Group;
   import spark.components.RichEditableText;
   import spark.components.VGroup;
   import spark.effects.Rotate3D;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_559 implements class_14
   {
      
      public static const name_3:class_559 = new class_559();
       
      
      private var var_646:int = 0;
      
      public var var_17:class_84;
      
      public function class_559(param1:class_84 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_17 = new class_84();
         }
         else
         {
            this.var_17 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -19091;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_17 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_17.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-19091);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         this.var_17.method_14(param1);
      }
   }
}
