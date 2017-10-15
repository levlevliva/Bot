package package_108
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.common.SmallBlackButton;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuRanksTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuRanksTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRanksTabVo;
   import com.bigpoint.seafight.view.popups.lootpopup.component.target;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.npcconversationpopup.vo.NpcConversationPopupVo;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.greensock.core.PropTween;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.event.class_616;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_10.class_38;
   import package_101.class_511;
   import package_107.class_693;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_96;
   import package_170.class_979;
   import package_186.class_1137;
   import package_34.class_107;
   import package_45.class_110;
   import package_46.class_1493;
   import package_5.class_43;
   import package_51.class_1355;
   import package_6.class_14;
   import package_89.class_1138;
   import package_98.class_777;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   
   use namespace mx_internal;
   
   public final class class_581 implements class_14
   {
      
      public static const name_3:class_581 = new class_581();
       
      
      private var var_646:int = 0;
      
      public var var_379:int = 0;
      
      public var var_407:int = 0;
      
      public var var_1023:int = 0;
      
      public var var_62:Number = 0;
      
      public function class_581(param1:int = 0, param2:int = 0, param3:int = 0, param4:Number = 0)
      {
         super();
         this.var_379 = param2;
         this.var_407 = param1;
         this.var_1023 = param3;
         this.var_62 = param4;
      }
      
      public function method_16() : int
      {
         return 10400;
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
         return 13;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_379 = param1.readShort();
         this.var_407 = param1.readByte();
         this.var_407 = 255 & ((255 & this.var_407) >>> 16 % 8 | (255 & this.var_407) << 8 - 16 % 8);
         this.var_407 = this.var_407 > 127?int(this.var_407 - 256):int(this.var_407);
         this.var_1023 = param1.readInt();
         this.var_1023 = this.var_1023 >>> 3 % 32 | this.var_1023 << 32 - 3 % 32;
         this.var_62 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(10400);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
         param1.writeShort(this.var_379);
         param1.writeByte(255 & ((255 & this.var_407) << 16 % 8 | (255 & this.var_407) >>> 8 - 16 % 8));
         param1.writeInt(this.var_1023 << 3 % 32 | this.var_1023 >>> 32 - 3 % 32);
         param1.writeDouble(this.var_62);
      }
   }
}
