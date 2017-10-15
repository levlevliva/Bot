package package_15
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.DefaultQuestItem_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.QuestItem_VO;
   import com.bigpoint.seafight.model.vo.class_1067;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.AssistantsLevelTooltip;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.calendar.vo.CalendarPopupVo;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowSlot;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.BorderType3_1;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.event.modules.EmptyModule;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.achievement.AchievementModule;
   import com.bigpoint.seafight.view.popups.event.modules.columbus.ColumbusNpcKillsModule;
   import com.bigpoint.seafight.view.popups.event.modules.columbus.ColumbusRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.BossOverviewModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.MiniGameGeneralRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.NpcKillsModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.PlayerRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankPrizesModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingTimeModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.SingleRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.ThresholdRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.clash.ClashRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.eventstatistics.EventStatisticModule;
   import com.bigpoint.seafight.view.popups.event.modules.evilrites.EvilRitesNpcKillsModule;
   import com.bigpoint.seafight.view.popups.event.modules.evilrites.EvilRitesRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.faction.FactionGlobalStats;
   import com.bigpoint.seafight.view.popups.event.modules.faction.FactionPersonalStats;
   import com.bigpoint.seafight.view.popups.event.modules.faction.PersonalCurrencyStats;
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.RankingKeyValueItem;
   import com.bigpoint.seafight.view.popups.event.modules.halloween.HalloweenNpcKillsModule;
   import com.bigpoint.seafight.view.popups.event.modules.halloween.HalloweenRankingModule;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.MarauderModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.GroupMapMinigameModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.HireHelperMinigameModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameGlobalRankingModuleSimple;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameHighStriker;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameScoreScreenModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameShephard;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameSpeedRacer;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.GuildMenuVanity;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildProfileView;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.target;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusPopup;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusPopupController;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipselection.vo.SelectionVListItemGemVo;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.InstantMessageContainer;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemLogListItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenCalendarWindow;
   import com.bit101.components.Style;
   import com.greensock.TweenLite;
   import com.greensock.core.TweenCore;
   import com.greensock.events.TweenEvent;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.net.LocalConnection;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldType;
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
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_879;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import net.bigpoint.seafight.com.module.ship.class_1310;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_103.class_1029;
   import package_120.class_919;
   import package_121.class_841;
   import package_132.class_494;
   import package_132.class_605;
   import package_133.class_595;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_142.class_541;
   import package_16.class_28;
   import package_171.class_981;
   import package_18.class_1521;
   import package_184.class_1135;
   import package_185.class_1136;
   import package_190.class_1168;
   import package_190.class_1181;
   import package_20.class_33;
   import package_212.class_1537;
   import package_29.class_166;
   import package_3.class_378;
   import package_3.class_499;
   import package_34.class_107;
   import package_36.class_100;
   import package_36.class_1417;
   import package_38.class_248;
   import package_38.class_79;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_98;
   import package_43.class_105;
   import package_43.class_106;
   import package_43.class_235;
   import package_43.class_238;
   import package_43.class_239;
   import package_43.class_242;
   import package_43.class_245;
   import package_43.class_250;
   import package_43.class_251;
   import package_43.class_254;
   import package_43.class_257;
   import package_43.class_263;
   import package_43.class_265;
   import package_43.class_266;
   import package_43.class_269;
   import package_43.class_271;
   import package_43.class_272;
   import package_43.class_280;
   import package_45.class_110;
   import package_46.class_1224;
   import package_46.class_1356;
   import package_46.class_1501;
   import package_46.class_975;
   import package_47.class_881;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_41;
   import package_5.class_43;
   import package_5.class_945;
   import package_51.class_148;
   import package_51.class_974;
   import package_52.class_168;
   import package_6.class_14;
   import package_69.class_978;
   import package_72.class_1080;
   import package_72.class_203;
   import package_74.class_236;
   import package_74.class_237;
   import package_74.class_247;
   import package_74.class_249;
   import package_74.class_252;
   import package_74.class_253;
   import package_74.class_256;
   import package_74.class_259;
   import package_74.class_275;
   import package_74.class_283;
   import package_75.class_240;
   import package_75.class_274;
   import package_75.class_277;
   import package_76.class_241;
   import package_76.class_243;
   import package_76.class_244;
   import package_76.class_267;
   import package_76.class_279;
   import package_77.class_246;
   import package_78.class_255;
   import package_79.class_258;
   import package_8.class_1315;
   import package_80.class_1217;
   import package_80.class_261;
   import package_81.class_262;
   import package_82.class_264;
   import package_83.class_268;
   import package_84.class_270;
   import package_85.class_276;
   import package_86.class_278;
   import package_86.class_282;
   import package_87.class_281;
   import package_88.class_1090;
   import package_88.class_1093;
   import package_88.class_967;
   import package_91.class_734;
   import package_92.class_1278;
   import package_92.class_944;
   import package_93.class_987;
   import package_95.class_341;
   import package_97.class_409;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VScrollBar;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_48
   {
      
      private static var name_55:class_48;
       
      
      public var var_2481:class_245;
      
      public var var_2230:class_272;
      
      public var var_1121:class_279;
      
      public var var_1123:class_250;
      
      public var var_491:class_106;
      
      public var var_2315:class_265;
      
      public var var_1691:class_244;
      
      public var var_355:class_241;
      
      public var var_2150:class_276;
      
      public var var_1326:class_269;
      
      public var var_1223:class_251;
      
      public var var_2392:class_263;
      
      public var var_987:class_105;
      
      public var var_2186:class_249;
      
      public var var_2027:class_278;
      
      public var var_2214:class_282;
      
      public var var_1261:class_277;
      
      public var var_2417:class_240;
      
      public var var_2029:class_79;
      
      public var var_2304:class_248;
      
      public var var_2312:class_247;
      
      public var var_2198:class_274;
      
      public var var_1742:class_254;
      
      private var var_66:class_273;
      
      private var var_2261:class_237;
      
      private var var_1622:class_283;
      
      public function class_48(param1:Key_4722)
      {
         super();
         if(param1 == null)
         {
            throw new class_166();
         }
      }
      
      public static function get name_3() : class_48
      {
         if(name_55 == null)
         {
            name_55 = new class_48(new Key_4722());
         }
         return name_55;
      }
      
      public final function name_16(param1:class_28) : void
      {
         this.var_66 = new class_273(param1);
         this.var_2261 = new class_237(this.var_66);
         this.var_1622 = new class_283(this.var_66);
         this.var_2481 = new class_245(this.var_66);
         this.var_2230 = new class_272(this.var_66);
         this.var_1121 = new class_279(this.var_66);
         this.var_1123 = new class_250(this.var_66);
         this.var_491 = new class_106(this.var_66);
         this.var_2315 = new class_265(this.var_66);
         this.var_1691 = new class_244(this.var_66);
         this.var_355 = new class_241(this.var_66);
         this.var_2150 = new class_276(this.var_66);
         this.var_1326 = new class_269(this.var_66);
         this.var_1223 = new class_251(this.var_66);
         this.var_2186 = new class_249(this.var_66);
         this.var_2392 = new class_263(this.var_66);
         this.var_987 = new class_105(this.var_66);
         this.var_2027 = new class_278(this.var_66);
         this.var_2214 = new class_282(this.var_66);
         this.var_1261 = new class_277(this.var_66,param1);
         this.var_2417 = new class_240(this.var_66);
         this.var_2029 = new class_79(this.var_66);
         this.var_2304 = new class_248(this.var_66);
         this.var_2198 = new class_274(this.var_66);
         this.var_2312 = new class_247(this.var_66);
         this.var_1742 = new class_254(this.var_66);
      }
      
      public final function method_2699() : class_235
      {
         return new class_235(this.var_66,this.var_1326);
      }
      
      public final function method_3006() : class_235
      {
         return new class_235(this.var_66,this.var_1326);
      }
      
      public final function method_1428(param1:int) : class_258
      {
         return new class_258(this.var_66,param1);
      }
      
      public final function method_2778() : class_267
      {
         return new class_267(this.var_66,this.var_355);
      }
      
      public final function method_1741() : class_243
      {
         return new class_243(this.var_66,this.var_1121);
      }
      
      public final function method_310(param1:int) : class_253
      {
         return this.var_2261.method_470(param1);
      }
      
      private final function getGemConfiguratorInventoryQuery(param1:int) : class_236
      {
         return this.var_1622.method_470(param1);
      }
      
      public final function method_2411(param1:int) : class_259
      {
         return new class_259(this.getGemConfiguratorInventoryQuery(param1),this.var_66,param1);
      }
      
      public final function method_1496() : class_256
      {
         return new class_256(this.var_66);
      }
      
      public final function method_2487() : class_275
      {
         return new class_275(this.var_66,this.var_2186,this.var_1622.method_470(class_270.const_99),this.var_1622.method_470(class_270.const_16));
      }
      
      public final function method_2020() : class_252
      {
         return new class_252(this.var_66);
      }
      
      public final function method_1671() : class_261
      {
         return this.var_66.var_2227;
      }
      
      public final function method_2566(param1:String, param2:Boolean) : class_242
      {
         return new class_242(this.var_66,param1,param2);
      }
      
      public final function method_1921(param1:class_89, param2:String) : class_239
      {
         return new class_239(this.var_66,param1,param2);
      }
      
      public final function method_1500(param1:class_89, param2:Vector.<class_84>) : class_271
      {
         return new class_271(this.var_66,param1,param2);
      }
      
      public final function method_1388(param1:class_84, param2:int) : class_257
      {
         return new class_257(this.var_66,param1,param2);
      }
      
      public final function method_2524() : class_281
      {
         return new class_281(this.var_66);
      }
      
      public final function method_2529() : class_262
      {
         return new class_262(this.var_66);
      }
      
      public final function method_1718() : class_264
      {
         return new class_264(this.var_66,this.var_2027);
      }
      
      public final function method_2019(param1:int) : class_238
      {
         return new class_238(this.var_66,param1);
      }
      
      public final function method_1059(param1:Vector.<int>) : class_268
      {
         return new class_268(this.var_66,param1);
      }
      
      public function get method_2636() : class_246
      {
         return new class_246(this.var_66);
      }
      
      public function get method_2307() : class_255
      {
         return new class_255(this.var_66);
      }
      
      public function get method_2210() : class_266
      {
         return new class_266(this.var_66);
      }
      
      public function get method_2774() : class_280
      {
         return new class_280(this.var_66);
      }
   }
}

class Key_4722
{
    
   
   function Key_4722()
   {
      super();
   }
}
