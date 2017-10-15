package package_99
{
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_129.class_630;
   import package_14.class_47;
   import package_14.class_51;
   import package_16.class_28;
   import package_17.class_54;
   import package_18.class_916;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_98;
   import package_47.class_135;
   import package_47.class_833;
   import package_47.class_861;
   import package_5.class_123;
   import package_5.class_22;
   import package_57.class_171;
   import package_6.class_14;
   import package_92.class_944;
   import package_92.class_962;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_793 implements class_14
   {
      
      public static const name_3:class_793 = new class_793();
       
      
      private var var_646:int = 0;
      
      public var name_24:int = 0;
      
      public var var_15:class_786;
      
      public var var_201:Number = 0;
      
      public function class_793(param1:class_786 = null, param2:Number = 0, param3:int = 0)
      {
         super();
         this.name_24 = param3;
         if(param1 == null)
         {
            this.var_15 = new class_786();
         }
         else
         {
            this.var_15 = param1;
         }
         this.var_201 = param2;
      }
      
      public function method_16() : int
      {
         return 22241;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_24 = param1.readInt();
         this.name_24 = this.name_24 << 14 % 32 | this.name_24 >>> 32 - 14 % 32;
         this.var_15 = class_786(class_93.method_26().method_25(param1.readShort()));
         this.var_15.method_15(param1);
         this.var_201 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(22241);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         param1.writeInt(this.name_24 >>> 14 % 32 | this.name_24 << 32 - 14 % 32);
         this.var_15.method_14(param1);
         param1.writeDouble(this.var_201);
      }
   }
}
