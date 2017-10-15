package com.bigpoint.seafight.tools
{
   import com.adobe.serialization.json.JSONToken;
   import com.adobe.serialization.json.JSONTokenType;
   import com.adobe.serialization.json.JSONTokenizer;
   import com.bigpoint.seafight.class_24;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.ImageDisplay;
   import com.bigpoint.seafight.view.popups.common.table.CommonHListSkin;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.ui.Mouse;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.events.ToolTipEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import package_103.class_525;
   import package_14.class_200;
   import package_14.class_47;
   import package_16.class_28;
   import package_202.class_1238;
   import package_204.class_1289;
   import package_216.class_1575;
   import package_26.class_1319;
   import package_34.class_1499;
   import package_36.class_100;
   import package_42.class_959;
   import package_47.class_757;
   import package_5.class_123;
   import package_57.class_171;
   import spark.components.List;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Ellipse;
   
   public final class class_46
   {
      
      private static const const_3:ILogger = Log.getLogger("CheckVersion");
      
      private static var name_55:class_46;
       
      
      private var var_354:URLLoader;
      
      private var var_1889:String;
      
      private var var_2154:String;
      
      private var var_1738:String;
      
      private var var_1722:Function;
      
      public function class_46()
      {
         super();
      }
      
      public static function method_2316(param1:String, param2:String, param3:String, param4:Function) : void
      {
         name_55 = new class_46();
         name_55.var_1889 = param1;
         name_55.var_2154 = param2;
         name_55.var_1738 = param3;
         name_55.var_1722 = param4;
      }
      
      public static function get name_3() : class_46
      {
         return name_55;
      }
      
      public final function method_1269() : void
      {
         var _loc1_:URLRequest = class_24.method_434(this.var_2154);
         const_3.warn("Load:" + _loc1_.url);
         this.var_354 = new URLLoader();
         this.var_354.addEventListener(IOErrorEvent.IO_ERROR,this.method_1083);
         this.var_354.addEventListener(Event.COMPLETE,this.method_1010);
         this.var_354.load(_loc1_);
      }
      
      private final function method_1083(param1:IOErrorEvent) : void
      {
         const_3.error("Error loading ctime.txt");
      }
      
      private final function method_1010(param1:Event) : void
      {
         if(this.var_354.data == this.var_1889)
         {
            this.var_1722();
         }
         else
         {
            const_3.error("compile time " + this.var_354.data + " in ctime.txt does not match time " + this.var_1889 + " in SWF");
            delay(1500,this.method_2017);
         }
      }
      
      private final function method_2017() : void
      {
         if(this.var_1738)
         {
            navigateToURL(new URLRequest(this.var_1738),"_self");
         }
         else if(this.var_1722 != null)
         {
            class_154.method_488();
         }
      }
      
      public function set name_31(param1:Function) : void
      {
         this.var_1722 = param1;
      }
      
      public function set method_1475(param1:String) : void
      {
         this.var_1738 = param1;
      }
   }
}
