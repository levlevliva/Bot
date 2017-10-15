package com.bigpoint.seafight.view.mainmenu
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import flash.utils.IDataOutput;
   import mx.collections.ArrayList;
   
   public final class MainMenuButtonVo
   {
      
      private static var AUTO_INC:int = 0;
      
      public static const BUTTON_UNDEFINED:int = AUTO_INC++;
      
      public static const BUTTON_CHAT:int = AUTO_INC++;
      
      public static const BUTTON_SOCIALS:int = AUTO_INC++;
      
      public static const BUTTON_GROUP:int = AUTO_INC++;
      
      public static const BUTTON_MATEYS:int = AUTO_INC++;
      
      public static const BUTTON_NAVIGATOR:int = AUTO_INC++;
      
      public static const BUTTON_LEAGUE:int = AUTO_INC++;
      
      public static const BUTTON_GUILD:int = AUTO_INC++;
      
      public static const BUTTON_GUILD_SEARCH:int = AUTO_INC++;
      
      public static const BUTTON_GUILD_PLAYER:int = AUTO_INC++;
      
      public static const BUTTON_GEMFORGE:int = AUTO_INC++;
      
      public static const BUTTON_SPY:int = AUTO_INC++;
      
      public static const BUTTON_CAULDRON:int = AUTO_INC++;
      
      public static const BUTTON_EVENTS:int = AUTO_INC++;
      
      public static const BUTTON_EVENTS_MAIN:int = AUTO_INC++;
      
      public static const BUTTON_EVENTS_MONTHLY_LOGIN_BONUS:int = AUTO_INC++;
      
      public static const BUTTON_EVENTS_REPUTATION_WINDOW:int = AUTO_INC++;
      
      public static const BUTTON_SHIP:int = AUTO_INC++;
      
      public static const BUTTON_SHIP_MAIN:int = AUTO_INC++;
      
      public static const BUTTON_SHIP_CASTLE:int = AUTO_INC++;
      
      public static const BUTTON_BOARDING:int = AUTO_INC++;
      
      public static const BUTTON_QUESTS:int = AUTO_INC++;
      
      public static const BUTTON_OPTIONS:int = AUTO_INC++;
      
      public static const BUTTON_LOGOUT:int = AUTO_INC++;
       
      
      public var id:int;
      
      public var iconName:String;
      
      public var tooltip:String;
      
      public var enabled:Boolean;
      
      public var notify:Boolean;
      
      public var options:ArrayList;
      
      public function MainMenuButtonVo(param1:int, param2:String, param3:String, param4:Boolean, param5:Boolean, param6:ArrayList = null)
      {
         super();
         this.id = param1;
         this.iconName = param2;
         this.tooltip = param3;
         this.enabled = param4;
         this.notify = param5;
         this.options = param6;
      }
   }
}
