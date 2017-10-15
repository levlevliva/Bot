package net.bigpoint.seafight.com.module.event
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusItem;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.target;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.ConcreteGoodTooltip;
   import com.greensock.TweenLite;
   import com.greensock.plugins.TweenPlugin;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_11.class_130;
   import package_17.class_54;
   import package_171.class_1055;
   import package_171.class_1276;
   import package_174.class_1375;
   import package_41.class_84;
   import package_47.class_135;
   import package_5.class_12;
   import package_6.class_14;
   import package_88.class_1093;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public final class class_707 implements class_14
   {
      
      public static const name_3:class_707 = new class_707();
       
      
      private var var_646:int = 0;
      
      public var var_232:int = 0;
      
      public var var_549:int = 0;
      
      public var name_4:class_84;
      
      public function class_707(param1:class_84 = null, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_232 = param2;
         this.var_549 = param3;
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 15044;
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
         this.var_232 = param1.readShort();
         this.var_549 = param1.readShort();
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 14 % 16 | (65535 & this.name_4.var_6) << 16 - 14 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(15044);
         param1.writeShort(65535 & ((65535 & 0) >>> 5 % 16 | (65535 & 0) << 16 - 5 % 16));
         param1.writeShort(this.var_232);
         param1.writeShort(this.var_549);
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 14 % 16 | (65535 & this.name_4.var_6) >>> 16 - 14 % 16));
         param1.writeDouble(this.name_4.name_4);
      }
   }
}
