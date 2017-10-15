package package_113
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.inventory.type.Gem_Model;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingInfoTooltipListItemSubItemVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingInfoTooltipListItemVo;
   import com.bigpoint.seafight.view.popups.currencypopup.CurrencyPopupController;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.target;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.FleetContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.QuestContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.TradingContentModule;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.logging.Log;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_864;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_120.class_919;
   import package_14.class_47;
   import package_156.class_654;
   import package_167.class_1024;
   import package_17.class_54;
   import package_18.class_392;
   import package_18.class_620;
   import package_18.class_855;
   import package_185.class_1136;
   import package_29.class_565;
   import package_32.class_64;
   import package_36.class_1417;
   import package_41.class_93;
   import package_5.class_123;
   import package_51.class_148;
   import package_52.class_167;
   import package_54.class_162;
   import package_54.class_163;
   import package_54.class_319;
   import package_6.class_14;
   import package_95.class_341;
   import package_97.class_409;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_487 extends class_397
   {
      
      public static const name_3:class_487 = new class_487();
       
      
      private var var_646:int = 0;
      
      public var var_16:int = 0;
      
      public var var_81:class_90;
      
      public var var_118:class_90;
      
      public function class_487(param1:int = 0, param2:class_90 = null, param3:class_90 = null)
      {
         super();
         this.var_16 = param1;
         if(param3 == null)
         {
            this.var_81 = new class_90();
         }
         else
         {
            this.var_81 = param3;
         }
         if(param2 == null)
         {
            this.var_118 = new class_90();
         }
         else
         {
            this.var_118 = param2;
         }
      }
      
      override public function method_16() : int
      {
         return 25701;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 2;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_16 = param1.readShort();
         this.var_16 = 65535 & ((65535 & this.var_16) >>> 7 % 16 | (65535 & this.var_16) << 16 - 7 % 16);
         this.var_16 = this.var_16 > 32767?int(this.var_16 - 65536):int(this.var_16);
         this.var_81 = class_90(class_93.method_26().method_25(param1.readShort()));
         this.var_81.method_15(param1);
         this.var_118 = class_90(class_93.method_26().method_25(param1.readShort()));
         this.var_118.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(25701);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
         super.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_16) << 7 % 16 | (65535 & this.var_16) >>> 16 - 7 % 16));
         this.var_81.method_14(param1);
         this.var_118.method_14(param1);
      }
   }
}
