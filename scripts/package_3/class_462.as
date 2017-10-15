package package_3
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.assistants.LevelItemRenderer;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentButtonClickEvent;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.MiniHitpointsBarDisplay;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.MemberRankAssignationVo;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusPopup;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusPopupController;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkinBold;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_510;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import org.apache.flex.collections.VectorCollection;
   import package_10.class_18;
   import package_10.class_38;
   import package_106.class_372;
   import package_107.class_380;
   import package_108.class_596;
   import package_108.class_755;
   import package_109.class_385;
   import package_111.class_425;
   import package_111.class_466;
   import package_111.class_796;
   import package_112.class_395;
   import package_112.class_411;
   import package_120.class_419;
   import package_129.class_473;
   import package_132.class_494;
   import package_134.class_504;
   import package_135.class_507;
   import package_137.class_516;
   import package_138.class_523;
   import package_14.class_1535;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_96;
   import package_140.class_540;
   import package_141.class_536;
   import package_144.class_543;
   import package_159.class_756;
   import package_16.class_28;
   import package_166.class_961;
   import package_17.class_151;
   import package_17.class_54;
   import package_170.class_979;
   import package_171.class_1043;
   import package_171.class_1044;
   import package_171.class_1057;
   import package_171.class_1058;
   import package_171.class_1059;
   import package_171.class_1267;
   import package_171.class_1268;
   import package_171.class_1269;
   import package_171.class_1270;
   import package_171.class_1273;
   import package_171.class_1274;
   import package_171.class_1276;
   import package_171.class_1316;
   import package_20.class_33;
   import package_212.class_1537;
   import package_26.class_1128;
   import package_26.class_942;
   import package_26.class_960;
   import package_26.class_969;
   import package_29.class_57;
   import package_32.class_64;
   import package_34.class_107;
   import package_34.class_1127;
   import package_34.class_115;
   import package_36.class_100;
   import package_4.class_11;
   import package_41.class_84;
   import package_42.class_959;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_1132;
   import package_46.class_1224;
   import package_46.class_1271;
   import package_46.class_975;
   import package_5.class_1012;
   import package_5.class_1028;
   import package_5.class_123;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_43;
   import package_51.class_148;
   import package_51.class_974;
   import package_54.class_161;
   import package_6.class_14;
   import package_65.class_188;
   import package_72.class_1080;
   import package_72.class_1442;
   import package_8.class_1315;
   import package_8.class_1317;
   import package_9.class_17;
   import package_94.class_340;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.events.IndexChangeEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Graphic;
   
   public final class class_462 extends class_10
   {
       
      
      private var name_104:class_188;
      
      private var var_2416:class_1044;
      
      private var var_2448:class_1058;
      
      private var var_2342:class_1269;
      
      private var var_2347:class_1043;
      
      private var var_2235:class_1270;
      
      private var var_2345:class_1059;
      
      private var var_2221:class_1057;
      
      private var var_1950:class_1316;
      
      private var var_2352:class_1274;
      
      private var var_2359:class_1273;
      
      private var var_2212:class_1276;
      
      private var var_2282:class_1267;
      
      public function class_462()
      {
         super();
         this.name_16();
         this.name_104 = class_33.name_12.name_104;
         this.var_2416 = class_1044.method_21();
         this.var_2448 = class_1058.method_21();
         this.var_2342 = class_1269.method_21();
         this.var_2347 = class_1043.method_21();
         this.var_2235 = class_1270.method_21();
         this.var_2345 = class_1059.method_21();
         this.var_2221 = class_1057.method_21();
         this.var_1950 = class_1316.method_21();
         this.var_2212 = class_1276.method_21();
         this.var_2359 = class_1273.method_21();
         this.var_2352 = class_1274.method_21();
         this.var_2282 = class_1267.method_21();
      }
      
      private final function name_16() : void
      {
         method_23(class_523.name_3,this.method_1674);
         method_23(class_473.name_3,this.method_1918);
         method_23(class_536.name_3,this.method_1860);
         method_23(class_419.name_3,this.method_1884);
         method_23(class_504.name_3,this.method_1614);
         method_23(class_380.name_3,this.method_1806);
         method_23(class_507.name_3,this.method_1767);
         method_23(class_411.name_3,this.method_2097);
         method_23(class_395.name_3,this.method_2024);
         method_23(class_340.name_3,this.method_2236);
         method_23(class_494.name_3,this.method_2589);
         method_23(class_372.name_3,this.method_2376);
         method_23(class_385.name_3,this.method_2431);
         method_23(class_543.name_3,this.method_1660);
         method_23(class_516.name_3,this.method_1750);
         method_23(class_540.name_3,this.method_2526);
      }
      
      private final function method_2097(param1:class_14) : void
      {
         this.var_1950.method_2466(param1);
      }
      
      private final function method_2024(param1:class_14) : void
      {
         this.var_1950.method_1913(param1);
      }
      
      private final function method_1806(param1:class_14) : void
      {
         var _loc2_:class_380 = param1 as class_380;
         this.var_2345.method_105(_loc2_);
         class_1132.name_3.method_2553(_loc2_);
      }
      
      private final function method_1767(param1:class_14) : void
      {
         class_1271.name_3.method_1767(param1 as class_507);
      }
      
      private final function method_1674(param1:class_14) : void
      {
         this.var_2416.method_105(param1);
      }
      
      private final function method_1918(param1:class_14) : void
      {
         this.var_2342.method_105(param1);
      }
      
      private final function method_1860(param1:class_14) : void
      {
         this.var_2347.method_105(param1);
      }
      
      private final function method_1884(param1:class_14) : void
      {
         this.var_2235.method_105(param1);
      }
      
      private final function method_1614(param1:class_14) : void
      {
         class_1315.name_3.method_55(param1);
      }
      
      private final function method_2236(param1:class_14) : void
      {
         this.var_2212.method_105(param1);
      }
      
      private final function method_2589(param1:class_14) : void
      {
         this.var_2282.method_105(param1);
      }
      
      private final function method_2376(param1:class_14) : void
      {
         this.var_2221.method_105(param1);
      }
      
      private final function method_2431(param1:class_14) : void
      {
         this.var_2352.method_105(param1);
      }
      
      private final function method_1660(param1:class_14) : void
      {
         this.var_2359.method_105(param1);
      }
      
      private final function method_1750(param1:class_14) : void
      {
         class_1268.method_21().method_105(param1);
      }
      
      private final function method_2526(param1:class_540) : void
      {
         var _loc2_:class_540 = param1 as class_540;
         class_1317.name_3.method_2364(_loc2_.var_320,_loc2_.var_669);
      }
   }
}
