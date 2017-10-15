package package_61
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.tools.request;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.castle.component.target;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyPopup;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.LootGroup;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildCurrencyVo;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.filters.BevelFilter;
   import flash.filters.DropShadowFilter;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_104.class_448;
   import package_104.class_803;
   import package_104.class_989;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_15.class_48;
   import package_16.class_28;
   import package_163.class_884;
   import package_171.class_1276;
   import package_179.class_1282;
   import package_188.class_1200;
   import package_190.class_1168;
   import package_190.class_1181;
   import package_190.class_1469;
   import package_202.class_1301;
   import package_26.class_222;
   import package_41.class_103;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_98;
   import package_46.class_1356;
   import package_49.class_137;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_22;
   import package_51.class_148;
   import package_54.class_162;
   import package_6.class_14;
   import package_7.class_1039;
   import package_91.class_1246;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   import spark.events.IndexChangeEvent;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.Line;
   
   use namespace mx_internal;
   
   public final class class_787 implements class_14
   {
      
      public static const name_3:class_787 = new class_787();
       
      
      private var var_646:int = 0;
      
      public var var_369:int = 0;
      
      public var var_601:int = 0;
      
      public function class_787(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_369 = param1;
         this.var_601 = param2;
      }
      
      public function method_16() : int
      {
         return -5821;
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
         return 6;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_369 = param1.readShort();
         this.var_369 = 65535 & ((65535 & this.var_369) >>> 7 % 16 | (65535 & this.var_369) << 16 - 7 % 16);
         this.var_369 = this.var_369 > 32767?int(this.var_369 - 65536):int(this.var_369);
         this.var_601 = param1.readInt();
         this.var_601 = this.var_601 << 5 % 32 | this.var_601 >>> 32 - 5 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-5821);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         param1.writeShort(65535 & ((65535 & this.var_369) << 7 % 16 | (65535 & this.var_369) >>> 16 - 7 % 16));
         param1.writeInt(this.var_601 >>> 5 % 32 | this.var_601 << 32 - 5 % 32);
      }
   }
}
