package package_9
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.graphics.SolidColor;
   import mx.logging.LogEvent;
   import mx.logging.LogEventLevel;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_41.class_93;
   import package_54.class_319;
   import package_6.class_14;
   import spark.filters.DropShadowFilter;
   
   use namespace mx_internal;
   
   public final class class_850 implements class_14
   {
      
      public static const name_3:class_850 = new class_850();
       
      
      private var var_646:int = 0;
      
      public function class_850()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -24800;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-24800);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
      }
   }
}
