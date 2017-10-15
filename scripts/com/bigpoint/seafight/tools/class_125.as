package com.bigpoint.seafight.tools
{
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_317;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InitiateItemTransferEvent;
   import com.bigpoint.seafight.view.popups.event.modules.faction.getFactionTeamName;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.inventory.GemLevelsComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.gemwindow.CmdSL_OpenGemWindow;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.globalization.DateTimeFormatter;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.controls.Spacer;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.guild.class_821;
   import net.bigpoint.seafight.com.module.guild.class_901;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import org.osflash.signals.IOnceSignal;
   import package_100.class_1186;
   import package_100.class_598;
   import package_101.class_608;
   import package_110.class_680;
   import package_121.class_841;
   import package_123.class_1032;
   import package_123.class_837;
   import package_14.class_102;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_88;
   import package_14.class_96;
   import package_152.class_668;
   import package_16.class_28;
   import package_170.class_979;
   import package_171.class_1316;
   import package_179.class_1064;
   import package_187.class_1199;
   import package_34.class_1499;
   import package_41.class_84;
   import package_41.class_89;
   import package_43.class_235;
   import package_43.class_272;
   import package_46.class_1455;
   import package_47.class_881;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_52.class_1096;
   import package_69.class_978;
   import package_72.class_203;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   public final class class_125
   {
      
      private static var var_1413:DateTimeFormatter = new DateTimeFormatter("en-US");
      
      private static var var_1073:DateTimeFormatter = new DateTimeFormatter("en-US");
      
      public static const const_889:int = 1000;
      
      public static const const_474:int = 60000.0;
      
      public static const const_341:int = 3600000.0;
      
      public static const const_570:int = 8.64E7;
      
      public static const const_541:String = class_47.method_22.method_28("shortseconds",true,false) == ""?"%1s":class_47.method_22.method_28("shortseconds");
      
      public static const const_708:String = class_47.method_22.method_28("shortminutes",true,false) == ""?"%1min":class_47.method_22.method_28("shortminutes");
      
      public static const const_891:String = class_47.method_22.method_28("shorthours",true,false) == ""?"%1h":class_47.method_22.method_28("shorthours");
      
      public static const const_754:String = class_47.method_22.method_28("shortdays",true,false) == ""?"%1d":class_47.method_22.method_28("shortdays");
      
      private static const const_917:String = class_47.method_22.method_28("countdown_format_dh",true,false) == null?"%dd %hh":class_47.method_22.method_28("countdown_format_dh");
      
      private static const const_661:String = class_47.method_22.method_28("countdown_format_hm",true,false) == null?"%hh %mm":class_47.method_22.method_28("countdown_format_hm");
      
      private static const const_835:String = class_47.method_22.method_28("countdown_format_ms",true,false) == null?"%mm %ss":class_47.method_22.method_28("countdown_format_ms");
      
      private static const const_904:String = class_47.method_22.method_28("countdown_format_s",true,false) == null?"%ss":class_47.method_22.method_28("countdown_format_s");
      
      private static const const_1557:String = "%d";
      
      private static const const_1136:String = "%h";
      
      private static const const_1176:String = "%m";
      
      private static const const_963:String = "%s";
       
      
      public function class_125()
      {
         super();
      }
      
      public static function method_178(param1:Number) : String
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         _loc2_ = param1 / const_570;
         _loc3_ = Number(_loc2_) * Number(const_570);
         _loc4_ = (param1 - _loc3_) / const_341;
         _loc5_ = int((param1 - _loc3_ - _loc4_ * const_341) / const_474);
         var _loc6_:int = int((param1 - _loc3_ - _loc4_ * const_341 - _loc5_ * const_474) / const_889);
         return method_845(_loc2_,_loc4_,_loc5_,_loc6_);
      }
      
      public static function method_845(param1:int, param2:int, param3:int, param4:int) : String
      {
         if(param1 > 0)
         {
            return const_917.replace(const_1557,param1).replace(const_1136,param2);
         }
         if(param2 > 0)
         {
            return const_661.replace(const_1136,param2).replace(const_1176,param3);
         }
         if(param3 > 0)
         {
            return const_835.replace(const_1176,param3).replace(const_963,param4);
         }
         if(param4 > 0)
         {
            return const_904.replace(const_963,param4);
         }
         return "";
      }
      
      public static function method_249(param1:Number) : String
      {
         var _loc2_:Date = class_102.method_249(param1);
         var _loc3_:String = class_47.method_22.method_20("dateformat");
         var_1073.setDateTimePattern(_loc3_ + " HH:mm:ss");
         return var_1073.format(_loc2_);
      }
      
      public static function method_285(param1:Number) : String
      {
         var _loc2_:Date = class_102.method_249(param1);
         var _loc3_:String = class_47.method_22.method_20("dateformat");
         var_1073.setDateTimePattern(_loc3_);
         return var_1073.format(_loc2_);
      }
      
      public static function method_2265() : String
      {
         return class_47.method_37.method_32(class_88.const_806,new Date().month.toString());
      }
      
      public static function method_2932(param1:Number) : Number
      {
         var _loc2_:Date = new Date(param1);
         var _loc3_:Date = new Date();
         var _loc4_:Number = (_loc2_.getTime() - _loc3_.getTime()) / const_341;
         return _loc4_;
      }
      
      public static function method_575(param1:Number) : Number
      {
         var _loc2_:Date = new Date(param1);
         var _loc3_:Date = new Date();
         var _loc4_:Number = _loc2_.getTime() - _loc3_.getTime();
         return _loc4_;
      }
      
      public static function method_512(param1:Number, param2:Boolean = true) : String
      {
         var _loc11_:String = null;
         var _loc3_:Number = param1;
         var _loc4_:Number = Math.floor(_loc3_ / 1000);
         var _loc5_:Number = Math.floor(_loc4_ / 60);
         var _loc6_:Number = Math.floor(_loc5_ / 60);
         if(isNaN(_loc6_))
         {
            _loc11_ = String.fromCharCode(8734);
            return _loc11_;
         }
         _loc4_ = _loc4_ % 60;
         _loc5_ = _loc5_ % 60;
         var _loc7_:String = String(Math.abs(_loc4_));
         var _loc8_:String = String(Math.abs(_loc5_));
         var _loc9_:String = String(Math.abs(_loc6_));
         if(_loc7_.length <= 1)
         {
            _loc7_ = "0" + _loc7_;
         }
         if(_loc8_.length <= 1)
         {
            _loc8_ = "0" + _loc8_;
         }
         if(_loc9_.length <= 1)
         {
            _loc9_ = "0" + _loc9_;
         }
         var _loc10_:String = !!param2?_loc9_ + ":" + _loc8_ + ":" + _loc7_:_loc9_ + ":" + _loc8_;
         return _loc10_;
      }
      
      public static function method_2225(param1:Number) : String
      {
         var _loc2_:Date = new Date(param1);
         var _loc3_:Date = new Date();
         var _loc4_:Number = _loc2_.getTime() - _loc3_.getTime();
         return method_512(_loc4_);
      }
      
      public static function method_207(param1:Number, param2:Boolean = true) : String
      {
         var _loc4_:Date = class_102.method_249(param1);
         _loc4_.setTime(param1);
         var_1413.setDateTimePattern(!!_loc4_.getUTCHours()?"hh:" + "mm:ss":"mm:ss");
         return !!param2?var_1413.format(_loc4_) + "." + method_1174(_loc4_.getUTCMilliseconds()):var_1413.format(_loc4_);
      }
      
      private static function method_1174(param1:int) : String
      {
         if(param1 < 10)
         {
            return "00" + param1;
         }
         if(param1 < 100)
         {
            return "0" + param1;
         }
         return param1.toString();
      }
   }
}
