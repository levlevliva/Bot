package package_22
{
   import com.bigpoint.seafight.model.vo.class_317;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.common.BlueButton;
   import com.bigpoint.seafight.view.popups.common.BorderType3_1;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_104.class_448;
   import package_124.class_673;
   import package_14.class_47;
   import package_170.class_979;
   import package_42.class_98;
   import package_6.class_14;
   import package_88.class_1093;
   import package_90.class_316;
   import package_90.class_481;
   import spark.components.Button;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.primitives.Rect;
   
   public final class class_689 implements class_14
   {
      
      public static const name_3:class_689 = new class_689();
       
      
      private var var_646:int = 0;
      
      public function class_689()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -12495;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 15 % 16 | (65535 & this.var_646) << 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-12495);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
      }
   }
}
