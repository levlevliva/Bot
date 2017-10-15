package package_137
{
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.net.events.MapScrollEvent;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.popups.shipequipment.SailsDataProxy;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.SailsStatsVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.CraftingMaterialToolTip;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.sub.CmdSL_OpenShipEquipmentBuffTab;
   import com.bigpoint.services.statelessCommands.commands.sub.CmdSL_OpenShipEquipmentDecksWindow;
   import com.bigpoint.services.statelessCommands.commands.sub.CmdSL_OpenShipEquipmentSailsWindow;
   import com.bigpoint.services.statelessCommands.commands.sub.CmdSL_OpenShipEquipmentStorageTab;
   import com.bigpoint.services.statelessCommands.commands.sub.CmdSL_OpenShipEquipmentWindow;
   import com.greensock.TweenLite;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.ApplicationDomain;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.events.ToolTipEvent;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_485;
   import net.bigpoint.seafight.com.module.guild.class_714;
   import net.bigpoint.seafight.com.module.guild.class_923;
   import net.bigpoint.seafight.com.module.guild.class_938;
   import package_104.class_448;
   import package_104.class_641;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_88;
   import package_149.class_579;
   import package_15.class_48;
   import package_154.class_658;
   import package_165.class_954;
   import package_165.class_955;
   import package_165.class_956;
   import package_165.class_957;
   import package_184.class_1582;
   import package_20.class_982;
   import package_204.class_1285;
   import package_212.class_1537;
   import package_27.class_53;
   import package_34.class_107;
   import package_34.class_169;
   import package_36.class_100;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_98;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_50.class_141;
   import package_52.class_1085;
   import package_53.class_1100;
   import package_58.class_175;
   import package_6.class_14;
   import package_65.class_1046;
   import package_76.class_243;
   import package_88.class_1093;
   import package_89.class_299;
   import spark.components.Button;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   
   public final class class_865 extends class_579
   {
      
      public static const name_3:class_865 = new class_865();
       
      
      private var var_646:int = 0;
      
      public var var_425:class_658;
      
      public function class_865(param1:class_658 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_425 = new class_658();
         }
         else
         {
            this.var_425 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -31205;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_425 = class_658(class_93.method_26().method_25(param1.readShort()));
         this.var_425.method_15(param1);
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-31205);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         super.method_14(param1);
         this.var_425.method_14(param1);
      }
   }
}
