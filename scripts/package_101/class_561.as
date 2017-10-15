package package_101
{
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.class_1483;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import package_108.class_596;
   import package_108.class_755;
   import package_2.*;
   import package_29.class_166;
   import package_52.class_168;
   import package_6.class_14;
   import spark.components.Group;
   import spark.primitives.Graphic;
   
   public final class class_561 implements class_14
   {
      
      public static const name_3:class_561 = new class_561();
       
      
      private var var_646:int = 0;
      
      public var var_20:Number = 0;
      
      public var name_11:int = 0;
      
      public function class_561(param1:int = 0, param2:Number = 0)
      {
         super();
         this.var_20 = param2;
         this.name_11 = param1;
      }
      
      public function method_16() : int
      {
         return 26807;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_20 = param1.readDouble();
         this.name_11 = param1.readInt();
         this.name_11 = this.name_11 << 13 % 32 | this.name_11 >>> 32 - 13 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(26807);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         param1.writeDouble(this.var_20);
         param1.writeInt(this.name_11 >>> 13 % 32 | this.name_11 << 32 - 13 % 32);
      }
   }
}
