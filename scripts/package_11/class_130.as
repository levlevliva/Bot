package package_11
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.class_1020;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.skins.hslider.HSliderSkinInnerClass0;
   import com.bigpoint.seafight.view.common.skins.hslider.target;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentButtonClickEvent;
   import com.bigpoint.seafight.view.popups.common.BorderType3_1;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusItemVO;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bit101.components.Label;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import net.bigpoint.seafight.com.module.event.EventType;
   import net.bigpoint.seafight.com.module.guild.class_879;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_114.class_1030;
   import package_114.class_1321;
   import package_114.class_406;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_152.class_934;
   import package_28.class_56;
   import package_36.class_100;
   import package_41.class_103;
   import package_47.class_129;
   import package_47.class_136;
   import package_47.class_930;
   import package_49.class_137;
   import package_53.class_1100;
   import package_6.class_14;
   import package_88.class_967;
   import package_93.class_987;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.primitives.Graphic;
   
   use namespace mx_internal;
   
   public final class class_130
   {
       
      
      public var name_17:int = 0;
      
      public var name_10:int = 0;
      
      public var name_5:int = 0;
      
      public var name_7:int = 0;
      
      public var var_62:int = 0;
      
      public var var_90:Vector.<class_129>;
      
      public var var_419:Vector.<class_136>;
      
      public var var_144:Vector.<class_137>;
      
      public var var_325:Boolean;
      
      public var var_230:int;
      
      public function class_130(param1:int)
      {
         super();
         this.name_7 = param1;
      }
      
      public final function method_413(param1:int) : class_129
      {
         if(!this.var_90 || param1 > this.var_90.length)
         {
            return null;
         }
         return this.var_90[param1 - 1];
      }
      
      public final function method_123(param1:class_129) : void
      {
         this.var_90[param1.name_7 - 1] = param1;
      }
      
      public final function method_2731(param1:int) : class_136
      {
         return this.var_419[param1 - 1];
      }
      
      public final function method_1052() : String
      {
         var _loc1_:String = class_88.method_32(class_88.const_19,class_103.name_32.toString());
         return this.var_62 + " " + _loc1_;
      }
      
      public function get label() : String
      {
         return class_20.name_3.method_381(this);
      }
   }
}
