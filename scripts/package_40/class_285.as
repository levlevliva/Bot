package package_40
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.net.events.class_1266;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_127;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingMenuPetsTabVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.popups.common.SmallRedDeclineButton;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.MiniHitpointsBarDisplay;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.spymenu.SpyTableEvent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bit101.components.Style;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.controls.Spacer;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BCBitmapData;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_108.class_647;
   import package_114.class_402;
   import package_114.class_551;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_148.class_820;
   import package_17.class_37;
   import package_185.class_1136;
   import package_190.class_1181;
   import package_26.class_1070;
   import package_26.class_1086;
   import package_26.class_1128;
   import package_36.class_100;
   import package_36.class_1417;
   import package_41.class_84;
   import package_41.class_93;
   import package_45.class_110;
   import package_48.class_999;
   import package_5.class_22;
   import package_5.class_43;
   import package_6.class_14;
   import package_84.class_270;
   import package_95.class_341;
   import package_97.class_409;
   import package_99.class_786;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.Scroller;
   import spark.components.gridClasses.GridColumn;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public final class class_285 implements class_14
   {
      
      public static const name_3:class_285 = new class_285();
       
      
      private var var_646:int = 0;
      
      public var var_1963:Boolean = false;
      
      public function class_285(param1:Boolean = false)
      {
         super();
         this.var_1963 = param1;
      }
      
      public function method_16() : int
      {
         return 25352;
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
         return 1;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1963 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(25352);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         param1.writeBoolean(this.var_1963);
      }
   }
}
