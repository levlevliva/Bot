package package_27
{
   import com.adobe.serialization.json.JSONToken;
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.loadScreen;
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsConf_VO;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.AmsItemStub;
   import com.bigpoint.seafight.model.inventory.vo.amsconfpreset.DefaultAmsConf_VO;
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.model.vo.class_1048;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_210;
   import com.bigpoint.seafight.model.vo.class_980;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_46;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.BriskImg;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.VRule;
   import com.bigpoint.seafight.view.common.components.shipcoverflow.components.ShipCoverFlowItem;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.mainmenu.MainMenuBar;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.cauldron.component.CauldronMapPiecesLoader;
   import com.bigpoint.seafight.view.popups.common.BorderType2;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.common.CheckBoxGroup;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.ImageDisplay;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.SimpleGreenButtonSkin;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InitiateItemTransferEvent;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InventoryDragDropController;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.event.component.MinigameContentLayoutComponent;
   import com.bigpoint.seafight.view.popups.event.modules.common.clash.ClashRankingListItem;
   import com.bigpoint.seafight.view.popups.event.modules.common.vo.RankItemKeyValueVO;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.populateLoot;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.target;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingGemsInventory;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.GuildRankRightCheckBox;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.NpcQuestList;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.reputation.ReputationFavoriteEvent;
   import com.bigpoint.seafight.view.popups.scrollcostpopup.ScrollCostPopupController;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.userInterface.InstantMessageContainer;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.class_207;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.DelayToggleButton;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.FavoriteButtonSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.GemOverviewListSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.NotEnoughResourcesPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenNpcConversationWindow;
   import com.bit101.components.ListItem;
   import com.bit101.components.Style;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.TweenCore;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.ImageLoader;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.SWFLoader;
   import com.greensock.loading.XMLLoader;
   import com.greensock.loading.core.DisplayObjectLoader;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.media.Sound;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.containers.Form;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IVisualElement;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BCBitmapData;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.GuildLogAction;
   import net.bigpoint.seafight.com.module.guild.class_1476;
   import net.bigpoint.seafight.com.module.guild.class_394;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_821;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_1119;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import org.bytearray.explorer.SWFExplo;
   import org.bytearray.explorer.events.SWFExplorerEvent;
   import org.osflash.signals.ISlot;
   import org.osflash.signals.SlotList;
   import package_10.class_18;
   import package_10.class_38;
   import package_101.class_564;
   import package_101.class_608;
   import package_104.class_803;
   import package_105.class_369;
   import package_105.class_529;
   import package_110.class_856;
   import package_121.class_773;
   import package_121.class_841;
   import package_123.class_1032;
   import package_123.class_652;
   import package_123.class_837;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_94;
   import package_140.class_540;
   import package_152.class_664;
   import package_16.class_28;
   import package_17.class_326;
   import package_170.class_979;
   import package_171.class_1270;
   import package_175.class_1547;
   import package_179.class_1064;
   import package_18.class_392;
   import package_18.class_916;
   import package_190.class_1181;
   import package_190.class_1562;
   import package_2.class_9;
   import package_20.class_33;
   import package_205.class_1353;
   import package_210.class_1364;
   import package_214.class_1598;
   import package_214.class_1604;
   import package_216.class_1575;
   import package_23.class_42;
   import package_26.class_1354;
   import package_29.class_143;
   import package_29.class_144;
   import package_30.class_62;
   import package_34.class_116;
   import package_34.class_73;
   import package_36.class_100;
   import package_39.class_1367;
   import package_39.class_973;
   import package_40.class_416;
   import package_41.class_84;
   import package_42.class_98;
   import package_43.class_272;
   import package_45.class_110;
   import package_46.class_1224;
   import package_46.class_1356;
   import package_46.class_975;
   import package_47.class_757;
   import package_48.class_138;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_49.class_137;
   import package_49.class_880;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_984;
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
   import package_51.class_1355;
   import package_52.class_167;
   import package_54.class_1089;
   import package_54.class_161;
   import package_54.class_163;
   import package_6.class_14;
   import package_69.class_978;
   import package_8.class_1240;
   import package_88.class_290;
   import package_89.class_299;
   import package_92.class_1278;
   import package_92.class_336;
   import package_92.class_995;
   import package_92.class_997;
   import package_93.class_876;
   import package_93.class_987;
   import package_95.class_341;
   import package_99.class_386;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.filters.GlowFilter;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_53 extends EventDispatcher
   {
      
      private static var name_3:class_53;
       
      
      private var var_2250:Vector.<String>;
      
      private var var_2461:Vector.<String>;
      
      private var var_1877:Boolean;
      
      private var var_363:LoaderMax;
      
      private var var_1137:Boolean;
      
      private var var_2495:Dictionary;
      
      private var var_2326:Boolean = false;
      
      private var var_1695:Vector.<String>;
      
      private var var_1113:Dictionary;
      
      private var var_961:Dictionary;
      
      private var var_2223:Vector.<String>;
      
      private var var_1839:Dictionary;
      
      private var var_1089:SecurityDomain;
      
      private var var_1723:Vector.<ApplicationDomain>;
      
      public function class_53(param1:IEventDispatcher = null)
      {
         super(param1);
         this.var_1089 = !!class_51.var_571?null:SecurityDomain.currentDomain;
         var _loc2_:LoaderContext = new LoaderContext(true,ApplicationDomain.currentDomain,this.var_1089);
         this.var_1723 = new Vector.<ApplicationDomain>();
         this.var_363 = new LoaderMax({
            "onComplete":this.method_2204,
            "name":"DynamicMaxLoader",
            "domain":"own",
            "context":_loc2_
         });
         this.var_363.maxConnections = 2;
         LoaderMax.defaultContext = _loc2_;
         LoaderMax.defaultAuditSize = false;
         this.var_1137 = true;
         this.var_1839 = new Dictionary();
         this.var_2495 = new Dictionary();
         this.var_2250 = new Vector.<String>();
         this.var_2461 = new Vector.<String>();
         this.var_1695 = new Vector.<String>();
         this.var_1113 = new Dictionary();
         this.var_961 = new Dictionary();
         this.var_2223 = new Vector.<String>();
         this.var_1877 = true;
      }
      
      public static function method_21() : class_53
      {
         if(name_3 == null)
         {
            name_3 = new class_53();
         }
         return name_3;
      }
      
      public static function method_1973(param1:String) : MovieClip
      {
         var _loc2_:Class = class_53.method_21().method_523(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc3_:MovieClip = new _loc2_();
         return _loc3_;
      }
      
      public final function method_2701() : void
      {
         var _loc1_:Array = ["preloader","safehaven","componentassets","questnpcsigns"];
         this.init(_loc1_);
      }
      
      private final function init(param1:Array) : void
      {
         this.method_160 = true;
         this.method_1324(param1);
      }
      
      public final function method_2999(param1:String) : MovieClip
      {
         var _loc2_:Class = this.method_523(param1);
         var _loc3_:MovieClip = new _loc2_();
         return _loc3_;
      }
      
      public final function method_1971(param1:String) : Class
      {
         var _loc2_:Class = this.method_523(param1);
         if(_loc2_)
         {
            return _loc2_;
         }
         return class_299;
      }
      
      public final function method_2294(param1:String, param2:String, param3:Boolean) : Bitmap
      {
         var _loc7_:BitmapData = null;
         var _loc8_:Bitmap = null;
         var _loc4_:Class = this.method_523(param2);
         if(_loc4_)
         {
            _loc7_ = new _loc4_(0,0) as BitmapData;
            _loc8_ = new Bitmap(_loc7_);
            _loc8_.smoothing = param3;
            return _loc8_;
         }
         var _loc5_:class_299 = new class_299();
         _loc5_.name_53 = param2;
         var _loc6_:BitmapData = new BitmapData(_loc5_.width,_loc5_.height,true,0);
         return new Bitmap(_loc6_);
      }
      
      public final function method_1848(param1:String, param2:String) : BitmapData
      {
         var _loc4_:BitmapData = null;
         var _loc3_:Class = this.method_523(param2);
         if(_loc3_)
         {
            _loc4_ = new _loc3_(0,0) as BitmapData;
            return _loc4_;
         }
         return class_299.method_776(param2);
      }
      
      private final function method_1074(param1:LoaderEvent) : void
      {
         var _loc2_:ImageLoader = param1.target as ImageLoader;
         var _loc3_:Array = _loc2_.vars["parameters"];
         if(!_loc3_ || _loc3_.length <= 0)
         {
            return;
         }
         var _loc4_:Function = _loc3_[0];
         if(null == _loc4_)
         {
            return;
         }
         var _loc5_:Bitmap = (param1.currentTarget as ImageLoader).rawContent as Bitmap;
         _loc4_.apply(null,[_loc5_,_loc2_.name]);
      }
      
      private final function method_1760(param1:LoaderEvent) : void
      {
         var _loc2_:XMLLoader = param1.target as XMLLoader;
         var _loc3_:Array = _loc2_.vars["parameters"];
         if(!_loc3_ || _loc3_.length <= 0)
         {
            return;
         }
         var _loc4_:Function = _loc3_[0];
         if(null == _loc4_)
         {
            return;
         }
         var _loc5_:XML = (param1.currentTarget as XMLLoader).content as XML;
         _loc4_.apply(null,[_loc5_]);
      }
      
      private final function method_620(param1:LoaderEvent) : void
      {
         var _loc2_:SWFLoader = param1.target as SWFLoader;
         var _loc3_:String = _loc2_.name;
         Main.LOG.info("Load success => " + _loc3_);
         var _loc4_:DisplayObjectContainer = _loc2_.rawContent as DisplayObjectContainer;
         var _loc5_:LoaderInfo = _loc4_.loaderInfo;
         this.var_1723.push(_loc5_.applicationDomain);
         Log.getLogger("FileRuntimeLoadservice").info("ApplicationDomain list length: " + this.var_1723.length);
         var _loc6_:ByteArray = _loc5_.bytes;
         var _loc7_:SWFExplo = new SWFExplo();
         _loc7_.addEventListener(SWFExplorerEvent.COMPLETE,this.method_1327);
         _loc7_.parse(_loc6_,"classes",_loc3_);
         this.var_2250.push(_loc3_);
      }
      
      private final function method_2686(param1:String, param2:String, param3:Boolean = false) : void
      {
         var _loc4_:String = class_42.method_47("res/dyna/" + param2);
         if(param1 == "scale9lib")
         {
            _loc4_ = "res/dyna/" + param2;
         }
         Main.LOG.info(this + ": Load => " + _loc4_);
         var _loc5_:SWFLoader = new SWFLoader(_loc4_,{
            "noCache":false,
            "allowMalformedURL":true,
            "name":param1,
            "container":this,
            "onError":this.method_641,
            "onIOError":this.method_653,
            "onSecurityError":this.method_1844,
            "onFail":this.method_1837,
            "onHTTPStatus":this.method_1668,
            "onComplete":this.method_620,
            "domain":"own",
            "context":new LoaderContext(true,ApplicationDomain.currentDomain,this.var_1089)
         });
         if(param3)
         {
            this.var_363.prepend(_loc5_);
         }
         else
         {
            this.var_363.append(_loc5_);
         }
         this.var_363.load();
         this.var_1137 = false;
         this.var_2223.push(param1);
      }
      
      public final function method_700(param1:Function, param2:String, param3:String, param4:Boolean = false) : void
      {
         var _loc5_:String = class_42.method_47(param3);
         Main.LOG.info(this + ": Load => " + _loc5_);
         var _loc6_:ImageLoader = new ImageLoader(_loc5_,{
            "autoDispose":true,
            "parameters":[param1],
            "noCache":false,
            "allowMalformedURL":true,
            "name":param2,
            "container":this,
            "onError":this.method_641,
            "onIOError":this.method_653,
            "onComplete":this.method_1074,
            "domain":"own",
            "context":new LoaderContext(true,ApplicationDomain.currentDomain,this.var_1089)
         });
         if(param4)
         {
            this.var_363.prepend(_loc6_);
         }
         else
         {
            this.var_363.append(_loc6_);
         }
         this.var_363.load();
         this.var_1137 = false;
      }
      
      public final function method_2996(param1:Function, param2:String, param3:Boolean = false) : void
      {
         var _loc4_:String = param2.substring(param2.lastIndexOf("/") + 1,param2.length - 4);
         var _loc5_:String = class_42.method_47(param2);
         var _loc6_:XMLLoader = new XMLLoader(_loc5_,{
            "autoDispose":true,
            "parameters":[param1],
            "noCache":false,
            "allowMalformedURL":true,
            "name":_loc4_,
            "container":this,
            "onError":this.method_641,
            "onIOError":this.method_653,
            "onComplete":this.method_1760,
            "domain":"own",
            "context":new LoaderContext(true,ApplicationDomain.currentDomain,this.var_1089)
         });
         if(param3)
         {
            this.var_363.prepend(_loc6_);
         }
         else
         {
            this.var_363.append(_loc6_);
         }
         this.var_363.load();
         this.var_1137 = false;
      }
      
      public final function method_2887(param1:Function, param2:String, param3:String, param4:Boolean = false) : void
      {
         var _loc5_:String = class_42.method_47("images/" + param3);
         var _loc6_:ImageLoader = new ImageLoader(_loc5_,{
            "autoDispose":true,
            "parameters":[param1],
            "noCache":false,
            "allowMalformedURL":true,
            "name":param2,
            "container":this,
            "onError":this.method_641,
            "onIOError":this.method_653,
            "onComplete":this.method_1074,
            "domain":"own",
            "context":new LoaderContext(true,ApplicationDomain.currentDomain,this.var_1089)
         });
         if(param4)
         {
            this.var_363.prepend(_loc6_);
         }
         else
         {
            this.var_363.append(_loc6_);
         }
         this.var_363.load();
         this.var_1137 = false;
      }
      
      public final function method_195(param1:Array, param2:String = null) : Boolean
      {
         var _loc6_:String = null;
         var _loc3_:Array = [];
         var _loc4_:Boolean = false;
         for each(_loc6_ in param1)
         {
            _loc4_ = this.var_1113[_loc6_] != null?true:false;
            if(!_loc4_)
            {
               _loc3_.push(_loc6_);
            }
         }
         if(_loc3_.length <= 0)
         {
            return false;
         }
         if(param2)
         {
            this.method_2199(param2,_loc3_);
            this.method_1324(_loc3_);
         }
         return true;
      }
      
      private final function method_2199(param1:String, param2:Array) : void
      {
         if(this.var_961.hasOwnProperty(param1))
         {
            return;
         }
         this.var_961[param1] = param2;
      }
      
      private final function method_2204(param1:LoaderEvent) : void
      {
         this.var_1137 = true;
      }
      
      private final function method_1844(param1:LoaderEvent) : void
      {
         var _loc2_:DisplayObjectLoader = param1.currentTarget as DisplayObjectLoader;
         class_144.method_341("FileRuntimeLoadservice LoaderEvent.SECURITY_ERROR =>" + _loc2_.name,class_143.const_636);
      }
      
      private final function method_1668(param1:LoaderEvent) : void
      {
         var _loc2_:DisplayObjectLoader = param1.currentTarget as DisplayObjectLoader;
         var _loc3_:SWFLoader = _loc2_ as SWFLoader;
         Main.LOG.info("FileRuntimeLoadservice LoaderEvent.HTTP_STATUS => " + _loc2_.name + ": " + _loc3_.httpStatus);
      }
      
      private final function method_1837(param1:LoaderEvent) : void
      {
         var _loc2_:DisplayObjectLoader = param1.currentTarget as DisplayObjectLoader;
         class_144.method_341("FileRuntimeLoadservice LoaderEvent.FAIL => " + _loc2_.name,class_143.const_636);
         var _loc3_:class_298 = new class_298(class_298.const_1617);
         _loc3_.name_79 = param1.text;
         dispatchEvent(_loc3_);
      }
      
      private final function method_641(param1:LoaderEvent) : void
      {
         var _loc2_:DisplayObjectLoader = param1.currentTarget as DisplayObjectLoader;
         class_144.method_341("FileRuntimeLoadservice LoaderEvent.ERROR => " + _loc2_.name,class_143.const_636);
      }
      
      private final function method_653(param1:LoaderEvent) : void
      {
         var _loc2_:DisplayObjectLoader = param1.currentTarget as DisplayObjectLoader;
         class_144.method_341("FileRuntimeLoadservice LoaderEvent.IOERROR => " + _loc2_.name,class_143.const_636);
      }
      
      private final function method_2928() : void
      {
         if(!this.method_160)
         {
            Log.getLogger("FileRuntimeLoadservice").error("FileRuntimeLoadServiceDynamic is not Ready init Method is not called yet");
         }
      }
      
      private final function method_1327(param1:SWFExplorerEvent) : void
      {
         var _loc3_:String = null;
         var _loc2_:Array = new Array();
         for each(_loc3_ in param1.definitions)
         {
            this.var_1695.push(_loc3_);
            _loc2_.push(_loc3_);
         }
         this.var_1113[param1.libName] = _loc2_;
         param1.pSWFExploInstance.removeEventListener(SWFExplorerEvent.COMPLETE,this.method_1327);
         param1.pSWFExploInstance = null;
         dispatchEvent(new Event(param1.libName));
         this.method_1841();
      }
      
      public final function method_2877(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.var_1695.length)
         {
            if(param1 == this.var_1695[_loc2_])
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public final function method_382(param1:String) : Boolean
      {
         var _loc2_:Boolean = this.var_1113[param1] != null?true:false;
         return _loc2_;
      }
      
      private final function method_1841() : void
      {
         var _loc3_:* = null;
         var _loc4_:String = null;
         if(this.method_2483(this.var_961))
         {
            return;
         }
         var _loc1_:Array = [];
         var _loc2_:Boolean = false;
         for(_loc3_ in this.var_961)
         {
            _loc2_ = true;
            for each(_loc4_ in this.var_961[_loc3_])
            {
               if(!this.var_1113.hasOwnProperty(_loc4_))
               {
                  _loc2_ = false;
                  break;
               }
            }
            if(_loc2_)
            {
               dispatchEvent(new Event(_loc3_));
               _loc1_.push(_loc3_);
            }
         }
         this.method_1622(this.var_961,_loc1_);
      }
      
      private final function method_1324(param1:Array) : void
      {
         var _loc4_:String = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            if(!this.var_1839.hasOwnProperty(_loc4_))
            {
               this.method_2686(_loc4_,_loc4_ + ".swf");
               _loc2_.push(_loc4_);
               this.var_1839[_loc4_] = _loc4_;
            }
            _loc3_++;
         }
      }
      
      public final function method_335(param1:String) : ApplicationDomain
      {
         var _loc2_:ApplicationDomain = ApplicationDomain.currentDomain;
         if(_loc2_.hasDefinition(param1))
         {
            return ApplicationDomain.currentDomain;
         }
         for each(_loc2_ in this.var_1723)
         {
            if(_loc2_.hasDefinition(param1))
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private final function method_523(param1:String) : Class
      {
         var _loc2_:ApplicationDomain = this.method_335(param1);
         if(_loc2_)
         {
            return _loc2_.getDefinition(param1) as Class;
         }
         Main.LOG.warn(this + ": no definition found for " + param1);
         return null;
      }
      
      private final function method_1622(param1:Dictionary, param2:Array) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < param2.length)
         {
            delete param1[param2[_loc3_]];
            _loc3_++;
         }
      }
      
      private final function method_2483(param1:Dictionary) : Boolean
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_ != null)
            {
               return false;
            }
         }
         return true;
      }
      
      public function get method_2467() : Boolean
      {
         return this.var_1877;
      }
      
      public function set method_2467(param1:Boolean) : void
      {
         this.var_1877 = param1;
      }
      
      public function get method_160() : Boolean
      {
         return this.var_2326;
      }
      
      public function set method_160(param1:Boolean) : void
      {
         this.var_2326 = param1;
         dispatchEvent(new Event(Event.INIT));
      }
      
      public final function method_2989(param1:String) : Array
      {
         return this.var_1113[param1];
      }
   }
}
