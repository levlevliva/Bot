package package_111
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_172;
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.event.component.ToggleButtonGroup;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuOverviewTab;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandMenuOverviewTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.MemberRankAssignationVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.GuildMenuVanity;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import com.greensock.TweenLite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.seafight.com.module.guild.GuildIslandType;
   import package_10.class_18;
   import package_10.class_38;
   import package_101.class_511;
   import package_108.class_596;
   import package_108.class_755;
   import package_110.class_680;
   import package_14.class_47;
   import package_152.class_611;
   import package_34.class_117;
   import package_34.class_1499;
   import package_39.class_973;
   import package_41.class_84;
   import package_46.class_1224;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_22;
   import package_51.class_1355;
   import package_6.class_14;
   import package_7.class_15;
   import package_8.class_1315;
   import package_9.class_91;
   import package_92.class_1278;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   
   public final class class_580 implements class_14
   {
      
      public static const name_3:class_580 = new class_580();
       
      
      private var var_646:int = 0;
      
      public var var_32:Number = 0;
      
      public var name_13:String = "";
      
      public function class_580(param1:Number = 0, param2:String = "")
      {
         super();
         this.var_32 = param1;
         this.name_13 = param2;
      }
      
      public function method_16() : int
      {
         return -29818;
      }
      
      public function method_17() : int
      {
         return 0;
      }
      
      public function method_18() : int
      {
         return this.var_646;
      }
      
      public function method_19() : int
      {
         return 10;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 15 % 16 | (65535 & this.var_646) << 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_32 = param1.readDouble();
         this.name_13 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-29818);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         param1.writeDouble(this.var_32);
         param1.writeUTF(this.name_13);
      }
   }
}
