package package_4
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_233;
   import com.bigpoint.seafight.tools.class_82;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropRemoveCommand;
   import com.bigpoint.seafight.tools.dragging.commands.IDragDropMoveCommand;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.event.component.ToggleButtonGroup;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowUserModel;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuOverviewTab;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandMenuOverviewTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusItemVO;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_149;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import com.greensock.TimelineMax;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.filters.DropShadowFilter;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.event.EventType;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import package_10.class_18;
   import package_10.class_38;
   import package_108.class_596;
   import package_108.class_755;
   import package_11.class_130;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_742;
   import package_111.class_745;
   import package_116.class_405;
   import package_122.class_656;
   import package_14.class_102;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_94;
   import package_14.class_96;
   import package_15.class_273;
   import package_15.class_48;
   import package_190.class_1181;
   import package_28.class_56;
   import package_3.class_10;
   import package_34.class_73;
   import package_37.class_75;
   import package_37.class_81;
   import package_38.class_79;
   import package_39.class_80;
   import package_40.class_83;
   import package_40.class_85;
   import package_40.class_86;
   import package_41.class_84;
   import package_47.class_128;
   import package_47.class_135;
   import package_47.class_930;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_48.class_996;
   import package_49.class_137;
   import package_49.class_140;
   import package_5.class_133;
   import package_51.class_1355;
   import package_6.class_14;
   import package_7.class_74;
   import package_9.class_76;
   import package_9.class_91;
   import package_95.class_341;
   import spark.components.Label;
   import spark.components.List;
   import spark.layouts.VerticalLayout;
   
   public final class class_11 extends class_10
   {
      
      public static const const_882:String = "EVENT_USER_SELECTED";
      
      private static const const_1367:Number = 2000;
      
      private static var name_55:class_11;
       
      
      private var var_1895:int;
      
      private var var_1183:Boolean = false;
      
      private var var_2319:Number = 0;
      
      private var var_1238:class_79;
      
      private var var_973:class_82;
      
      private var var_102:UserInterface;
      
      public function class_11()
      {
         super();
         method_23(class_75.name_3,this.method_2512);
         method_23(class_85.name_3,this.method_2716);
         method_23(class_74.name_3,this.method_736);
         CentralEventUnit.addEventListener(class_56.const_51,this.method_1184);
         this.var_973 = new class_82();
         this.var_1238 = class_48.name_3.var_2029;
         this.var_1238.addEventListener(Event.CHANGE,this.method_2180);
         this.var_102 = class_47.method_24.var_12;
      }
      
      public static function method_21() : class_11
      {
         if(name_55 == null)
         {
            name_55 = new class_11();
         }
         return name_55;
      }
      
      private final function method_2180(param1:Event) : void
      {
         var _loc5_:GroupWindowUserModel = null;
         this.var_973.method_54();
         var _loc2_:int = this.var_1238.name_8.length;
         var _loc3_:* = _loc2_ > 0;
         if(!this.var_1183 && _loc3_)
         {
            this.var_1895 = (this.var_1238.name_8.getItemAt(1) as GroupWindowUserModel).stub.var_53;
            this.method_1823();
         }
         else if(this.var_1183 && !_loc3_)
         {
            this.method_1435();
         }
         this.var_1183 = _loc3_;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = this.var_1238.name_8.getItemAt(_loc4_) as GroupWindowUserModel;
            this.var_973.method_511(_loc5_.stub.var_162,_loc5_.stub);
            _loc4_++;
         }
      }
      
      public function get name_93() : Boolean
      {
         return this.var_1183;
      }
      
      public final function method_1943() : Array
      {
         var _loc3_:class_84 = null;
         var _loc4_:class_86 = null;
         var _loc1_:Boolean = class_47.method_51.method_141(class_76.const_191);
         var _loc2_:Array = new Array();
         for each(_loc3_ in this.var_973.name_82)
         {
            _loc4_ = this.var_973.method_124(_loc3_) as class_86;
            if(!_loc1_ && _loc4_.name_11 == class_47.method_51.method_175() && class_47.method_29.method_44(_loc3_) == null)
            {
               _loc2_.push(_loc4_.var_24);
            }
         }
         return _loc2_;
      }
      
      public final function method_1567(param1:int, param2:int, param3:Boolean = false) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc4_:Number = getTimer();
         if(_loc4_ - this.var_2319 < const_1367)
         {
            return;
         }
         this.var_2319 = _loc4_;
         if(param3)
         {
            _loc5_ = Math.round(0.5 / 20 * param1 + 0.5 / 14 * param2);
            _loc6_ = Math.round(0.5 / 20 * param1 - 0.5 / 14 * param2);
            class_73.name_3.method_2357(_loc5_,_loc6_);
         }
         class_47.method_24.var_12.miniMap.method_1452(param1,param2);
      }
      
      public final function method_1041(param1:String) : void
      {
         this.dispatchEvent(new class_80(const_882,param1));
      }
      
      public final function method_1989(param1:class_84) : Boolean
      {
         return this.var_973.method_124(param1) != null;
      }
      
      private final function method_2716(param1:class_14) : void
      {
         var _loc3_:String = null;
         var _loc2_:class_85 = param1 as class_85;
         switch(_loc2_.var_1474)
         {
            case class_83.const_1689:
               _loc3_ = class_47.method_22.method_28("group_view_error_0");
               break;
            case class_83.const_1740:
               _loc3_ = class_47.method_22.method_28("group_view_error_1");
               break;
            case class_83.const_1772:
               _loc3_ = class_47.method_22.method_28("group_view_error_2");
               break;
            case class_83.const_1750:
               _loc3_ = class_47.method_22.method_28("group_view_error_3");
               break;
            case class_83.const_1658:
               _loc3_ = class_47.method_22.method_28("group_view_error_4");
               break;
            case class_83.const_1563:
               _loc3_ = class_47.method_22.method_28("group_view_error_5");
               break;
            case class_83.const_1837:
               _loc3_ = class_47.method_22.method_28("group_view_error_6");
               break;
            case class_83.const_937:
               _loc3_ = class_47.method_22.method_28("group_view_error_7");
               break;
            case class_83.const_1331:
               _loc3_ = class_13.method_78("group_view_error_9",[_loc2_.name_45]);
               break;
            case class_83.const_1546:
               _loc3_ = class_47.method_22.method_28("group_view_invitation_received");
               break;
            case class_83.const_1596:
               _loc3_ = class_47.method_22.method_28("group_view_error_10");
               break;
            default:
               return;
         }
         class_47.method_24.var_12.instantMsgBox.update(_loc3_);
      }
      
      private final function method_54() : void
      {
         this.var_1183 = false;
         this.var_973.method_54();
         this.method_1435();
      }
      
      private final function method_736(param1:class_14) : void
      {
         this.method_54();
      }
      
      private final function method_1184(param1:class_56) : void
      {
         this.method_54();
      }
      
      private final function method_2512(param1:class_14) : void
      {
         var _loc2_:class_75 = param1 as class_75;
         if(_loc2_.name_5 != class_81.const_137)
         {
            return;
         }
         var _loc3_:int = _loc2_.name_6.var_9;
         var _loc4_:int = _loc2_.name_6.var_8;
         this.method_1567((_loc3_ + _loc4_) * 20,(_loc3_ - _loc4_) * 14);
      }
      
      private final function method_1823() : void
      {
         this.method_1070();
      }
      
      private final function method_1070() : void
      {
         if(this.var_102.chatWindow && this.var_102.chatWindow.method_160())
         {
            Main.LOG.info("joining group ({0}) chat",this.var_1895);
            this.var_102.chatWindow.method_1099(this.var_1895);
         }
         else
         {
            TweenMax.delayedCall(1,this.method_1070);
         }
      }
      
      private final function method_1435() : void
      {
         if(this.var_102.chatWindow)
         {
            this.var_102.chatWindow.method_2518();
         }
      }
   }
}
