package package_152
{
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuHeaderSmall;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_625;
   import package_128.class_716;
   import package_41.class_93;
   import spark.components.Button;
   import spark.components.VGroup;
   
   public final class class_852 extends class_611
   {
      
      public static const name_3:class_852 = new class_852();
       
      
      private var var_646:int = 0;
      
      public function class_852()
      {
         super();
      }
      
      override public function method_16() : int
      {
         return -13253;
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
         return 0;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 7 % 16 | (65535 & this.var_646) >>> 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-13253);
         param1.writeShort(65535 & ((65535 & 0) >>> 7 % 16 | (65535 & 0) << 16 - 7 % 16));
         super.method_14(param1);
      }
   }
}
