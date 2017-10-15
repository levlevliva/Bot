package com.bigpoint.seafight.model.vo
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.GroupMapIcon;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.PlayerGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildOverviewLogListItemVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.GuildLogAction;
   import package_101.class_1549;
   import package_14.class_47;
   import package_167.class_1022;
   import package_26.class_1354;
   import package_29.class_565;
   import package_29.class_57;
   import package_5.class_123;
   import package_5.class_43;
   import package_52.class_167;
   import package_89.class_1378;
   import package_90.class_316;
   import spark.components.List;
   
   public final class class_317 extends class_316
   {
      
      public static const const_2341:int = 1;
      
      public static const const_2455:int = 2;
      
      public static const const_690:int = 9;
      
      public static const const_729:int = 10;
      
      public static const const_824:int = 11;
      
      public static const const_2471:int = 16;
      
      public static const const_2856:int = 21;
      
      public static const const_1998:int = 22;
      
      public static const const_2763:int = 23;
      
      public static const const_2367:int = 24;
      
      public static const const_1174:int = 25;
      
      public static const const_2599:int = 27;
      
      public static const const_2767:int = 28;
      
      public static const const_2159:int = 29;
      
      public static const const_1661:int = 30;
      
      public static const const_1626:int = 32;
      
      public static const const_2637:int = 33;
      
      public static const const_1099:int = 34;
      
      public static const const_732:int = 35;
      
      public static const const_2781:int = 36;
      
      public static const const_1515:int = 38;
      
      public static const const_2147:int = 41;
      
      public static const const_2126:int = 42;
      
      public static const const_1984:int = 43;
      
      public static const const_2556:int = 44;
      
      public static const const_2266:int = 45;
      
      public static const const_905:int = 47;
      
      public static const const_1466:int = 53;
      
      public static const const_966:int = 55;
      
      public static const const_199:int = 56;
      
      public static const const_1182:int = 57;
      
      public static const const_752:int = 59;
      
      public static const const_878:int = 60;
       
      
      private var var_2361:Boolean = false;
      
      private var var_1741:int = 0;
      
      private var var_2013:int = 0;
      
      public function class_317()
      {
         super();
      }
      
      public static function method_193(param1:class_316) : class_317
      {
         var _loc2_:class_317 = new class_317();
         _loc2_.var_10 = param1.var_10;
         _loc2_.var_353 = param1.var_353;
         _loc2_.var_121 = param1.var_121;
         _loc2_.var_307 = param1.var_307;
         _loc2_.var_315 = param1.var_315;
         _loc2_.var_13 = param1.var_13;
         return _loc2_;
      }
      
      public static function method_1712(param1:int) : int
      {
         var _loc2_:int = class_167.method_499(param1,class_206.const_218);
         if(_loc2_ == -1)
         {
            _loc2_ = class_167.method_499(param1,class_206.const_26);
         }
         return _loc2_;
      }
      
      public function get method_396() : Boolean
      {
         return this.var_2361;
      }
      
      public function set method_396(param1:Boolean) : void
      {
         this.var_2361 = param1;
      }
      
      public final function method_1714(param1:int, param2:int) : void
      {
         this.var_1741 = param1;
         this.var_2013 = param2;
      }
      
      public function get name_54() : int
      {
         return this.var_1741;
      }
      
      public function get name_51() : int
      {
         return this.var_2013;
      }
      
      public final function method_34(param1:class_316) : void
      {
         this.var_10 = param1.var_10;
         this.var_353 = param1.var_353;
         this.var_121 = param1.var_121;
         this.var_307 = param1.var_307;
         this.var_315 = param1.var_315;
         this.var_13 = param1.var_13;
      }
   }
}
