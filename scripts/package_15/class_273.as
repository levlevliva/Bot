package package_15
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_1098;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1097;
   import com.bigpoint.seafight.tools.class_1004;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SafeHavenGuildWindow;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.target;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingMenuPetsTabVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.SmallGreenPayButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointBar;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.constants.SocketEmphasisType;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowUserModel;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.GuildRankRightCheckBox;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.GuildRankIcon;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.colorspopup.GuildColorsPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.colorspopup.GuildColorsPopupController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.SafeHavenGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.SafeHavenGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildColorsPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.SafeHavenGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.popups.shipequipment.component.common.SlotsIndicator;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.seafight.view.popups.spymenu.vo.SpyUserDataVo;
   import com.bigpoint.seafight.view.userInterface.class_1451;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuComponent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import com.bit101.components.Style;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.TweenCore;
   import com.greensock.easing.Quad;
   import com.greensock.events.TweenEvent;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import mx.managers.PopUpManager;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.guild.class_408;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_10.class_18;
   import package_10.class_38;
   import package_102.class_359;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_742;
   import package_111.class_745;
   import package_114.class_402;
   import package_114.class_551;
   import package_119.class_418;
   import package_121.class_841;
   import package_122.class_656;
   import package_133.class_595;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_145.class_1161;
   import package_145.class_567;
   import package_145.class_569;
   import package_146.class_1209;
   import package_146.class_1223;
   import package_146.class_568;
   import package_148.class_820;
   import package_16.class_28;
   import package_165.class_953;
   import package_166.class_1589;
   import package_168.class_1140;
   import package_168.class_1142;
   import package_168.class_1165;
   import package_168.class_976;
   import package_169.class_1130;
   import package_169.class_1131;
   import package_169.class_1133;
   import package_169.class_1134;
   import package_169.class_1152;
   import package_169.class_1153;
   import package_169.class_1154;
   import package_169.class_1155;
   import package_169.class_1156;
   import package_169.class_1159;
   import package_169.class_1190;
   import package_169.class_1213;
   import package_169.class_1216;
   import package_169.class_977;
   import package_171.class_1275;
   import package_171.class_981;
   import package_185.class_1136;
   import package_187.class_1141;
   import package_187.class_1145;
   import package_187.class_1146;
   import package_187.class_1164;
   import package_187.class_1182;
   import package_187.class_1198;
   import package_187.class_1199;
   import package_188.class_1144;
   import package_188.class_1149;
   import package_188.class_1150;
   import package_188.class_1151;
   import package_188.class_1194;
   import package_188.class_1195;
   import package_188.class_1200;
   import package_188.class_1201;
   import package_188.class_1203;
   import package_188.class_1215;
   import package_189.class_1157;
   import package_189.class_1158;
   import package_190.class_1181;
   import package_191.class_1171;
   import package_191.class_1173;
   import package_191.class_1174;
   import package_191.class_1175;
   import package_191.class_1177;
   import package_191.class_1205;
   import package_192.class_1172;
   import package_192.class_1196;
   import package_193.class_1178;
   import package_193.class_1179;
   import package_194.class_1183;
   import package_194.class_1219;
   import package_195.class_1188;
   import package_196.class_1191;
   import package_197.class_1197;
   import package_198.class_1202;
   import package_198.class_1204;
   import package_198.class_1206;
   import package_198.class_1207;
   import package_198.class_1208;
   import package_198.class_1211;
   import package_198.class_1214;
   import package_198.class_1218;
   import package_198.class_1221;
   import package_199.class_1220;
   import package_20.class_33;
   import package_200.class_1222;
   import package_26.class_1070;
   import package_26.class_1128;
   import package_26.class_960;
   import package_29.class_565;
   import package_32.class_64;
   import package_34.class_1499;
   import package_36.class_100;
   import package_39.class_1366;
   import package_4.class_11;
   import package_41.class_84;
   import package_41.class_89;
   import package_45.class_110;
   import package_46.class_1356;
   import package_47.class_881;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_48.class_996;
   import package_48.class_999;
   import package_49.class_137;
   import package_49.class_140;
   import package_5.class_1050;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_43;
   import package_51.class_974;
   import package_6.class_14;
   import package_72.class_203;
   import package_8.class_114;
   import package_80.class_1139;
   import package_80.class_1162;
   import package_80.class_1166;
   import package_80.class_1167;
   import package_80.class_1169;
   import package_80.class_1180;
   import package_80.class_1184;
   import package_80.class_1185;
   import package_80.class_1210;
   import package_80.class_1212;
   import package_80.class_1217;
   import package_80.class_261;
   import package_84.class_270;
   import package_92.class_335;
   import package_92.class_944;
   import package_99.class_786;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_273
   {
       
      
      public var var_2156:class_976;
      
      public var var_2284:class_1201;
      
      public var var_1265:class_1172;
      
      public var var_1799:class_977;
      
      public var var_2388:class_1209;
      
      public var var_1255:class_1220;
      
      public var var_2058:class_568;
      
      public var var_2376:class_1152;
      
      public var var_2435:class_1153;
      
      public var var_2325:class_1133;
      
      public var var_2343:class_1130;
      
      public var var_2159:class_1155;
      
      public var var_2489:class_1213;
      
      public var var_2109:class_1154;
      
      public var var_2288:class_1216;
      
      public var var_2259:class_1156;
      
      public var var_2276:class_1164;
      
      public var var_1853:class_1197;
      
      public var var_2032:class_1222;
      
      public var var_2393:class_1223;
      
      public var var_1603:class_1165;
      
      public var var_2177:class_1204;
      
      public var var_2380:class_1218;
      
      public var var_2192:class_1207;
      
      public var var_2367:class_1206;
      
      public var var_2158:class_1202;
      
      public var var_2252:class_1211;
      
      public var var_2328:class_1208;
      
      public var var_2301:class_1214;
      
      public var var_2126:class_1142;
      
      public var var_2160:class_1221;
      
      public var var_1267:class_1188;
      
      public var var_2220:class_567;
      
      public var var_2148:class_1161;
      
      public var var_2322:class_569;
      
      public var var_2418:class_1131;
      
      public var var_2128:class_1134;
      
      public var var_2329:class_1190;
      
      public var var_2266:class_1166;
      
      public var var_2270:class_1144;
      
      public var var_1684:class_1151;
      
      public var var_1020:class_1149;
      
      public var var_2211:class_1215;
      
      public var var_1901:class_1203;
      
      public var var_2147:class_1210;
      
      public var var_2216:class_1167;
      
      public var var_2295:class_1212;
      
      public var var_2227:class_261;
      
      public var var_2056:class_1171;
      
      public var var_2132:class_1177;
      
      public var var_2384:class_1174;
      
      public var var_2172:class_1175;
      
      public var var_2389:class_1173;
      
      private var var_78:class_28;
      
      private var var_1461:class_1159;
      
      private var var_1720:class_1167;
      
      private var var_1324:class_1162;
      
      private var var_1428:Vector.<class_1200>;
      
      private var var_1789:class_1150;
      
      private var var_1857:class_1219;
      
      public function class_273(param1:class_28)
      {
         super();
         this.var_78 = param1;
         this.var_2156 = new class_976(param1);
         this.var_2284 = new class_1201(param1);
         this.var_1265 = new class_1172(param1);
         this.var_1799 = new class_977(param1);
         this.var_2388 = new class_1209(param1);
         this.var_1255 = new class_1220(param1);
         this.var_2058 = new class_568(param1);
         this.var_2376 = new class_1152(param1);
         this.var_2435 = new class_1153(param1);
         this.var_2325 = new class_1133(param1);
         this.var_2343 = new class_1130(param1);
         this.var_2159 = new class_1155(param1);
         this.var_2489 = new class_1213(param1);
         this.var_2109 = new class_1154(param1);
         this.var_2288 = new class_1216(param1);
         this.var_2259 = new class_1156(param1);
         this.var_2276 = new class_1164(param1);
         this.var_2266 = new class_1166(param1);
         this.var_2270 = new class_1144(param1);
         this.var_1684 = new class_1151(param1);
         this.var_1020 = new class_1149(param1);
         this.var_2211 = new class_1215(param1);
         this.var_1901 = new class_1203(param1);
         this.var_2147 = new class_1210(param1);
         this.var_2216 = new class_1167(param1);
         this.var_2227 = new class_261(param1);
         this.var_2295 = new class_1212(param1);
         this.var_1853 = new class_1197(this.var_78);
         this.var_2032 = new class_1222(this.var_78);
         this.var_2418 = new class_1131(this.var_78);
         this.var_2128 = new class_1134(this.var_78);
         this.var_2329 = new class_1190(this.var_78);
         this.var_2393 = new class_1223(this.var_78);
         this.var_1603 = new class_1165(this.var_78);
         this.var_1853 = new class_1197(param1);
         this.var_1603 = new class_1165(param1);
         this.var_2177 = new class_1204(param1);
         this.var_2380 = new class_1218(param1);
         this.var_2192 = new class_1207(param1);
         this.var_2367 = new class_1206(param1);
         this.var_2158 = new class_1202(param1);
         this.var_2252 = new class_1211(param1);
         this.var_2328 = new class_1208(param1);
         this.var_2301 = new class_1214(param1);
         this.var_2126 = new class_1142(param1);
         this.var_2160 = new class_1221(param1);
         this.var_1267 = new class_1188(param1);
         this.var_2220 = new class_567(this.var_78);
         this.var_2148 = new class_1161(this.var_78);
         this.var_2322 = new class_569(this.var_78);
         this.var_2056 = new class_1171(this.var_78);
         this.var_2132 = new class_1177(this.var_78);
         this.var_2384 = new class_1174(this.var_78);
         this.var_2172 = new class_1175(this.var_78);
         this.var_2389 = new class_1173(this.var_78);
      }
      
      public final function method_2112(param1:class_89) : class_1200
      {
         var _loc4_:class_1200 = null;
         if(this.var_1428 == null)
         {
            this.var_1428 = new Vector.<class_1200>();
         }
         var _loc2_:int = this.var_1428.length - 1;
         while(_loc2_ >= 0)
         {
            _loc4_ = this.var_1428[_loc2_];
            if(class_177.method_703(_loc4_.name_20,param1))
            {
               return _loc4_;
            }
            _loc2_--;
         }
         var _loc3_:class_1200 = new class_1200(this.var_78,param1);
         this.var_1428.push(_loc3_);
         return _loc3_;
      }
      
      public final function method_1928() : class_1150
      {
         return !!this.var_1789?this.var_1789:this.var_1789 = new class_1150(this.var_78);
      }
      
      public final function method_1880() : class_1194
      {
         return new class_1194(this.var_78);
      }
      
      public final function method_2784() : class_1195
      {
         return new class_1195(this.var_78);
      }
      
      public final function method_2859(param1:int) : class_1140
      {
         return new class_1140(this.var_78,param1);
      }
      
      public final function method_2303() : class_1159
      {
         return !!this.var_1461?this.var_1461:this.var_1461 = new class_1159(this.var_78);
      }
      
      public final function method_2176(param1:int) : class_1169
      {
         return this.var_2147.method_457(param1);
      }
      
      public final function method_2106(param1:int) : class_1139
      {
         return this.var_2295.method_457(param1);
      }
      
      public final function method_3026() : class_1167
      {
         return !!this.var_1720?this.var_1720:this.var_1720 = new class_1167(this.var_78);
      }
      
      public final function method_2348() : class_1162
      {
         return !!this.var_1324?this.var_1324:this.var_1324 = new class_1162(this.var_78);
      }
      
      public final function method_2313(param1:int, param2:int) : class_1184
      {
         return new class_1184(this.var_78,param1,param2);
      }
      
      public final function method_2380() : class_1217
      {
         return new class_1217(this.var_78);
      }
      
      public final function method_1124() : class_1180
      {
         return new class_1180(this.var_78);
      }
      
      public final function method_2371(param1:int) : class_1185
      {
         return new class_1185(this.var_78,param1);
      }
      
      public final function method_1787(param1:int) : class_1183
      {
         return new class_1183(this.var_78,param1);
      }
      
      public final function method_2670(param1:class_89) : class_1199
      {
         return new class_1199(this.var_78,param1);
      }
      
      public final function method_1998(param1:class_89) : class_1141
      {
         return new class_1141(this.var_78,param1);
      }
      
      public final function method_1762(param1:String) : class_1146
      {
         return new class_1146(this.var_78,param1);
      }
      
      public final function method_1625(param1:class_84, param2:int) : class_1182
      {
         return new class_1182(this.var_78,param1,param2);
      }
      
      public final function method_2065(param1:Vector.<class_84>) : class_1198
      {
         return new class_1198(this.var_78,param1);
      }
      
      public final function method_2647(param1:String) : class_1145
      {
         return new class_1145(this.var_78,param1);
      }
      
      public final function method_1748() : class_1219
      {
         return !!this.var_1857?this.var_1857:this.var_1857 = new class_1219(this.var_78);
      }
      
      public final function method_1810(param1:Vector.<int>) : class_1191
      {
         return new class_1191(this.var_78,param1);
      }
      
      public final function method_2344(param1:Vector.<int>) : class_1196
      {
         return new class_1196(this.var_78,param1);
      }
      
      public function get method_2717() : class_1158
      {
         return new class_1158(this.var_78);
      }
      
      public function get method_2123() : class_1157
      {
         return new class_1157(this.var_78);
      }
      
      public function get method_1593() : class_1179
      {
         return new class_1179(this.var_78);
      }
      
      public final function method_1633(param1:int, param2:Boolean) : class_1178
      {
         return new class_1178(this.var_78,param1,param2);
      }
      
      public final function method_2035(param1:int, param2:int, param3:int) : class_1205
      {
         return new class_1205(this.var_78,param1,param2,param3);
      }
      
      public final function method_2031(param1:int, param2:int) : class_1193
      {
         return new class_1193(this.var_78,param1,param2);
      }
   }
}
