package package_14
{
   import com.bigpoint.seafight.model.vo.class_1525;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_210;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BorderType0;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.GroupMapIcon;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.ConcreteGoodTooltip;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.greensock.loading.LoaderStatus;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.UIComponent;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.GradientEntry;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_351;
   import net.bigpoint.seafight.com.module.guild.class_373;
   import net.bigpoint.seafight.com.module.guild.class_383;
   import net.bigpoint.seafight.com.module.guild.class_394;
   import net.bigpoint.seafight.com.module.guild.class_400;
   import net.bigpoint.seafight.com.module.guild.class_408;
   import net.bigpoint.seafight.com.module.guild.class_421;
   import net.bigpoint.seafight.com.module.guild.class_433;
   import net.bigpoint.seafight.com.module.guild.class_440;
   import net.bigpoint.seafight.com.module.guild.class_452;
   import net.bigpoint.seafight.com.module.guild.class_459;
   import net.bigpoint.seafight.com.module.guild.class_461;
   import net.bigpoint.seafight.com.module.guild.class_467;
   import net.bigpoint.seafight.com.module.guild.class_474;
   import net.bigpoint.seafight.com.module.guild.class_476;
   import net.bigpoint.seafight.com.module.guild.class_485;
   import net.bigpoint.seafight.com.module.guild.class_489;
   import net.bigpoint.seafight.com.module.guild.class_501;
   import net.bigpoint.seafight.com.module.guild.class_510;
   import net.bigpoint.seafight.com.module.guild.class_513;
   import net.bigpoint.seafight.com.module.guild.class_519;
   import net.bigpoint.seafight.com.module.guild.class_524;
   import net.bigpoint.seafight.com.module.guild.class_552;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.minigame.class_438;
   import net.bigpoint.seafight.com.module.minigame.class_470;
   import net.bigpoint.seafight.com.module.minigame.class_517;
   import net.bigpoint.seafight.com.module.minigame.class_535;
   import net.bigpoint.seafight.com.module.ship.class_371;
   import net.bigpoint.seafight.com.module.ship.class_396;
   import net.bigpoint.seafight.com.module.ship.class_413;
   import net.bigpoint.seafight.com.module.ship.class_417;
   import net.bigpoint.seafight.com.module.ship.class_431;
   import net.bigpoint.seafight.com.module.ship.class_435;
   import net.bigpoint.seafight.com.module.ship.class_531;
   import net.bigpoint.seafight.com.module.ship.class_544;
   import net.bigpoint.seafight.com.module.sound.class_439;
   import net.bigpoint.seafight.com.module.useraction.class_364;
   import net.bigpoint.seafight.com.module.useraction.class_415;
   import package_100.class_356;
   import package_100.class_358;
   import package_101.class_357;
   import package_101.class_388;
   import package_101.class_472;
   import package_101.class_483;
   import package_101.class_495;
   import package_101.class_511;
   import package_101.class_549;
   import package_102.class_359;
   import package_103.class_361;
   import package_103.class_367;
   import package_103.class_437;
   import package_103.class_518;
   import package_103.class_525;
   import package_104.class_362;
   import package_104.class_448;
   import package_105.class_369;
   import package_105.class_529;
   import package_106.class_372;
   import package_107.class_380;
   import package_108.class_381;
   import package_108.class_545;
   import package_109.class_385;
   import package_11.class_130;
   import package_110.class_390;
   import package_110.class_506;
   import package_110.class_526;
   import package_111.class_391;
   import package_111.class_425;
   import package_111.class_446;
   import package_111.class_466;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_742;
   import package_111.class_745;
   import package_112.class_395;
   import package_112.class_411;
   import package_114.class_402;
   import package_114.class_406;
   import package_114.class_430;
   import package_114.class_551;
   import package_115.class_403;
   import package_115.class_490;
   import package_116.class_405;
   import package_117.class_407;
   import package_117.class_477;
   import package_118.class_412;
   import package_118.class_471;
   import package_118.class_539;
   import package_119.class_418;
   import package_119.class_457;
   import package_119.class_465;
   import package_119.class_479;
   import package_120.class_419;
   import package_121.class_424;
   import package_122.class_428;
   import package_122.class_656;
   import package_123.class_432;
   import package_123.class_498;
   import package_124.class_434;
   import package_125.class_442;
   import package_125.class_497;
   import package_126.class_453;
   import package_126.class_488;
   import package_126.class_508;
   import package_127.class_455;
   import package_127.class_486;
   import package_127.class_528;
   import package_128.class_460;
   import package_129.class_473;
   import package_130.class_480;
   import package_131.class_492;
   import package_132.class_494;
   import package_133.class_500;
   import package_134.class_504;
   import package_135.class_507;
   import package_136.class_509;
   import package_136.class_533;
   import package_137.class_516;
   import package_138.class_523;
   import package_139.class_532;
   import package_140.class_534;
   import package_140.class_540;
   import package_140.class_546;
   import package_141.class_536;
   import package_142.class_541;
   import package_143.class_542;
   import package_144.class_543;
   import package_152.class_664;
   import package_152.class_924;
   import package_154.class_842;
   import package_16.class_28;
   import package_17.class_326;
   import package_17.class_376;
   import package_17.class_537;
   import package_170.class_979;
   import package_175.class_1593;
   import package_18.class_30;
   import package_18.class_392;
   import package_18.class_40;
   import package_18.class_530;
   import package_20.class_33;
   import package_204.loopsFinished;
   import package_204.s;
   import package_204.smoke;
   import package_22.class_353;
   import package_22.class_354;
   import package_22.class_36;
   import package_22.class_423;
   import package_22.class_463;
   import package_22.class_505;
   import package_25.class_50;
   import package_26.class_1102;
   import package_26.class_1523;
   import package_28.class_56;
   import package_3.class_26;
   import package_3.class_324;
   import package_3.class_345;
   import package_3.class_363;
   import package_3.class_366;
   import package_3.class_377;
   import package_3.class_378;
   import package_3.class_384;
   import package_3.class_387;
   import package_3.class_444;
   import package_3.class_451;
   import package_3.class_454;
   import package_3.class_462;
   import package_3.class_468;
   import package_3.class_469;
   import package_3.class_484;
   import package_3.class_503;
   import package_3.class_512;
   import package_3.class_514;
   import package_3.class_521;
   import package_3.class_527;
   import package_3.class_547;
   import package_3.class_548;
   import package_3.class_553;
   import package_3.class_554;
   import package_32.class_64;
   import package_37.class_75;
   import package_4.class_11;
   import package_40.class_416;
   import package_40.class_491;
   import package_40.class_85;
   import package_41.class_330;
   import package_41.class_93;
   import package_47.class_135;
   import package_47.class_522;
   import package_47.class_575;
   import package_48.class_138;
   import package_48.class_996;
   import package_49.class_137;
   import package_49.class_420;
   import package_5.class_123;
   import package_50.class_1120;
   import package_50.class_141;
   import package_52.class_167;
   import package_54.class_160;
   import package_55.class_164;
   import package_56.class_368;
   import package_56.class_427;
   import package_56.class_429;
   import package_56.class_502;
   import package_56.class_520;
   import package_6.class_14;
   import package_61.class_349;
   import package_69.class_978;
   import package_7.class_104;
   import package_7.class_146;
   import package_7.class_15;
   import package_7.class_305;
   import package_7.class_360;
   import package_7.class_441;
   import package_7.class_443;
   import package_7.class_456;
   import package_7.class_482;
   import package_7.class_515;
   import package_7.class_74;
   import package_9.class_347;
   import package_9.class_350;
   import package_9.class_375;
   import package_9.class_401;
   import package_9.class_404;
   import package_9.class_426;
   import package_9.class_445;
   import package_9.class_447;
   import package_9.class_478;
   import package_90.class_352;
   import package_90.class_379;
   import package_90.class_464;
   import package_90.class_481;
   import package_91.class_414;
   import package_91.class_450;
   import package_94.class_340;
   import package_95.class_382;
   import package_96.class_342;
   import package_97.class_343;
   import package_97.class_344;
   import package_97.class_409;
   import package_98.class_346;
   import package_99.class_348;
   import package_99.class_374;
   import package_99.class_386;
   import package_99.class_389;
   import package_99.class_399;
   import package_99.class_410;
   import package_99.class_449;
   import package_99.class_458;
   import package_99.class_475;
   import package_99.class_493;
   import package_99.class_550;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.Line;
   
   public final class class_231 extends EventDispatcher
   {
      
      protected static const const_3:ILogger = Log.getLogger("ViewManager");
       
      
      private var var_84:class_141;
      
      private var var_1181:UIComponent;
      
      private var var_1743:class_1120;
      
      private var var_1913:UIComponent;
      
      private var var_354:URLLoader;
      
      private var var_2273:XML;
      
      private var var_1701:StyleSheet;
      
      private var var_1494:Function;
      
      private var var_2241:Sprite;
      
      private var var_125:class_28;
      
      public var var_12:UserInterface;
      
      public var var_1390:class_50;
      
      public var var_954:class_210;
      
      private var var_2516:Boolean = false;
      
      public function class_231(param1:class_28, param2:UIComponent, param3:Sprite, param4:Function)
      {
         this.var_954 = new class_210();
         super();
         this.var_2241 = param3;
         this.var_1913 = param2;
         this.var_1494 = param4;
         this.var_125 = param1;
         this.var_125.addEventListener(class_56.const_51,this.method_1311);
         this.method_1621();
      }
      
      public static function method_1872() : void
      {
      }
      
      private final function method_1621() : void
      {
         this.method_1617();
         this.method_2088();
         this.method_2090();
      }
      
      public final function method_1838() : void
      {
         this.var_12.createChatWindow(this.var_2241);
         this.var_12.chatWindow.name_16();
      }
      
      public final function method_451() : void
      {
         if(this.var_12)
         {
            this.var_12.onStageResize();
         }
         if(this.var_84)
         {
            this.var_84.method_451();
         }
      }
      
      public final function method_979() : XML
      {
         return this.var_2273;
      }
      
      public final function method_291() : StyleSheet
      {
         return this.var_1701;
      }
      
      private final function method_1617() : void
      {
         this.var_1181 = new UIComponent();
         this.var_1913.addChild(this.var_1181);
      }
      
      private final function method_2088() : void
      {
         this.var_1181.addChild(this.var_1743 = new class_1120());
         this.var_1743.method_166(0,0,class_51.var_39,class_51.var_40);
         this.var_84 = new class_141();
         this.var_1743.addChild(this.var_84);
      }
      
      private final function method_2090() : void
      {
         var request:URLRequest = null;
         request = new URLRequest(class_51.var_2194);
         this.var_354 = new URLLoader();
         const_3.info("Load ui config xml: " + request.url);
         this.var_354.addEventListener(IOErrorEvent.IO_ERROR,function():void
         {
            const_3.error("ERROR LOADING uiConfig: " + request.url);
         });
         this.var_354.addEventListener(Event.COMPLETE,this.method_2038);
         this.var_354.load(request);
      }
      
      private final function method_2038(param1:Event) : void
      {
         var event:Event = param1;
         try
         {
            this.var_2273 = new XML(this.var_354.data);
         }
         catch(e:TypeError)
         {
            if(!_loc5_)
            {
               §§push(const_3);
               §§push("ERROR PARSING uiConfig xml ");
               if(!_loc5_)
               {
                  §§push(§§pop() + e.message);
               }
               §§pop().error(§§pop());
            }
            return;
         }
         this.method_2048();
      }
      
      private final function method_2048() : void
      {
         var request:URLRequest = new URLRequest(class_51.var_1692);
         this.var_354 = new URLLoader();
         const_3.info("Load style sheet: " + request.url);
         this.var_354.addEventListener(IOErrorEvent.IO_ERROR,function():void
         {
            const_3.error("ERROR LOADING styleSheet");
         });
         this.var_354.addEventListener(Event.COMPLETE,this.method_1658);
         this.var_354.load(request);
      }
      
      private final function method_1658(param1:Event) : void
      {
         var event:Event = param1;
         try
         {
            this.var_1701 = new StyleSheet();
            this.var_1701.parseCSS(this.var_354.data);
         }
         catch(e:TypeError)
         {
            if(!_loc5_)
            {
               §§push(const_3);
               §§push("ERROR PARSING styleSheet ");
               if(!_loc5_)
               {
                  §§push(§§pop() + e.message);
               }
               §§pop().error(§§pop());
            }
            return;
         }
         this.method_1590();
      }
      
      private final function method_1590() : void
      {
         class_64.method_21().method_2388(this.var_1701);
         this.var_12 = new UserInterface();
         this.var_12.create(class_47.method_272.msgBoxClip);
         this.var_12.init();
         this.var_1181.addChild(this.var_12);
         this.var_1494();
         if(class_51.method_829())
         {
            this.method_1222();
         }
      }
      
      private final function method_1311(param1:class_56) : void
      {
         if(this.var_12)
         {
            this.var_12.exitConfigMode(false);
         }
      }
      
      public final function method_1222() : void
      {
         if(this.var_1390 == null)
         {
            this.var_1390 = new class_50(this.var_125);
            this.var_1181.addChild(this.var_1390);
         }
      }
      
      public final function method_364() : Stage
      {
         return this.var_1913.stage;
      }
      
      public function get method_39() : class_141
      {
         return this.var_84;
      }
      
      public function get method_122() : class_1120
      {
         return this.var_1743;
      }
   }
}
