package package_3
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.TeamScoreWindow;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.lootpopup.vo.LootPopupVo;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusItemVO;
   import com.bigpoint.seafight.view.popups.teamscore.AbstractArenaPopupController;
   import com.bigpoint.seafight.view.popups.teamscore.TeamMembersScorePopupController;
   import com.bigpoint.seafight.view.popups.teamscore.component.TeamMembersScorePopup;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScorePopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenLootWindow;
   import com.greensock.loading.LoaderStatus;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_14.class_47;
   import package_20.class_33;
   import package_210.class_1364;
   import package_210.class_1474;
   import package_29.class_565;
   import package_39.class_80;
   import package_41.class_93;
   import package_45.class_110;
   import package_49.class_1320;
   import package_49.class_137;
   import package_49.class_140;
   import package_49.class_420;
   import package_5.class_984;
   import package_51.class_974;
   import package_6.class_14;
   import package_72.class_203;
   import spark.components.TitleWindow;
   import spark.primitives.Graphic;
   
   public final class class_503 extends class_10
   {
       
      
      public function class_503()
      {
         super();
         method_23(class_420.name_3,this.method_2331);
      }
      
      private final function method_2331(param1:class_14) : void
      {
         var _loc2_:class_420 = param1 as class_420;
         if(_loc2_.var_870 == class_1320.const_1224)
         {
            return;
         }
         if(_loc2_.var_870 == class_1320.const_747)
         {
            return;
         }
         var _loc3_:LootPopupVo = new LootPopupVo();
         _loc3_.loot = _loc2_.name_9;
         _loc3_.lootWindowType = _loc2_.var_320;
         _loc3_.lootContextType = _loc2_.var_870;
         _loc3_.id = _loc2_.name_7;
         _loc3_.image = this.method_312(_loc2_.var_870,_loc2_.name_7);
         StatelessCMD.invoke(CmdSL_OpenLootWindow,_loc3_);
      }
      
      private final function method_312(param1:int, param2:int) : String
      {
         switch(param1)
         {
            case class_1320.const_1238:
               if(param2 >= 1 && param2 <= 24)
               {
                  return "images/lootpopupimages/" + "puzzle" + class_984.const_9;
               }
               break;
            case class_1320.const_313:
               return "images/lootpopupimages/" + "arena_civil_war" + class_984.const_9;
            case class_1320.const_1789:
               return "images/lootpopupimages/" + "pumpkin" + class_984.const_9;
         }
         return "images/lootpopupimages/" + "standard" + class_984.const_9;
      }
   }
}
