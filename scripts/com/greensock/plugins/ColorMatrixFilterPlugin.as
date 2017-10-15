package com.greensock.plugins
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.hslider.HSliderSkinInnerClass0;
   import com.bigpoint.seafight.view.common.skins.hslider.target;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentItem;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BorderType0;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusItemVO;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.greensock.TweenLite;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Matrix;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.mx_internal;
   import mx.graphics.GradientEntry;
   import mx.logging.LogEvent;
   import mx.logging.LogEventLevel;
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
   import package_140.class_534;
   import package_140.class_540;
   import package_140.class_546;
   import package_141.class_536;
   import package_142.class_541;
   import package_143.class_542;
   import package_144.class_543;
   import package_148.class_820;
   import package_16.class_28;
   import package_17.class_37;
   import package_17.class_376;
   import package_17.class_537;
   import package_174.class_1374;
   import package_174.class_1530;
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
   import package_25.class_291;
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
   import package_42.class_1034;
   import package_45.class_110;
   import package_46.class_975;
   import package_47.class_522;
   import package_47.class_643;
   import package_49.class_137;
   import package_49.class_420;
   import package_49.class_880;
   import package_55.class_164;
   import package_56.class_368;
   import package_56.class_427;
   import package_56.class_429;
   import package_56.class_502;
   import package_56.class_520;
   import package_6.class_14;
   import package_61.class_349;
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
   import package_88.class_1091;
   import package_88.class_966;
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
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   use namespace mx_internal;
   
   public final class ColorMatrixFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1.0;
      
      private static var _propNames:Array = [];
      
      protected static var _idMatrix:Array = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0];
      
      protected static var _lumR:Number = 0.212671;
      
      protected static var _lumG:Number = 0.71516;
      
      protected static var _lumB:Number = 0.072169;
       
      
      protected var _matrix:Array;
      
      protected var _matrixTween:EndArrayPlugin;
      
      public function ColorMatrixFilterPlugin()
      {
         super();
         this.propName = "colorMatrixFilter";
         this.overwriteProps = ["colorMatrixFilter"];
      }
      
      public static function colorize(param1:Array, param2:Number, param3:Number = 1) : Array
      {
         if(isNaN(param2))
         {
            return param1;
         }
         if(isNaN(param3))
         {
            param3 = 1;
         }
         var _loc4_:Number = (param2 >> 16 & 255) / 255;
         var _loc5_:Number = (param2 >> 8 & 255) / 255;
         var _loc6_:Number = (param2 & 255) / 255;
         var _loc7_:Number = 1 - param3;
         var _loc8_:Array = [_loc7_ + param3 * _loc4_ * _lumR,param3 * _loc4_ * _lumG,param3 * _loc4_ * _lumB,0,0,param3 * _loc5_ * _lumR,_loc7_ + param3 * _loc5_ * _lumG,param3 * _loc5_ * _lumB,0,0,param3 * _loc6_ * _lumR,param3 * _loc6_ * _lumG,_loc7_ + param3 * _loc6_ * _lumB,0,0,0,0,0,1,0];
         return applyMatrix(_loc8_,param1);
      }
      
      public static function setThreshold(param1:Array, param2:Number) : Array
      {
         if(isNaN(param2))
         {
            return param1;
         }
         var _loc3_:Array = [_lumR * 256,_lumG * 256,_lumB * 256,0,-256 * param2,_lumR * 256,_lumG * 256,_lumB * 256,0,-256 * param2,_lumR * 256,_lumG * 256,_lumB * 256,0,-256 * param2,0,0,0,1,0];
         return applyMatrix(_loc3_,param1);
      }
      
      public static function setHue(param1:Array, param2:Number) : Array
      {
         if(isNaN(param2))
         {
            return param1;
         }
         param2 = param2 * (Math.PI / 180);
         var _loc3_:Number = Math.cos(param2);
         var _loc4_:Number = Math.sin(param2);
         var _loc5_:Array = [_lumR + _loc3_ * (1 - _lumR) + _loc4_ * -_lumR,_lumG + _loc3_ * -_lumG + _loc4_ * -_lumG,_lumB + _loc3_ * -_lumB + _loc4_ * (1 - _lumB),0,0,_lumR + _loc3_ * -_lumR + _loc4_ * 0.143,_lumG + _loc3_ * (1 - _lumG) + _loc4_ * 0.14,_lumB + _loc3_ * -_lumB + _loc4_ * -0.283,0,0,_lumR + _loc3_ * -_lumR + _loc4_ * -(1 - _lumR),_lumG + _loc3_ * -_lumG + _loc4_ * _lumG,_lumB + _loc3_ * (1 - _lumB) + _loc4_ * _lumB,0,0,0,0,0,1,0,0,0,0,0,1];
         return applyMatrix(_loc5_,param1);
      }
      
      public static function setBrightness(param1:Array, param2:Number) : Array
      {
         if(isNaN(param2))
         {
            return param1;
         }
         param2 = param2 * 100 - 100;
         return applyMatrix([1,0,0,0,param2,0,1,0,0,param2,0,0,1,0,param2,0,0,0,1,0,0,0,0,0,1],param1);
      }
      
      public static function setSaturation(param1:Array, param2:Number) : Array
      {
         if(isNaN(param2))
         {
            return param1;
         }
         var _loc3_:Number = 1 - param2;
         var _loc4_:Number = _loc3_ * _lumR;
         var _loc5_:Number = _loc3_ * _lumG;
         var _loc6_:Number = _loc3_ * _lumB;
         var _loc7_:Array = [_loc4_ + param2,_loc5_,_loc6_,0,0,_loc4_,_loc5_ + param2,_loc6_,0,0,_loc4_,_loc5_,_loc6_ + param2,0,0,0,0,0,1,0];
         return applyMatrix(_loc7_,param1);
      }
      
      public static function setContrast(param1:Array, param2:Number) : Array
      {
         if(isNaN(param2))
         {
            return param1;
         }
         param2 = param2 + 0.01;
         var _loc3_:Array = [param2,0,0,0,128 * (1 - param2),0,param2,0,0,128 * (1 - param2),0,0,param2,0,128 * (1 - param2),0,0,0,1,0];
         return applyMatrix(_loc3_,param1);
      }
      
      public static function applyMatrix(param1:Array, param2:Array) : Array
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(!(param1 is Array) || !(param2 is Array))
         {
            return param2;
         }
         var _loc3_:Array = [];
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < 4)
         {
            _loc7_ = 0;
            while(_loc7_ < 5)
            {
               if(_loc7_ == 4)
               {
                  _loc5_ = param1[_loc4_ + 4];
               }
               else
               {
                  _loc5_ = 0;
               }
               _loc3_[_loc4_ + _loc7_] = param1[_loc4_] * param2[_loc7_] + param1[_loc4_ + 1] * param2[_loc7_ + 5] + param1[_loc4_ + 2] * param2[_loc7_ + 10] + param1[_loc4_ + 3] * param2[_loc7_ + 15] + _loc5_;
               _loc7_ = _loc7_ + 1;
            }
            _loc4_ = _loc4_ + 5;
            _loc6_ = _loc6_ + 1;
         }
         return _loc3_;
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         _target = param1;
         _type = ColorMatrixFilter;
         var _loc4_:Object = param2;
         initFilter({
            "remove":param2.remove,
            "index":param2.index,
            "addFilter":param2.addFilter
         },new ColorMatrixFilter(_idMatrix.slice()),_propNames);
         this._matrix = ColorMatrixFilter(_filter).matrix;
         var _loc5_:Array = [];
         if(_loc4_.matrix != null && _loc4_.matrix is Array)
         {
            _loc5_ = _loc4_.matrix;
         }
         else
         {
            if(_loc4_.relative == true)
            {
               _loc5_ = this._matrix.slice();
            }
            else
            {
               _loc5_ = _idMatrix.slice();
            }
            _loc5_ = setBrightness(_loc5_,_loc4_.brightness);
            _loc5_ = setContrast(_loc5_,_loc4_.contrast);
            _loc5_ = setHue(_loc5_,_loc4_.hue);
            _loc5_ = setSaturation(_loc5_,_loc4_.saturation);
            _loc5_ = setThreshold(_loc5_,_loc4_.threshold);
            if(!isNaN(_loc4_.colorize))
            {
               _loc5_ = colorize(_loc5_,_loc4_.colorize,_loc4_.amount);
            }
         }
         this._matrixTween = new EndArrayPlugin();
         this._matrixTween.init(this._matrix,_loc5_);
         return true;
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         this._matrixTween.changeFactor = param1;
         ColorMatrixFilter(_filter).matrix = this._matrix;
         super.changeFactor = param1;
      }
   }
}
