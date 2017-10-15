package package_143
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.event.modules.EventModule;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.LinearGradient;
   import mx.logging.LogEvent;
   import mx.logging.LogEventLevel;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.vo.LocationVO;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_14.class_47;
   import package_14.class_88;
   import package_18.class_1521;
   import package_190.class_1181;
   import package_26.class_52;
   import package_48.class_996;
   import package_5.class_939;
   import package_6.class_14;
   import package_69.class_978;
   import package_9.class_17;
   import package_9.class_91;
   import spark.components.Group;
   import spark.effects.Rotate3D;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_887 implements class_14
   {
      
      public static const name_3:class_887 = new class_887();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public function class_887(param1:int = 0)
      {
         super();
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return 13387;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 5 % 16 | (65535 & this.var_646) >>> 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(13387);
         param1.writeShort(65535 & ((65535 & 0) >>> 5 % 16 | (65535 & 0) << 16 - 5 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
