package package_99
{
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.NonPerishableGood_VO;
   import com.bigpoint.seafight.model.vo.KeysVO;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.FactionPhaseRankingItem;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabButtonListItem;
   import com.bigpoint.seafight.view.popups.shipequipment.component.deck.DeckStatsComponent;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.TimeRemainingTooltip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatsListItem;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.events.ToolTipEvent;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import package_104.class_448;
   import package_104.class_803;
   import package_104.class_989;
   import package_111.class_741;
   import package_111.class_774;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_96;
   import package_16.class_28;
   import package_166.class_1502;
   import package_167.class_972;
   import package_29.class_57;
   import package_32.class_64;
   import package_34.class_107;
   import package_34.class_1526;
   import package_36.class_100;
   import package_40.class_285;
   import package_41.class_93;
   import package_49.class_137;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_43;
   import package_52.class_153;
   import package_52.class_168;
   import package_52.class_287;
   import package_52.class_288;
   import package_52.class_289;
   import package_6.class_14;
   import package_7.class_1039;
   import package_7.class_915;
   import package_88.class_290;
   import package_92.class_944;
   import package_93.class_987;
   import spark.components.VGroup;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   
   public class class_764 implements class_14
   {
      
      public static const name_3:class_764 = new class_764();
       
      
      private var var_646:int = 0;
      
      public var var_15:class_786;
      
      public var name_24:int = 0;
      
      public function class_764(param1:class_786 = null, param2:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.var_15 = new class_786();
         }
         else
         {
            this.var_15 = param1;
         }
         this.name_24 = param2;
      }
      
      public function method_16() : int
      {
         return 24131;
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
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 8 % 16 | (65535 & this.var_646) << 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_15 = class_786(class_93.method_26().method_25(param1.readShort()));
         this.var_15.method_15(param1);
         this.name_24 = param1.readInt();
         this.name_24 = this.name_24 >>> 13 % 32 | this.name_24 << 32 - 13 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(24131);
         param1.writeShort(65535 & ((65535 & 0) << 8 % 16 | (65535 & 0) >>> 16 - 8 % 16));
         this.var_15.method_14(param1);
         param1.writeInt(this.name_24 << 13 % 32 | this.name_24 >>> 32 - 13 % 32);
      }
   }
}
