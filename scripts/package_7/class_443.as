package package_7
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_210;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.DynamicTabNavigator;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IVisualElement;
   import mx.events.FlexEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import package_14.class_47;
   import package_14.class_49;
   import package_17.class_151;
   import package_171.class_1058;
   import package_190.class_1181;
   import package_26.class_1128;
   import package_26.class_942;
   import package_26.class_960;
   import package_26.class_969;
   import package_34.class_1127;
   import package_36.class_100;
   import package_4.class_11;
   import package_41.class_84;
   import package_42.class_98;
   import package_5.class_1028;
   import package_5.class_214;
   import package_6.class_14;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_443 implements class_14
   {
      
      public static const name_3:class_443 = new class_443();
       
      
      private var var_646:int = 0;
      
      public function class_443()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 4172;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 13 % 16 | (65535 & this.var_646) << 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(4172);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
      }
   }
}
