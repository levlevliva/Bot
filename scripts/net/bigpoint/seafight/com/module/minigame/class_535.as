package net.bigpoint.seafight.com.module.minigame
{
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.net.events.class_1446;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getMapFieldPoint;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildOverviewLogListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.greensock.OverwriteManager;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.core.IUIComponent;
   import mx.core.UIComponent;
   import mx.events.CloseEvent;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.guild.class_513;
   import net.bigpoint.seafight.com.module.guild.class_739;
   import net.bigpoint.seafight.com.module.guild.class_817;
   import package_108.class_647;
   import package_111.class_741;
   import package_111.class_774;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_156.class_654;
   import package_17.class_54;
   import package_174.class_1373;
   import package_179.class_1416;
   import package_185.class_1136;
   import package_20.class_33;
   import package_210.class_1364;
   import package_210.class_1527;
   import package_216.class_1575;
   import package_32.class_338;
   import package_34.class_1526;
   import package_36.class_100;
   import package_39.class_973;
   import package_41.class_84;
   import package_41.class_93;
   import package_45.class_110;
   import package_46.class_1224;
   import package_48.class_1478;
   import package_5.class_139;
   import package_5.class_940;
   import package_5.class_945;
   import package_50.complete;
   import package_50.duration;
   import package_50.elapse;
   import package_50.intensity;
   import package_50.irender;
   import package_50.layer;
   import package_50.mrender;
   import package_50.scale;
   import package_50.shake;
   import package_50.timer;
   import package_6.class_14;
   import package_92.class_995;
   import package_92.class_997;
   import spark.components.HGroup;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.components.gridClasses.GridLayer;
   import spark.events.IndexChangeEvent;
   
   public final class class_535 implements class_14
   {
      
      public static const name_3:class_535 = new class_535();
       
      
      private var var_646:int = 0;
      
      public var var_468:int = 0;
      
      public function class_535(param1:int = 0)
      {
         super();
         this.var_468 = param1;
      }
      
      public function method_16() : int
      {
         return -30278;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 11 % 16 | (65535 & this.var_646) >>> 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_468 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-30278);
         param1.writeShort(65535 & ((65535 & 0) >>> 11 % 16 | (65535 & 0) << 16 - 11 % 16));
         param1.writeShort(this.var_468);
      }
   }
}
