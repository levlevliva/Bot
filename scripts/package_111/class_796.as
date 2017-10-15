package package_111
{
   import com.bigpoint.seafight.display.utils.onCooldownToolTip;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetStatsComponentVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetsInventoryVo;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.table.Table;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildSearchListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentIslandsListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildSearchListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentLowerLeft;
   import com.bigpoint.seafight.view.userInterface.InstantMessageContainer;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.class_207;
   import com.bigpoint.seafight.view.userInterface.class_208;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.class_211;
   import com.bigpoint.seafight.view.userInterface.class_212;
   import com.bigpoint.seafight.view.userInterface.class_215;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.bigpoint.seafight.view.userInterface.class_221;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColorStroke;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.getDefinitionNames;
   import net.bigpoint.seafight.com.module.guild.GuildIslandType;
   import net.bigpoint.seafight.com.module.guild.class_433;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import net.bigpoint.seafight.com.module.useraction.UserActionFailedReason;
   import package_110.class_390;
   import package_110.class_506;
   import package_110.class_526;
   import package_132.class_605;
   import package_14.class_220;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_151.class_905;
   import package_17.class_224;
   import package_216.class_1575;
   import package_26.class_218;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1224;
   import package_46.class_1455;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_214;
   import package_5.class_43;
   import package_50.class_219;
   import package_52.class_313;
   import package_53.class_1100;
   import package_54.class_319;
   import package_55.class_1228;
   import package_6.class_14;
   import package_7.class_104;
   import package_7.class_482;
   import package_89.class_1011;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   
   public final class class_796 implements class_14
   {
      
      public static const name_3:class_796 = new class_796();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public function class_796(param1:int = 0)
      {
         super();
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return -25679;
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
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-25679);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
