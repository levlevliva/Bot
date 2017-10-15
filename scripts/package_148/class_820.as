package package_148
{
   import com.bigpoint.seafight.model.inventory.vo.extensions.DefaultExtensions_VO;
   import com.bigpoint.seafight.model.inventory.vo.extensions.Ext_VO;
   import com.bigpoint.seafight.model.vo.class_172;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.class_1020;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.cauldron.component.CauldronMapPiecesView;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.PlayerProfileViewVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventoryGroup;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.StatisticItemVo;
   import com.bigpoint.seafight.view.popups.teamscore.CivilWarTeamScorePopupController;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenCauldronWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenSpyWindow;
   import com.greensock.TweenLite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.describeType;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_433;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_1119;
   import package_121.class_841;
   import package_124.class_1311;
   import package_124.class_582;
   import package_127.class_455;
   import package_127.class_486;
   import package_127.class_528;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_144.class_543;
   import package_144.class_886;
   import package_147.class_683;
   import package_147.class_797;
   import package_16.class_28;
   import package_166.class_1351;
   import package_170.class_979;
   import package_185.class_1136;
   import package_20.class_33;
   import package_210.class_1527;
   import package_26.class_1088;
   import package_26.class_142;
   import package_46.class_1457;
   import package_5.class_123;
   import package_5.class_41;
   import package_5.class_43;
   import package_54.class_1089;
   import package_6.class_14;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   public final class class_820 implements class_14
   {
      
      public static const name_3:class_820 = new class_820();
       
      
      private var var_646:int = 0;
      
      public var var_448:int = 0;
      
      public var name_39:Number = 0;
      
      public var name_40:Number = 0;
      
      public function class_820(param1:int = 0, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.var_448 = param1;
         this.name_39 = param3;
         this.name_40 = param2;
      }
      
      public function method_16() : int
      {
         return 24088;
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
         return 18;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_448 = param1.readShort();
         this.var_448 = 65535 & ((65535 & this.var_448) >>> 3 % 16 | (65535 & this.var_448) << 16 - 3 % 16);
         this.var_448 = this.var_448 > 32767?int(this.var_448 - 65536):int(this.var_448);
         this.name_39 = param1.readDouble();
         this.name_40 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(24088);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         param1.writeShort(65535 & ((65535 & this.var_448) << 3 % 16 | (65535 & this.var_448) >>> 16 - 3 % 16));
         param1.writeDouble(this.name_39);
         param1.writeDouble(this.name_40);
      }
   }
}
