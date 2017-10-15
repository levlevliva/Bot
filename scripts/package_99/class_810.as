package package_99
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_1048;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.event.component.EventModuleFactory;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.GroupMapIcon;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxLevelItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tooltips.LeagueButtonTooltip;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueButtonTooltipVo;
   import com.bigpoint.seafight.view.popups.quest.npc.events.NpcQuestContentModuleActionEvent;
   import com.bigpoint.seafight.view.popups.shipequipment.component.common.AmsValuePair;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.StatisticItemVo;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import package_102.class_359;
   import package_124.class_434;
   import package_139.class_532;
   import package_14.class_47;
   import package_16.class_28;
   import package_177.class_1049;
   import package_177.class_1107;
   import package_177.class_1108;
   import package_177.class_1109;
   import package_177.class_1110;
   import package_177.class_1111;
   import package_18.class_571;
   import package_18.class_855;
   import package_18.class_916;
   import package_34.class_1257;
   import package_41.class_89;
   import package_41.class_93;
   import package_5.class_1047;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   
   public final class class_810 implements class_14
   {
      
      public static const name_3:class_810 = new class_810();
       
      
      private var var_646:int = 0;
      
      public var var_16:int = 0;
      
      public var var_15:int = 0;
      
      public function class_810(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_16 = param1;
         this.var_15 = param2;
      }
      
      public function method_16() : int
      {
         return -18571;
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
         return 6;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_16 = param1.readShort();
         this.var_16 = 65535 & ((65535 & this.var_16) >>> 10 % 16 | (65535 & this.var_16) << 16 - 10 % 16);
         this.var_16 = this.var_16 > 32767?int(this.var_16 - 65536):int(this.var_16);
         this.var_15 = param1.readInt();
         this.var_15 = this.var_15 >>> 12 % 32 | this.var_15 << 32 - 12 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-18571);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         param1.writeShort(65535 & ((65535 & this.var_16) << 10 % 16 | (65535 & this.var_16) >>> 16 - 10 % 16));
         param1.writeInt(this.var_15 << 12 % 32 | this.var_15 >>> 32 - 12 % 32);
      }
   }
}
