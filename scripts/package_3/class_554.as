package package_3
{
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButton;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetsInventory;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingInfoTooltipListItemSubItemVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingInfoTooltipListItemVo;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MetaCurrencyIndicator;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenu;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityTriggerEvent;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenPuzzleWindow;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.event.EventType;
   import net.bigpoint.seafight.com.module.guild.GuildLogAction;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import package_110.class_903;
   import package_118.class_412;
   import package_118.class_471;
   import package_118.class_539;
   import package_130.class_660;
   import package_14.class_47;
   import package_14.class_88;
   import package_156.class_654;
   import package_167.class_1024;
   import package_190.class_1181;
   import package_34.class_1343;
   import package_41.class_84;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_5.class_214;
   import package_6.class_14;
   import package_99.class_810;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VScrollBar;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.events.IndexChangeEvent;
   
   public final class class_554 extends class_10
   {
       
      
      private var var_732:GameActivityMenu;
      
      public function class_554()
      {
         super();
         this.name_16();
      }
      
      private final function name_16() : void
      {
         method_23(class_412.name_3,this.method_2279);
         method_23(class_471.name_3,this.method_2433);
         method_23(class_539.name_3,this.method_1609);
         this.var_732 = class_47.method_24.var_12.subMenuContainer.getMenu(class_214.const_75) as GameActivityMenu;
         this.var_732.addEventListener(GameActivityTriggerEvent.GAME_ACTIVITY_TRIGGER,this.method_315);
      }
      
      private final function method_2279(param1:class_14) : void
      {
         var _loc2_:class_412 = param1 as class_412;
         this.var_732.open(_loc2_.var_20,_loc2_.var_86,_loc2_.var_464);
         var _loc3_:SubMenuContainer = class_47.method_24.var_12.subMenuContainer;
         if((this.var_732 == null || this.var_732.method_273() == false) && this.var_732.gameActivityArray != null && this.var_732.gameActivityArray.length > 0)
         {
            _loc3_.switchMenu(class_214.const_75,false);
            _loc3_.getMenu(class_214.const_75).method_440 = true;
         }
      }
      
      private final function method_2433(param1:class_14) : void
      {
         var _loc2_:class_471 = param1 as class_471;
         this.var_732.close(_loc2_.var_86);
      }
      
      private final function method_1609(param1:class_14) : void
      {
         this.var_732.update(param1 as class_539);
      }
      
      private final function method_315(param1:GameActivityTriggerEvent) : void
      {
         switch(param1.eventType)
         {
            case EventType.PUZZLE_PIECES:
            case EventType.PUZZLE_PIECES_CHILLING_BROOD:
               new CmdSL_OpenPuzzleWindow().execute();
         }
         class_1343.name_3.method_1795(param1.eventId,param1.eventType);
      }
   }
}
