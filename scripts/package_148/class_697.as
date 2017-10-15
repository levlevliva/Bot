package package_148
{
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.BoardingInfoTooltipListItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MetaCurrencyIndicator;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentDecksVo;
   import com.bigpoint.seafight.view.popups.spymenu.vo.SpyUserStatsItemRendererVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IUIComponent;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_104.class_1160;
   import package_104.class_448;
   import package_104.class_803;
   import package_104.class_989;
   import package_132.class_605;
   import package_14.class_47;
   import package_14.class_88;
   import package_15.class_273;
   import package_153.class_931;
   import package_159.class_756;
   import package_16.class_28;
   import package_17.class_323;
   import package_190.class_1181;
   import package_216.class_1575;
   import package_39.class_1366;
   import package_39.class_1367;
   import package_40.class_334;
   import package_41.class_84;
   import package_41.class_93;
   import package_48.class_996;
   import package_55.class_1228;
   import package_6.class_14;
   import package_7.class_1039;
   import package_97.class_914;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   
   public final class class_697 implements class_14
   {
      
      public static const name_3:class_697 = new class_697();
       
      
      private var var_646:int = 0;
      
      public var name_40:Number = 0;
      
      public var name_39:Number = 0;
      
      public var name_10:int = 0;
      
      public function class_697(param1:int = 0, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.name_40 = param2;
         this.name_39 = param3;
         this.name_10 = param1;
      }
      
      public function method_16() : int
      {
         return -3042;
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
         return 18;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_40 = param1.readDouble();
         this.name_39 = param1.readDouble();
         this.name_10 = param1.readShort();
         this.name_10 = 65535 & ((65535 & this.name_10) << 2 % 16 | (65535 & this.name_10) >>> 16 - 2 % 16);
         this.name_10 = this.name_10 > 32767?int(this.name_10 - 65536):int(this.name_10);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-3042);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         param1.writeDouble(this.name_40);
         param1.writeDouble(this.name_39);
         param1.writeShort(65535 & ((65535 & this.name_10) >>> 2 % 16 | (65535 & this.name_10) << 16 - 2 % 16));
      }
   }
}
