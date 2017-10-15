package net.bigpoint.seafight.com.module.minigame
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1235;
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.net.events.class_1446;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.DeathWindow;
   import com.bigpoint.seafight.view.common.components.ResizableTitleWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.AssistantsLevelTooltip;
   import com.bigpoint.seafight.view.popups.common.RadioImageButton;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.deathpopup.DeathPopupController;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopup;
   import com.bigpoint.seafight.view.popups.deathpopup.vo.DeathPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.target;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.GuildColor;
   import com.bigpoint.seafight.view.popups.shipequipment.component.common.SlotsIndicator;
   import com.bigpoint.seafight.view.popups.spymenu.BuyExecutionController;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import org.bytearray.explorer.SWFExplorer;
   import org.bytearray.explorer.events.SWFExplorerErrorEvent;
   import org.bytearray.explorer.events.SWFExplorerEvent;
   import package_103.class_367;
   import package_104.class_628;
   import package_113.class_397;
   import package_113.class_398;
   import package_113.class_487;
   import package_113.class_538;
   import package_130.class_711;
   import package_14.class_1313;
   import package_14.class_225;
   import package_14.class_47;
   import package_14.class_96;
   import package_166.class_965;
   import package_171.class_981;
   import package_179.class_1064;
   import package_20.class_33;
   import package_202.class_1238;
   import package_30.class_1013;
   import package_30.class_62;
   import package_34.class_107;
   import package_41.class_84;
   import package_41.class_93;
   import package_45.class_110;
   import package_47.class_128;
   import package_49.class_137;
   import package_5.class_12;
   import package_5.class_139;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_984;
   import package_51.class_974;
   import package_6.class_14;
   import package_76.class_279;
   import package_95.class_341;
   import package_97.class_914;
   import package_99.class_449;
   import package_99.class_639;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.PopUpAnchor;
   import spark.components.TitleWindow;
   import spark.components.VScrollBar;
   import spark.events.IndexChangeEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Ellipse;
   
   use namespace mx_internal;
   
   public final class class_470 implements class_14
   {
      
      public static const name_3:class_470 = new class_470();
       
      
      private var var_646:int = 0;
      
      public var var_1675:int = 0;
      
      public var var_1540:int = 0;
      
      public var var_468:int = 0;
      
      public var var_56:class_914;
      
      public function class_470(param1:class_914 = null, param2:int = 0, param3:int = 0, param4:int = 0)
      {
         super();
         this.var_1675 = param4;
         this.var_1540 = param3;
         this.var_468 = param2;
         if(param1 == null)
         {
            this.var_56 = new class_914();
         }
         else
         {
            this.var_56 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 21772;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 3 % 16 | (65535 & this.var_646) << 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1675 = param1.readShort();
         this.var_1540 = param1.readShort();
         this.var_468 = param1.readShort();
         this.var_56 = class_914(class_93.method_26().method_25(param1.readShort()));
         this.var_56.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(21772);
         param1.writeShort(65535 & ((65535 & 0) << 3 % 16 | (65535 & 0) >>> 16 - 3 % 16));
         param1.writeShort(this.var_1675);
         param1.writeShort(this.var_1540);
         param1.writeShort(this.var_468);
         this.var_56.method_14(param1);
      }
   }
}
