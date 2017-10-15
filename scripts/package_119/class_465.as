package package_119
{
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.net.events.class_1021;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import com.bigpoint.seafight.view.popups.common.BlueButton;
   import com.bigpoint.seafight.view.popups.common.BorderType2;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import package_101.class_562;
   import package_111.class_1176;
   import package_14.class_47;
   import package_14.class_87;
   import package_15.class_48;
   import package_152.class_664;
   import package_154.class_677;
   import package_17.class_322;
   import package_17.class_54;
   import package_184.class_1582;
   import package_20.class_33;
   import package_209.class_1363;
   import package_210.class_1474;
   import package_23.class_42;
   import package_28.class_56;
   import package_30.class_1013;
   import package_30.class_62;
   import package_34.class_117;
   import package_36.class_100;
   import package_46.class_1356;
   import package_48.class_1534;
   import package_5.class_22;
   import package_5.class_984;
   import package_56.class_170;
   import package_6.class_14;
   import package_69.class_1580;
   import package_88.class_290;
   import package_89.class_1138;
   import package_9.class_447;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.primitives.Rect;
   
   public final class class_465 implements class_14
   {
      
      public static const name_3:class_465 = new class_465();
       
      
      private var var_646:int = 0;
      
      public function class_465()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -7345;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-7345);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
      }
   }
}
