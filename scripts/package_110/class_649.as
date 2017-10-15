package package_110
{
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.castle.component.UpgradeCastleSlotPopup;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.common.TextInputSkin;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.target;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextFieldAutoSize;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IVisualElement;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_137.class_865;
   import package_14.class_47;
   import package_14.class_87;
   import package_220.class_1601;
   import package_23.class_42;
   import package_34.class_1053;
   import package_34.class_1257;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_123;
   import package_54.class_163;
   import package_6.class_14;
   import package_90.class_1542;
   import package_90.class_464;
   import package_91.class_1246;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.TextInput;
   import spark.primitives.Rect;
   import spark.primitives.RectangularDropShadow;
   
   use namespace mx_internal;
   
   public final class class_649 implements class_14
   {
      
      public static const name_3:class_649 = new class_649();
       
      
      private var var_646:int = 0;
      
      public var var_87:class_84;
      
      public function class_649(param1:class_84 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_87 = new class_84();
         }
         else
         {
            this.var_87 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 26489;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_87 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_87.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(26489);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
         this.var_87.method_14(param1);
      }
   }
}
