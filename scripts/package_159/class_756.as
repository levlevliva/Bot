package package_159
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.KeysVO;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.FactionPhaseRankingItem;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuVanityComponent;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRanksTabVo;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusPopup;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.ShipOverviewTab;
   import com.bigpoint.seafight.view.popups.shipequipment.tabs.ShipEquipmentPopupController;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPopupVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.TimeRemainingTooltip;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.IList;
   import mx.core.ClassFactory;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_107.class_693;
   import package_14.class_1313;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_96;
   import package_16.class_28;
   import package_185.class_1136;
   import package_20.class_33;
   import package_205.class_1353;
   import package_208.class_1618;
   import package_216.class_1575;
   import package_30.class_337;
   import package_34.class_107;
   import package_34.class_117;
   import package_40.class_285;
   import package_41.class_315;
   import package_41.class_84;
   import package_45.class_110;
   import package_48.class_996;
   import package_49.class_137;
   import package_5.class_12;
   import package_5.class_133;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_43;
   import package_51.class_1355;
   import package_52.class_153;
   import package_52.class_167;
   import package_52.class_168;
   import package_52.class_287;
   import package_52.class_288;
   import package_52.class_289;
   import package_69.class_978;
   import package_7.class_1039;
   import package_9.class_91;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_756 extends class_315
   {
      
      public static const name_3:class_756 = new class_756();
       
      
      private var var_646:int = 0;
      
      public var var_509:int = 0;
      
      public var var_485:int = 0;
      
      public function class_756(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_509 = param2;
         this.var_485 = param1;
      }
      
      override public function method_16() : int
      {
         return 17414;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_509 = param1.readByte();
         this.var_509 = 255 & ((255 & this.var_509) << 11 % 8 | (255 & this.var_509) >>> 8 - 11 % 8);
         this.var_509 = this.var_509 > 127?int(this.var_509 - 256):int(this.var_509);
         this.var_485 = param1.readByte();
         this.var_485 = 255 & ((255 & this.var_485) >>> 1 % 8 | (255 & this.var_485) << 8 - 1 % 8);
         this.var_485 = this.var_485 > 127?int(this.var_485 - 256):int(this.var_485);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(17414);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
         super.method_14(param1);
         param1.writeByte(255 & ((255 & this.var_509) >>> 11 % 8 | (255 & this.var_509) << 8 - 11 % 8));
         param1.writeByte(255 & ((255 & this.var_485) << 1 % 8 | (255 & this.var_485) >>> 8 - 1 % 8));
      }
   }
}
