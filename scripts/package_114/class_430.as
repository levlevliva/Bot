package package_114
{
   import com.bigpoint.seafight.model.vo.class_980;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.common.colorpicker.ColorPicker;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.oaxoa.fx.Lightning;
   import com.oaxoa.fx.LightningFadeType;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.logging.Log;
   import package_139.class_576;
   import package_14.class_47;
   import package_165.class_951;
   import package_17.class_54;
   import package_171.class_1325;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_51.class_148;
   import package_6.class_14;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.effects.animation.Animation;
   
   public final class class_430 implements class_14
   {
      
      public static const name_3:class_430 = new class_430();
       
      
      private var var_646:int = 0;
      
      public var name_4:class_84;
      
      public var var_22:int = 0;
      
      public var var_835:int = 0;
      
      public function class_430(param1:class_84 = null, param2:int = 0, param3:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         this.var_22 = param2;
         this.var_835 = param3;
      }
      
      public function method_16() : int
      {
         return 27249;
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
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_4 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.name_4.method_15(param1);
         this.var_22 = param1.readShort();
         this.var_835 = param1.readInt();
         this.var_835 = this.var_835 << 3 % 32 | this.var_835 >>> 32 - 3 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(27249);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         this.name_4.method_14(param1);
         param1.writeShort(this.var_22);
         param1.writeInt(this.var_835 >>> 3 % 32 | this.var_835 << 32 - 3 % 32);
      }
   }
}
