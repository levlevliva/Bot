package package_100
{
   import com.bigpoint.seafight.model.vo.class_1098;
   import com.bigpoint.seafight.net.events.class_1097;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.BorderType0;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.gems.class_775;
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
   import net.bigpoint.seafight.com.module.guild.class_749;
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
   import package_104.class_803;
   import package_104.class_989;
   import package_105.class_369;
   import package_105.class_529;
   import package_106.class_372;
   import package_107.class_380;
   import package_108.class_381;
   import package_108.class_545;
   import package_109.class_385;
   import package_110.class_390;
   import package_110.class_506;
   import package_110.class_526;
   import package_111.class_391;
   import package_111.class_425;
   import package_111.class_446;
   import package_111.class_466;
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
   import package_14.class_286;
   import package_14.class_51;
   import package_140.class_534;
   import package_140.class_540;
   import package_140.class_546;
   import package_141.class_536;
   import package_142.class_541;
   import package_143.class_542;
   import package_144.class_543;
   import package_152.class_937;
   import package_154.class_632;
   import package_16.class_28;
   import package_17.class_376;
   import package_17.class_537;
   import package_18.class_30;
   import package_18.class_392;
   import package_18.class_40;
   import package_18.class_530;
   import package_20.class_33;
   import package_22.class_353;
   import package_22.class_354;
   import package_22.class_36;
   import package_22.class_423;
   import package_22.class_463;
   import package_22.class_505;
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
   import package_37.class_75;
   import package_4.class_11;
   import package_40.class_416;
   import package_40.class_491;
   import package_40.class_85;
   import package_41.class_330;
   import package_41.class_93;
   import package_47.class_522;
   import package_49.class_137;
   import package_49.class_420;
   import package_54.class_158;
   import package_56.class_368;
   import package_56.class_427;
   import package_56.class_429;
   import package_56.class_502;
   import package_56.class_520;
   import package_6.class_14;
   import package_61.class_349;
   import package_7.class_1039;
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
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   
   public final class class_598 implements class_14
   {
      
      public static const name_3:class_598 = new class_598();
       
      
      private var var_646:int = 0;
      
      public var var_119:int = 0;
      
      public var name_15:int = 0;
      
      public var var_199:int = 0;
      
      public var name_10:int = 0;
      
      public var var_722:int = 0;
      
      public function class_598(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:int = 0)
      {
         super();
         this.var_119 = param3;
         this.name_15 = param5;
         this.var_199 = param2;
         this.name_10 = param4;
         this.var_722 = param1;
      }
      
      public function method_16() : int
      {
         return -8765;
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
         return 16;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 15 % 16 | (65535 & this.var_646) << 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_119 = param1.readInt();
         this.var_119 = this.var_119 >>> 7 % 32 | this.var_119 << 32 - 7 % 32;
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 << 8 % 32 | this.name_15 >>> 32 - 8 % 32;
         this.var_199 = param1.readInt();
         this.var_199 = this.var_199 >>> 13 % 32 | this.var_199 << 32 - 13 % 32;
         this.name_10 = param1.readInt();
         this.name_10 = this.name_10 << 14 % 32 | this.name_10 >>> 32 - 14 % 32;
         this.var_722 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-8765);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         param1.writeInt(this.var_119 << 7 % 32 | this.var_119 >>> 32 - 7 % 32);
         param1.writeInt(this.name_15 >>> 8 % 32 | this.name_15 << 32 - 8 % 32);
         param1.writeInt(this.var_199 << 13 % 32 | this.var_199 >>> 32 - 13 % 32);
         param1.writeInt(this.name_10 >>> 14 % 32 | this.name_10 << 32 - 14 % 32);
         param1.writeShort(this.var_722);
      }
   }
}
