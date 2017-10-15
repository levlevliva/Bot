package package_110
{
   import com.bigpoint.seafight.model.vo.class_1067;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.common.BorderType3_1;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InventoryDragDropController;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.event.modules.common.skins.RankingModuleSkin;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemListVo;
   import com.bigpoint.seafight.view.popups.spymenu.component.SpyUserStatsWithIconItemRenderer;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bit101.components.Style;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.event.EventType;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.useraction.class_1479;
   import package_123.class_1032;
   import package_131.class_492;
   import package_14.class_47;
   import package_170.class_979;
   import package_210.class_1364;
   import package_211.class_1369;
   import package_26.class_969;
   import package_34.class_107;
   import package_34.class_1499;
   import package_36.class_100;
   import package_41.class_84;
   import package_49.class_1320;
   import package_5.class_214;
   import package_5.class_43;
   import package_5.class_945;
   import package_5.class_984;
   import package_52.class_306;
   import package_54.class_163;
   import package_54.class_319;
   import package_6.class_14;
   import package_69.class_978;
   import package_84.class_270;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.layouts.BasicLayout;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   public final class class_699 implements class_14
   {
      
      public static const name_3:class_699 = new class_699();
       
      
      private var var_646:int = 0;
      
      public var var_900:String = "";
      
      public var var_1966:Boolean = false;
      
      public function class_699(param1:String = "", param2:Boolean = false)
      {
         super();
         this.var_900 = param1;
         this.var_1966 = param2;
      }
      
      public function method_16() : int
      {
         return -22957;
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
         return 3;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 7 % 16 | (65535 & this.var_646) >>> 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_900 = param1.readUTF();
         this.var_1966 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-22957);
         param1.writeShort(65535 & ((65535 & 0) >>> 7 % 16 | (65535 & 0) << 16 - 7 % 16));
         param1.writeUTF(this.var_900);
         param1.writeBoolean(this.var_1966);
      }
   }
}
