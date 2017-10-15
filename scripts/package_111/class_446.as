package package_111
{
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.cauldron.component.CauldronMapPiecesView;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.constants.SocketEmphasisType;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildIslandListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.target;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildRankItemListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankItemListItemVo;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusItemVO;
   import com.bigpoint.seafight.view.userInterface.class_1451;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.EffectEvent;
   import mx.graphics.LinearGradient;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_408;
   import package_104.class_989;
   import package_16.class_28;
   import package_27.class_53;
   import package_30.class_62;
   import package_34.class_1272;
   import package_39.class_80;
   import package_49.class_137;
   import package_49.class_140;
   import package_51.class_1103;
   import package_6.class_14;
   import package_7.class_1039;
   import package_7.class_104;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   
   use namespace mx_internal;
   
   public final class class_446 implements class_14
   {
      
      public static const name_3:class_446 = new class_446();
       
      
      private var var_646:int = 0;
      
      public var name_29:int = 0;
      
      public var name_15:int = 0;
      
      public function class_446(param1:int = 0, param2:int = 0)
      {
         super();
         this.name_29 = param2;
         this.name_15 = param1;
      }
      
      public function method_16() : int
      {
         return -11562;
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
         this.name_29 = param1.readShort();
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 >>> 3 % 32 | this.name_15 << 32 - 3 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-11562);
         param1.writeShort(65535 & ((65535 & 0) >>> 2 % 16 | (65535 & 0) << 16 - 2 % 16));
         param1.writeShort(this.name_29);
         param1.writeInt(this.name_15 << 3 % 32 | this.name_15 >>> 32 - 3 % 32);
      }
   }
}
