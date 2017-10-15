package com.bigpoint.seafight.model.vo
{
   import com.bigpoint.seafight.view.popups.common.tooltip.TooltipBackground;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_5.class_12;
   import package_5.class_43;
   import spark.filters.DropShadowFilter;
   
   public final class KeysVO
   {
      
      public static const NAME_KEY_UP:String = "up";
      
      public static const NAME_KEY_DOWN:String = "down";
      
      public static const NAME_KEY_LEFT:String = "left";
      
      public static const NAME_KEY_RIGHT:String = "right";
      
      public static const NAME_KEY_ATTACK:String = "attack";
      
      public static const NAME_KEY_ABORT_ATTACK:String = "attackCancel";
      
      public static const NAME_KEY_SWITCH_ENEMY:String = "cycleTargets";
      
      public static const NAME_KEY_SET_COURSE:String = "moveToCenter";
      
      public static const NAME_KEY_BOARD:String = "board";
      
      public static const NAME_KEY_MAP_CENTER_SHIP:String = "toMyShip";
      
      public static const NAME_KEY_REPAIR:String = "repair";
      
      public static const NAME_KEY_NAVIGATE:String = "navigate";
      
      public static const NAME_KEY_MENU_CANNONBALLS:String = "changeBalls";
      
      public static const NAME_KEY_MENU_HARPOONS:String = "changeHarps";
      
      public static const NAME_KEY_MENU_BONUSMAPS:String = "changeVoodoo";
      
      public static const NAME_KEY_MENU_ACTIONITEMS:String = "changeActItms";
      
      public static const NAME_KEY_MENU_FIREWORKS:String = "changeFireMenu";
      
      public static const NAME_KEY_PULL_MAP:String = "mapScrollKey";
       
      
      public var up:int = 38;
      
      public var down:int = 40;
      
      public var left:int = 37;
      
      public var right:int = 39;
      
      public var attack:int = 45;
      
      public var attackCancel:int = 33;
      
      public var cycleTargets:int = 35;
      
      public var moveToCenter:int = 67;
      
      public var board:int = 46;
      
      public var toMyShip:int = 36;
      
      public var repair:int = 34;
      
      public var navigate:int = 78;
      
      public var mapScrollKey:int = 17;
      
      public var changeBalls:int = 66;
      
      public var changeHarps:int = 72;
      
      public var changeVoodoo:int = 86;
      
      public var changeActItms:int = 73;
      
      public var changeFireMenu:int = 69;
      
      public var quickBelt_0:int = 49;
      
      public var quickBelt_1:int = 50;
      
      public var quickBelt_2:int = 51;
      
      public var quickBelt_3:int = 52;
      
      public var quickBelt_4:int = 53;
      
      public var quickBelt_5:int = 54;
      
      public var quickBelt_6:int = 55;
      
      public var quickBelt_7:int = 56;
      
      public var quickBelt_8:int = 57;
      
      public var quickBelt_9:int = 48;
      
      public var reload:int = 116;
      
      public var mapChangeAccomplish:int = 13;
      
      public var keyArr:Array;
      
      public function KeysVO()
      {
         this.keyArr = new Array(this.up,this.down,this.left,this.right,this.attack,this.attackCancel,this.cycleTargets,this.moveToCenter,this.board,this.toMyShip,this.repair,this.navigate,this.changeBalls,this.changeHarps,this.changeVoodoo,this.mapScrollKey,this.changeActItms,this.quickBelt_0,this.quickBelt_1,this.quickBelt_2,this.quickBelt_3,this.quickBelt_4,this.quickBelt_5,this.quickBelt_6,this.quickBelt_7,this.quickBelt_8,this.quickBelt_9,this.reload,this.mapChangeAccomplish);
         super();
      }
   }
}
