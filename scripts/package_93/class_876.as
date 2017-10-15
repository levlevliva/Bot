package package_93
{
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import flash.display.Bitmap;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_14.class_51;
   import package_22.class_36;
   import package_41.class_84;
   import package_5.class_12;
   import package_57.class_171;
   import package_6.class_14;
   import package_73.class_1112;
   import package_91.class_686;
   import spark.components.HGroup;
   import spark.core.SpriteVisualElement;
   import spark.primitives.Rect;
   
   public final class class_876 implements class_14
   {
      
      public static const name_3:class_876 = new class_876();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public function class_876(param1:int = 0)
      {
         super();
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return -26880;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-26880);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
