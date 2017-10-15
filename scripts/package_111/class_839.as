package package_111
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.LootGroup;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.LogCategoryCheckBox;
   import com.greensock.TweenLite;
   import com.greensock.core.PropTween;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BevelFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.graphics.SolidColor;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import package_104.class_641;
   import package_130.class_1143;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_87;
   import package_15.class_48;
   import package_163.class_884;
   import package_184.class_1135;
   import package_204.class_1295;
   import package_27.class_53;
   import package_34.class_107;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_959;
   import package_46.class_1224;
   import package_49.class_137;
   import package_5.class_123;
   import package_5.class_43;
   import package_52.class_168;
   import package_6.class_14;
   import package_65.class_1046;
   import package_69.class_1052;
   import package_69.class_978;
   import package_88.class_1090;
   import package_88.class_967;
   import package_89.class_299;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   public final class class_839 implements class_14
   {
      
      public static const name_3:class_839 = new class_839();
       
      
      private var var_646:int = 0;
      
      public function class_839()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -17580;
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
         param1.writeShort(-17580);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
      }
   }
}
