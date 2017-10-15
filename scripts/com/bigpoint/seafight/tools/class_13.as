package com.bigpoint.seafight.tools
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_317;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.ShipSelectionWindow;
   import com.bigpoint.seafight.view.common.components.VRule;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.popups.common.TextInputSkin;
   import com.bigpoint.seafight.view.popups.quest.npc.component.QuestItemBG;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.reputation.ReputationPopup;
   import com.bigpoint.seafight.view.popups.shipequipment.skins.StatisticListSkin;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBoxButton;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import mx.binding.BindingManager;
   import mx.collections.IList;
   import mx.core.UIComponent;
   import mx.graphics.SolidColorStroke;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.event.class_616;
   import net.bigpoint.seafight.com.module.gems.class_637;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_101.class_511;
   import package_107.class_693;
   import package_123.class_652;
   import package_123.class_837;
   import package_127.class_870;
   import package_14.class_220;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_141.class_804;
   import package_16.class_28;
   import package_17.class_147;
   import package_17.class_29;
   import package_17.class_304;
   import package_17.class_307;
   import package_17.class_323;
   import package_17.class_325;
   import package_17.class_326;
   import package_17.class_328;
   import package_17.class_37;
   import package_17.class_54;
   import package_171.class_1267;
   import package_186.class_1137;
   import package_20.class_33;
   import package_32.class_64;
   import package_36.class_100;
   import package_41.class_330;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1493;
   import package_49.class_137;
   import package_5.class_123;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_300;
   import package_5.class_43;
   import package_50.class_141;
   import package_51.class_148;
   import package_52.class_168;
   import package_52.class_303;
   import package_52.class_309;
   import package_52.class_310;
   import package_52.class_312;
   import package_52.class_314;
   import package_52.class_327;
   import package_54.class_1089;
   import package_56.class_170;
   import package_7.class_305;
   import package_7.class_329;
   import package_7.class_35;
   import package_72.class_203;
   import package_88.class_967;
   import package_89.class_1138;
   import package_9.class_76;
   import package_9.class_91;
   import package_90.class_318;
   import package_92.class_336;
   import package_92.class_944;
   import package_97.class_409;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   public final class class_13
   {
      
      private static const const_544:String = "...";
       
      
      public function class_13()
      {
         super();
      }
      
      public static function method_78(param1:String, param2:Array = null) : String
      {
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc3_:String = class_47.method_22.method_28(param1,true,false);
         if(null == _loc3_)
         {
            return "";
         }
         if(null == param2)
         {
            return _loc3_;
         }
         var _loc4_:int = 1;
         var _loc5_:int = param2.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc7_ = decodeURIComponent(param2[_loc6_]);
            if(_loc7_ == "labels")
            {
               _loc8_ = class_88.const_2 + param2[_loc6_ + 1];
               _loc9_ = param2[_loc6_ + 2];
               _loc7_ = class_47.method_37.method_32(_loc8_,_loc9_);
               _loc6_ = _loc6_ + 2;
            }
            _loc3_ = _loc3_.replace("%" + _loc4_++,_loc7_);
            _loc6_++;
         }
         return _loc3_;
      }
      
      public static function method_796(param1:String) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:String = param1.toLowerCase();
         return _loc2_ == "true" || _loc2_ == "1";
      }
      
      public static function method_2909(param1:int) : String
      {
         var _loc6_:String = null;
         var _loc2_:Boolean = false;
         if(param1 < 0)
         {
            _loc2_ = true;
            param1 = Math.abs(param1);
         }
         var _loc3_:int = Math.round(param1 / 1000 % 60);
         var _loc4_:int = Math.round(Math.floor(param1 / 1000 / 60));
         if(_loc3_ == 60)
         {
            _loc3_ = 0;
         }
         var _loc5_:String = _loc3_ < 10?"0" + String(_loc3_):String(_loc3_);
         _loc6_ = _loc4_ < 10?"0" + String(_loc4_):String(_loc4_);
         var _loc7_:String = _loc6_ + ":" + _loc5_;
         var _loc8_:String = !!_loc2_?"-" + _loc7_:_loc7_;
         return _loc8_;
      }
      
      public static function method_3010(param1:int) : String
      {
         var _loc2_:String = String(int(param1 / (1000 * 60 * 60)));
         var _loc3_:String = String(int(param1 % (1000 * 60 * 60) / (1000 * 60)));
         var _loc4_:String = String(int(param1 % (1000 * 60 * 60) % (1000 * 60) / 1000));
         _loc2_ = _loc2_.length < 2?"0" + _loc2_:_loc2_;
         _loc3_ = _loc3_.length < 2?"0" + _loc3_:_loc3_;
         _loc4_ = _loc4_.length < 2?"0" + _loc4_:_loc4_;
         return _loc2_ + ":" + _loc3_ + ":" + _loc4_;
      }
      
      public static function method_53(param1:Number) : String
      {
         var _loc7_:String = null;
         var _loc2_:* = param1 < 0;
         if(_loc2_)
         {
            param1 = -param1;
         }
         var _loc3_:String = param1.toString();
         var _loc4_:String = "";
         var _loc5_:String = method_1287();
         while(_loc3_.length > 3)
         {
            _loc7_ = _loc3_.substr(-3);
            _loc3_ = _loc3_.substr(0,_loc3_.length - 3);
            _loc4_ = _loc5_ + _loc7_ + _loc4_;
         }
         var _loc6_:String = !!_loc3_.length?_loc4_ = _loc3_ + _loc4_:_loc4_;
         return !!_loc2_?"-" + _loc6_:_loc6_;
      }
      
      private static function method_1287() : String
      {
         switch(class_51.var_129)
         {
            case "en":
            case "us":
            case "ja":
            case "zh":
            case "ko":
               return ",";
            default:
               return ".";
         }
      }
      
      public static function method_963(param1:String) : String
      {
         return "<span color=\"#FFFFFF;\" fontWeight=\"bold\">" + param1 + "</span>";
      }
      
      public static function method_2749(param1:int, param2:int) : String
      {
         var _loc3_:String = param1.toString();
         while(_loc3_.length < param2)
         {
            _loc3_ = "0" + _loc3_;
         }
         return _loc3_;
      }
      
      public static function method_623(param1:String) : String
      {
         return param1.replace(/^\s*/gim,"");
      }
      
      public static function method_1127(param1:String) : String
      {
         return param1.replace(/^\s*|\s*$/gim,"");
      }
      
      public static function method_688(param1:Number, param2:int = 2, param3:Boolean = true) : String
      {
         var _loc4_:String = param1.toFixed(param2);
         if(!param3)
         {
            return _loc4_;
         }
         var _loc5_:int = _loc4_.indexOf(".");
         if(_loc5_ > -1)
         {
            _loc4_ = _loc4_.replace(/\.*0*$/,"");
         }
         return _loc4_;
      }
      
      public static function method_668(param1:Object) : String
      {
         var _loc2_:String = getQualifiedClassName(param1);
         return _loc2_.substr(_loc2_.indexOf("::") + "::".length);
      }
      
      public static function method_2407(param1:String, param2:int, param3:TextField = null) : String
      {
         var _loc7_:String = null;
         var _loc4_:TextField = !!param3?param3:new TextField();
         _loc4_.text = const_544;
         _loc4_.width = param2;
         var _loc5_:Number = _loc4_.textWidth;
         _loc4_.text = param1 + const_544;
         if(_loc4_.textWidth < _loc4_.width - _loc5_)
         {
            _loc4_.text = param1.substr(0,param1.length);
            return param1;
         }
         _loc4_.text = const_544;
         var _loc6_:int = 0;
         while(_loc4_.textWidth < _loc4_.width - _loc5_)
         {
            _loc7_ = param1.substr(0,_loc6_);
            _loc4_.text = _loc7_ + const_544;
            _loc6_++;
         }
         if(_loc6_ >= param1.length - 1)
         {
            _loc4_.text = param1;
         }
         _loc4_.width = param2 + _loc5_;
         return _loc4_.text;
      }
   }
}
