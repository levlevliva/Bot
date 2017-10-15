package com.bigpoint.seafight.view.popups.groupwindow.invitationpopup
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1092;
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetStatsComponentVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetTrainerStatsListItemVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankItemListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiButtonVO;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.common.SlotsIndicator;
   import com.bigpoint.seafight.view.popups.shipselection.vo.SelectionVListItemGemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemStatListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleWindowSkin;
   import com.greensock.TweenLite;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import package_104.class_448;
   import package_118.class_1445;
   import package_118.class_539;
   import package_14.class_47;
   import package_14.class_51;
   import package_190.class_1181;
   import package_190.class_1469;
   import package_45.class_110;
   import package_51.class_974;
   import package_6.class_14;
   import spark.components.Label;
   
   public final class OpenGroupInvitationWindowCommand
   {
       
      
      public function OpenGroupInvitationWindowCommand()
      {
         super();
      }
      
      public final function execute(param1:String, param2:Function, param3:Function) : void
      {
         var _loc4_:MultiPopupVo = new MultiPopupVo();
         _loc4_.buttons = new Vector.<MultiButtonVO>();
         _loc4_.buttons.push(new MultiButtonVO(0,class_47.method_22.method_20("accept"),param2));
         _loc4_.buttons.push(new MultiButtonVO(1,class_47.method_22.method_20("decline"),param3));
         _loc4_.headline = class_47.method_22.method_20("invitation");
         _loc4_.text = class_47.method_22.method_20("group_invitation_text").replace("%NAME%",param1);
         var _loc5_:class_332 = new class_332(class_332.const_12);
         _loc5_.var_27 = GroupInvitationPopup;
         _loc5_.var_51 = ResizeableExtendedWindow;
         _loc5_.var_74 = SimpleWindowSkin;
         _loc5_.var_28 = GroupInvitationWindowController;
         _loc5_.var_72 = false;
         _loc5_.name_13 = class_110.const_862;
         _loc5_.var_36 = 280;
         _loc5_.var_31 = 240;
         var _loc6_:int = (_loc4_.buttons.length - 1) * 38;
         _loc5_.var_31 = _loc5_.var_31 + _loc6_;
         _loc5_.var_30 = _loc4_;
         CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc5_));
      }
   }
}
