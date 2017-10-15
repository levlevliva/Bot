package net.bigpoint.seafight.com.module.gems
{
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonListItem;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.BoardingInfoTooltipListItem;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyItemRenderer;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_96;
   import package_41.class_84;
   import package_41.class_93;
   import package_48.class_996;
   import package_49.class_140;
   import package_5.class_1050;
   import package_6.class_14;
   import package_69.class_978;
   import package_89.class_1378;
   import package_97.class_986;
   import spark.primitives.Rect;
   
   public final class class_719 implements class_14
   {
      
      public static const name_3:class_719 = new class_719();
       
      
      private var var_646:int = 0;
      
      public var var_54:int = 0;
      
      public var var_114:int = 0;
      
      public function class_719(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_54 = param2;
         this.var_114 = param1;
      }
      
      public function method_16() : int
      {
         return -15718;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_54 = param1.readShort();
         this.var_54 = 65535 & ((65535 & this.var_54) << 7 % 16 | (65535 & this.var_54) >>> 16 - 7 % 16);
         this.var_54 = this.var_54 > 32767?int(this.var_54 - 65536):int(this.var_54);
         this.var_114 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-15718);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         param1.writeShort(65535 & ((65535 & this.var_54) >>> 7 % 16 | (65535 & this.var_54) << 16 - 7 % 16));
         param1.writeShort(this.var_114);
      }
   }
}
