package package_109
{
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_1371;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.event.modules.common.skins.RankingModuleSkin;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxLevelItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildIslandListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardSubListItem;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.guild.GuildIslandType;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import package_107.class_693;
   import package_112.class_622;
   import package_121.class_841;
   import package_123.class_1032;
   import package_136.class_926;
   import package_14.class_51;
   import package_149.class_579;
   import package_5.class_22;
   import package_57.class_171;
   import package_74.class_236;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.primitives.Rect;
   
   public final class class_626 extends class_579
   {
      
      public static const name_3:class_626 = new class_626();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public function class_626(param1:int = 0)
      {
         super();
         this.name_5 = param1;
      }
      
      override public function method_16() : int
      {
         return -17886;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 0;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 9 % 16 | (65535 & this.var_646) >>> 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.name_5 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-17886);
         param1.writeShort(65535 & ((65535 & 0) >>> 9 % 16 | (65535 & 0) << 16 - 9 % 16));
         super.method_14(param1);
         param1.writeShort(this.name_5);
      }
   }
}
