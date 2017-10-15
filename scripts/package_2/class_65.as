package package_2
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoDownBtnSkin;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.event.component.EventModuleFactory;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagDropTarget;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
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
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_436;
   import net.bigpoint.seafight.com.module.ship.class_371;
   import net.bigpoint.seafight.com.module.ship.class_396;
   import net.bigpoint.seafight.com.module.ship.class_413;
   import net.bigpoint.seafight.com.module.ship.class_417;
   import net.bigpoint.seafight.com.module.ship.class_431;
   import net.bigpoint.seafight.com.module.ship.class_435;
   import net.bigpoint.seafight.com.module.ship.class_496;
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
   import package_110.class_390;
   import package_110.class_506;
   import package_110.class_526;
   import package_111.class_391;
   import package_111.class_425;
   import package_111.class_446;
   import package_111.class_466;
   import package_112.class_395;
   import package_112.class_411;
   import package_113.class_397;
   import package_113.class_398;
   import package_113.class_487;
   import package_113.class_538;
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
   import package_14.class_47;
   import package_140.class_534;
   import package_140.class_540;
   import package_140.class_546;
   import package_141.class_536;
   import package_142.class_541;
   import package_143.class_542;
   import package_144.class_543;
   import package_16.class_28;
   import package_17.class_376;
   import package_17.class_537;
   import package_18.class_30;
   import package_18.class_392;
   import package_18.class_40;
   import package_18.class_530;
   import package_18.class_571;
   import package_18.class_855;
   import package_20.class_33;
   import package_22.class_353;
   import package_22.class_354;
   import package_22.class_36;
   import package_22.class_423;
   import package_22.class_463;
   import package_22.class_505;
   import package_29.class_143;
   import package_29.class_144;
   import package_3.class_26;
   import package_3.class_324;
   import package_3.class_345;
   import package_3.class_363;
   import package_3.class_366;
   import package_3.class_370;
   import package_3.class_377;
   import package_3.class_378;
   import package_3.class_384;
   import package_3.class_387;
   import package_3.class_393;
   import package_3.class_444;
   import package_3.class_451;
   import package_3.class_454;
   import package_3.class_462;
   import package_3.class_468;
   import package_3.class_469;
   import package_3.class_484;
   import package_3.class_499;
   import package_3.class_503;
   import package_3.class_512;
   import package_3.class_514;
   import package_3.class_521;
   import package_3.class_527;
   import package_3.class_547;
   import package_3.class_548;
   import package_3.class_553;
   import package_3.class_554;
   import package_34.class_115;
   import package_37.class_75;
   import package_4.class_11;
   import package_40.class_416;
   import package_40.class_491;
   import package_40.class_85;
   import package_41.class_330;
   import package_47.class_522;
   import package_49.class_420;
   import package_5.class_22;
   import package_52.class_168;
   import package_56.class_368;
   import package_56.class_427;
   import package_56.class_429;
   import package_56.class_502;
   import package_56.class_520;
   import package_57.class_171;
   import package_6.class_14;
   import package_61.class_349;
   import package_7.class_104;
   import package_7.class_119;
   import package_7.class_146;
   import package_7.class_15;
   import package_7.class_305;
   import package_7.class_329;
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
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_65
   {
       
      
      private var var_1212:Object;
      
      private var var_1822:Boolean;
      
      private var var_47:class_365;
      
      public function class_65()
      {
         this.var_47 = new class_365();
         super();
         this.var_1212 = new Object();
         this.var_1822 = false;
      }
      
      public final function method_736(param1:class_14) : void
      {
         if(this.var_47.var_1792)
         {
            this.var_47.var_1792.method_736(param1);
         }
      }
      
      private final function method_2543(param1:class_14) : Vector.<class_9>
      {
         var _loc2_:int = param1.method_16();
         var _loc3_:Vector.<class_9> = new Vector.<class_9>();
         this.var_1212[_loc2_] = _loc3_;
         return _loc3_;
      }
      
      public final function method_30(param1:class_14, param2:class_9) : void
      {
         if(!param2)
         {
            class_144.method_865("module: " + getQualifiedClassName(param1),class_143.const_1725);
            return;
         }
         var _loc3_:Vector.<class_9> = this.var_1212[param1.method_16()] as Vector.<class_9>;
         if(null == _loc3_)
         {
            _loc3_ = this.method_2543(param1);
         }
         _loc3_.push(param2);
      }
      
      public final function method_2471(param1:class_14) : Boolean
      {
         var _loc2_:Vector.<class_9> = this.var_1212[param1.method_16()] as Vector.<class_9>;
         return null != _loc2_;
      }
      
      public final function method_664(param1:class_14) : Boolean
      {
         var observer:class_9 = null;
         var module:class_14 = param1;
         var observers:Vector.<class_9> = this.var_1212[module.method_16()] as Vector.<class_9>;
         if(!observers)
         {
            return false;
         }
         var len:int = observers.length;
         var n:int = 0;
         while(n < len)
         {
            observer = observers[n];
            try
            {
               observer.method_248(module);
            }
            catch(e:Error)
            {
               class_144.method_1300(e,class_143.const_1089,"Error in handler " + observer);
            }
            n++;
         }
         return true;
      }
      
      public final function method_2625(param1:class_28) : void
      {
         var _loc2_:class_521 = this.var_47.var_1816;
         var _loc3_:class_548 = new class_548();
         var _loc4_:class_366 = new class_366();
         var _loc5_:class_378 = new class_378(param1);
         var _loc6_:class_376 = new class_376(param1);
         var _loc7_:class_444 = new class_444();
         var _loc8_:class_554 = new class_554();
         var _loc9_:class_377 = new class_377();
         var _loc10_:class_512 = new class_512();
         var _loc11_:class_363 = new class_363();
         var _loc12_:class_324 = new class_324();
         var _loc13_:class_387 = new class_387();
         var _loc14_:class_454 = new class_454();
         var _loc15_:class_527 = new class_527();
         var _loc16_:class_547 = new class_547();
         var _loc17_:class_514 = new class_514();
         var _loc18_:class_462 = new class_462();
         var _loc19_:class_345 = new class_345();
         _loc2_.method_1807();
         class_33.name_12.method_126.name_49(class_514,_loc17_);
         this.method_30(class_450.name_3,_loc12_);
         this.method_30(class_367.name_3,_loc12_);
         this.method_30(class_533.name_3,_loc12_);
         this.method_30(class_509.name_3,_loc12_);
         this.method_30(class_74.name_3,_loc5_);
         this.method_30(class_518.name_3,_loc5_);
         this.method_30(class_404.name_3,_loc5_);
         this.method_30(class_531.name_3,_loc5_);
         this.method_30(class_525.name_3,_loc5_);
         this.method_30(class_437.name_3,_loc5_);
         this.method_30(class_361.name_3,_loc5_);
         this.method_30(class_396.name_3,_loc5_);
         this.method_30(class_545.name_3,this.var_47.var_2083);
         this.method_30(class_381.name_3,this.var_47.var_2083);
         this.method_30(class_353.name_3,this.var_47.var_197);
         this.method_30(class_467.name_3,this.var_47.var_197);
         this.method_30(class_513.name_3,this.var_47.var_197);
         this.method_30(class_421.name_3,this.var_47.var_197);
         this.method_30(class_519.name_3,this.var_47.var_197);
         this.method_30(class_394.name_3,this.var_47.var_197);
         this.method_30(class_501.name_3,this.var_47.var_197);
         this.method_30(class_373.name_3,this.var_47.var_197);
         this.method_30(class_459.name_3,this.var_47.var_197);
         this.method_30(class_485.name_3,this.var_47.var_197);
         this.method_30(class_476.name_3,this.var_47.var_197);
         this.method_30(class_68.name_3,this.var_47.var_197);
         this.method_30(class_383.name_3,this.var_47.var_197);
         this.method_30(class_351.name_3,this.var_47.var_197);
         this.method_30(class_552.name_3,this.var_47.var_197);
         this.method_30(class_452.name_3,this.var_47.var_197);
         this.method_30(class_510.name_3,this.var_47.var_197);
         this.method_30(class_415.name_3,this.var_47.var_197);
         this.method_30(class_364.name_3,this.var_47.var_197);
         this.method_30(class_15.name_3,this.var_47.var_197);
         this.method_30(class_104.name_3,this.var_47.var_197);
         this.method_30(class_74.name_3,_loc6_);
         this.method_30(class_408.name_3,_loc6_);
         this.method_30(class_413.name_3,_loc6_);
         this.method_30(class_349.name_3,new class_469());
         this.method_30(class_497.name_3,_loc4_);
         this.method_30(class_442.name_3,_loc4_);
         this.method_30(class_426.name_3,_loc3_);
         this.method_30(class_453.name_3,_loc3_);
         this.method_30(class_508.name_3,_loc3_);
         this.method_30(class_488.name_3,_loc3_);
         this.method_30(class_461.name_3,_loc3_);
         this.method_30(class_414.name_3,_loc2_);
         this.method_30(class_456.name_3,_loc2_);
         this.method_30(class_430.name_3,_loc2_);
         this.method_30(class_396.name_3,_loc2_);
         this.method_30(class_406.name_3,_loc2_);
         this.method_30(class_431.name_3,_loc2_);
         this.method_30(class_435.name_3,_loc2_);
         this.method_30(class_544.name_3,_loc2_);
         this.method_30(class_492.name_3,_loc2_);
         this.method_30(class_305.name_3,_loc2_);
         this.method_30(class_478.name_3,_loc2_);
         this.method_30(class_447.name_3,_loc2_);
         this.method_30(class_417.name_3,_loc2_);
         this.method_30(class_531.name_3,_loc2_);
         this.method_30(class_15.name_3,_loc2_);
         this.method_30(class_360.name_3,_loc2_);
         this.method_30(class_515.name_3,_loc2_);
         this.method_30(class_413.name_3,_loc2_);
         this.method_30(class_464.name_3,class_537.method_21());
         this.method_30(class_352.name_3,class_368.name_3);
         this.method_30(class_481.name_3,class_368.name_3);
         this.method_30(class_460.name_3,class_368.name_3);
         this.method_30(class_489.name_3,class_520.name_3);
         this.method_30(class_524.name_3,class_520.name_3);
         this.method_30(class_400.name_3,class_520.name_3);
         this.method_30(class_474.name_3,class_520.name_3);
         this.method_30(class_480.name_3,class_520.name_3);
         this.method_30(class_401.name_3,_loc7_);
         this.method_30(class_375.name_3,_loc7_);
         this.method_30(class_445.name_3,_loc7_);
         this.method_30(class_404.name_3,_loc7_);
         this.method_30(class_350.name_3,_loc7_);
         this.method_30(class_404.name_3,_loc15_);
         this.method_30(class_369.name_3,class_502.name_3);
         this.method_30(class_529.name_3,class_502.name_3);
         this.method_30(class_359.name_3,class_427.name_3);
         this.method_30(class_434.name_3,class_427.name_3);
         this.method_30(class_85.name_3,class_11.method_21());
         this.method_30(class_416.name_3,class_11.method_21());
         this.method_30(class_75.name_3,class_11.method_21());
         this.method_30(class_491.name_3,class_11.method_21());
         this.method_30(class_74.name_3,class_11.method_21());
         this.method_30(class_74.name_3,this.var_47.var_625);
         this.method_30(class_511.name_3,this.var_47.var_625);
         this.method_30(class_472.name_3,this.var_47.var_625);
         this.method_30(class_495.name_3,this.var_47.var_625);
         this.method_30(class_483.name_3,this.var_47.var_625);
         this.method_30(class_357.name_3,this.var_47.var_625);
         this.method_30(class_388.name_3,this.var_47.var_625);
         this.method_30(class_549.name_3,this.var_47.var_625);
         this.method_30(class_404.name_3,this.var_47.var_625);
         this.method_30(class_522.name_3,this.var_47.var_2292);
         this.method_30(class_471.name_3,_loc8_);
         this.method_30(class_412.name_3,_loc8_);
         this.method_30(class_539.name_3,_loc8_);
         this.method_30(class_146.name_3,new class_26());
         this.method_30(class_371.name_3,new class_384());
         this.method_30(class_441.name_3,_loc13_);
         this.method_30(class_443.name_3,_loc13_);
         this.method_30(class_347.name_3,new class_484());
         this.method_30(class_362.name_3,_loc9_);
         this.method_30(class_330.name_3,_loc9_);
         this.method_30(class_448.name_3,_loc9_);
         this.method_30(class_104.name_3,_loc9_);
         this.method_30(class_542.name_3,_loc9_);
         this.method_30(class_358.name_3,_loc9_);
         this.method_30(class_406.name_3,_loc10_);
         this.method_30(class_450.name_3,_loc11_);
         this.method_30(class_379.name_3,_loc11_);
         this.method_30(class_75.name_3,_loc11_);
         this.method_30(class_346.name_3,class_429.name_3);
         this.method_30(class_410.name_3,class_429.name_3);
         this.method_30(class_348.name_3,class_429.name_3);
         this.method_30(class_493.name_3,class_429.name_3);
         this.method_30(class_392.name_3,class_429.name_3);
         this.method_30(class_530.name_3,class_429.name_3);
         this.method_30(class_405.name_3,class_429.name_3);
         this.method_30(class_382.name_3,class_429.name_3);
         this.method_30(class_409.name_3,class_429.name_3);
         this.method_30(class_344.name_3,class_429.name_3);
         this.method_30(class_343.name_3,class_429.name_3);
         this.method_30(class_342.name_3,class_429.name_3);
         this.method_30(class_374.name_3,class_429.name_3);
         this.method_30(class_458.name_3,class_429.name_3);
         this.method_30(class_550.name_3,class_429.name_3);
         this.method_30(class_399.name_3,class_429.name_3);
         this.method_30(class_449.name_3,class_429.name_3);
         this.method_30(class_475.name_3,class_429.name_3);
         this.method_30(class_389.name_3,class_429.name_3);
         this.method_30(class_432.name_3,class_429.name_3);
         this.method_30(class_498.name_3,class_429.name_3);
         this.method_30(class_386.name_3,class_429.name_3);
         this.method_30(class_424.name_3,class_429.name_3);
         this.method_30(class_104.name_3,class_429.name_3);
         this.method_30(class_457.name_3,_loc14_);
         this.method_30(class_465.name_3,_loc14_);
         this.method_30(class_418.name_3,_loc14_);
         this.method_30(class_479.name_3,_loc14_);
         this.method_30(class_490.name_3,_loc15_);
         this.method_30(class_438.name_3,_loc15_);
         this.method_30(class_517.name_3,_loc15_);
         this.method_30(class_403.name_3,_loc15_);
         this.method_30(class_40.name_3,class_429.name_3);
         this.method_30(class_30.name_3,class_429.name_3);
         this.method_30(class_470.name_3,_loc16_);
         this.method_30(class_535.name_3,_loc16_);
         this.method_30(class_540.name_3,_loc17_);
         this.method_30(class_532.name_3,_loc17_);
         this.method_30(class_104.name_3,_loc17_);
         this.method_30(class_425.name_3,_loc17_);
         this.method_30(class_466.name_3,_loc17_);
         this.method_30(class_446.name_3,_loc17_);
         this.method_30(class_391.name_3,_loc17_);
         this.method_30(class_477.name_3,_loc17_);
         this.method_30(class_407.name_3,_loc17_);
         this.method_30(class_356.name_3,_loc17_);
         this.method_30(class_523.name_3,_loc18_);
         this.method_30(class_541.name_3,new class_468());
         this.method_30(class_420.name_3,new class_503());
         this.method_30(class_540.name_3,_loc18_);
         this.method_30(class_473.name_3,_loc18_);
         this.method_30(class_536.name_3,_loc18_);
         this.method_30(class_419.name_3,_loc18_);
         this.method_30(class_504.name_3,_loc18_);
         this.method_30(class_380.name_3,_loc18_);
         this.method_30(class_500.name_3,_loc18_);
         this.method_30(class_340.name_3,_loc18_);
         this.method_30(class_494.name_3,_loc18_);
         this.method_30(class_372.name_3,_loc18_);
         this.method_30(class_473.name_3,_loc18_);
         this.method_30(class_536.name_3,_loc18_);
         this.method_30(class_419.name_3,_loc18_);
         this.method_30(class_411.name_3,_loc18_);
         this.method_30(class_395.name_3,_loc18_);
         this.method_30(class_500.name_3,_loc18_);
         this.method_30(class_340.name_3,_loc18_);
         this.method_30(class_372.name_3,_loc18_);
         this.method_30(class_543.name_3,_loc18_);
         this.method_30(class_516.name_3,_loc18_);
         this.method_30(class_385.name_3,_loc18_);
         this.method_30(class_507.name_3,_loc18_);
         this.method_30(class_486.name_3,this.var_47.var_1518);
         this.method_30(class_528.name_3,this.var_47.var_1518);
         this.method_30(class_354.name_3,this.var_47.var_864);
         this.method_30(class_428.name_3,this.var_47.var_864);
         this.method_30(class_353.name_3,this.var_47.var_864);
         this.method_30(class_423.name_3,this.var_47.var_864);
         this.method_30(class_463.name_3,this.var_47.var_864);
         this.method_30(class_36.name_3,this.var_47.var_864);
         this.method_30(class_505.name_3,this.var_47.var_864);
         this.method_30(class_440.name_3,this.var_47.var_2257);
         this.method_30(class_439.name_3,_loc19_);
         this.method_30(class_526.name_3,this.var_47.var_937);
         this.method_30(class_390.name_3,this.var_47.var_937);
         this.method_30(class_506.name_3,this.var_47.var_937);
         this.method_30(class_433.name_3,this.var_47.var_937);
         this.method_30(class_482.name_3,this.var_47.var_937);
         this.method_30(class_104.name_3,this.var_47.var_937);
         this.method_30(class_534.name_3,new class_451());
         this.method_30(class_455.name_3,this.var_47.var_1518);
         this.method_30(class_546.name_3,new class_553());
         this.method_30(class_551.name_3,_loc2_);
         this.method_30(class_402.name_3,_loc2_);
         this.var_1822 = true;
      }
      
      public final function method_2680(param1:class_28) : void
      {
         var _loc2_:class_499 = this.var_47.var_1792 = new class_499(param1);
         var _loc3_:class_393 = new class_393();
         class_33.name_12.method_126.name_49(class_393,_loc3_);
         var _loc4_:class_370 = new class_370();
         class_33.name_12.method_126.name_49(class_370,_loc4_);
         this.method_30(class_329.name_3,_loc2_);
         this.method_30(class_119.name_3,_loc2_);
         this.method_30(class_397.name_3,_loc2_);
         this.method_30(class_538.name_3,_loc2_);
         this.method_30(class_487.name_3,_loc2_);
         this.method_30(class_398.name_3,_loc2_);
         this.method_30(class_496.name_3,_loc3_);
         this.method_30(class_436.name_3,_loc4_);
      }
      
      public function get method_1526() : Boolean
      {
         return this.var_1822;
      }
   }
}
