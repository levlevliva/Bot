package package_110
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.VRule;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.common.table.ListSkinForOnePixelLines;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildPendingMemberListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusPopup;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.ShipOverviewTab;
   import com.bigpoint.seafight.view.popups.shipequipment.tabs.ShipEquipmentPopupController;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPopupVo;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyGuildTagItemRenderer;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyUserIdItemRenderer;
   import com.bigpoint.seafight.view.popups.spymenu.component.target;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import com.bit101.components.Style;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.IList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_485;
   import net.bigpoint.seafight.com.module.guild.class_714;
   import net.bigpoint.seafight.com.module.guild.class_923;
   import net.bigpoint.seafight.com.module.guild.class_938;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_14.class_1313;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_17.class_307;
   import package_185.class_1136;
   import package_190.class_1181;
   import package_216.class_1575;
   import package_219.class_1595;
   import package_34.class_107;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_48.class_996;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_43;
   import package_51.class_1355;
   import package_53.class_1100;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_1039;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.gridClasses.GridColumn;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_910 implements class_14
   {
      
      public static const name_3:class_910 = new class_910();
       
      
      private var var_646:int = 0;
      
      public var var_87:class_84;
      
      public function class_910(param1:class_84 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_87 = new class_84();
         }
         else
         {
            this.var_87 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -10020;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_87 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_87.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-10020);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         this.var_87.method_14(param1);
      }
   }
}
