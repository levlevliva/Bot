package package_111
{
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ShipEquipmentTargetList;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tooltips.TowerListItemToolTip;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.LogCategoryCheckBox;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuRewardSubListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuRewardsTabListItemVo;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.itemrenderers.MateyIdItemRenderer;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModuleVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.PergamentButtonBarSkinInnerClass2;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.target;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.TweenCore;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.ToolTipEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_590;
   import net.bigpoint.seafight.com.module.ship.class_1119;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_100.class_1186;
   import package_101.class_511;
   import package_122.class_656;
   import package_14.class_47;
   import package_158.class_703;
   import package_17.class_325;
   import package_32.class_64;
   import package_34.class_116;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1493;
   import package_49.class_137;
   import package_5.class_123;
   import package_5.class_133;
   import package_52.class_168;
   import package_6.class_14;
   import package_7.class_119;
   import package_72.class_203;
   import package_88.class_1014;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VScrollBar;
   
   use namespace mx_internal;
   
   public final class class_768 implements class_14
   {
      
      public static const name_3:class_768 = new class_768();
       
      
      private var var_646:int = 0;
      
      public var name_15:int = 0;
      
      public function class_768(param1:int = 0)
      {
         super();
         this.name_15 = param1;
      }
      
      public function method_16() : int
      {
         return -13110;
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
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 2 % 16 | (65535 & this.var_646) >>> 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 >>> 6 % 32 | this.name_15 << 32 - 6 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-13110);
         param1.writeShort(65535 & ((65535 & 0) >>> 2 % 16 | (65535 & 0) << 16 - 2 % 16));
         param1.writeInt(this.name_15 << 6 % 32 | this.name_15 >>> 32 - 6 % 32);
      }
   }
}
