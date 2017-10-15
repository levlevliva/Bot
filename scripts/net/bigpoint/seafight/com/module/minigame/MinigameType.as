package net.bigpoint.seafight.com.module.minigame
{
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InventoryDragDropController;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tooltips.LeagueButtonTooltip;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueButtonTooltipVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.events.ToolTipEvent;
   import mx.states.State;
   import package_170.class_979;
   import package_210.class_1364;
   import spark.components.HGroup;
   import spark.components.Scroller;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Ellipse;
   
   public final class MinigameType
   {
      
      public static const NONE:int = 0;
      
      public static const HIGH_STRIKER:int = 1;
      
      public static const HIGH_STRIKER_HEXXED:int = 2;
      
      public static const SPEEDRACER:int = 3;
      
      public static const SPEEDRACER_HEXXED:int = 4;
      
      public static const SHEPHERD:int = 5;
      
      public static const SHEPHERD_HEXXED:int = 6;
      
      public static const HIGH_STRIKER_TRAIN:int = 7;
      
      public static const SPEEDRACER_TRAIN:int = 8;
      
      public static const SHEPHERD_TRAIN:int = 9;
      
      public static const HALLOWEEN_BOSS:int = 10;
      
      public static const BIRTHDAY_BOSS:int = 11;
      
      public static const BIRTHDAY_BOSS_HEXXED:int = 12;
      
      public static const CALYPSO:int = 13;
      
      public static const CALYPSO_TRAIN:int = 14;
      
      public static const HILDISVINI:int = 15;
      
      public static const HILDISVINI_TRAIN:int = 16;
      
      public static const HALLOWEEN_BOSS_TRAIN:int = 17;
      
      public static const KRAKENS_LAGOON:int = 18;
      
      public static const KRAKENS_LAGOON_TRAIN:int = 19;
      
      public static const EVIL_SNOWMAN:int = 20;
      
      public static const ELEMENTAL:int = 21;
      
      public static const ELEMENTAL_HEXXED:int = 22;
      
      public static const MINIGAMETYPE__MAX:int = 23;
       
      
      public function MinigameType()
      {
         super();
      }
   }
}
