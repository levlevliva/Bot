package package_127
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.castle.UpgradeCastleSlotPopupController;
   import com.bigpoint.seafight.view.popups.castle.component.UpgradeCastleSlotPopup;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleSlotVo;
   import com.bigpoint.seafight.view.popups.cauldron.component.CauldronMenuVanity;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRankingTabButtonListItem;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleWindowSkin;
   import com.bit101.components.ListItem;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import package_107.class_1467;
   import package_11.class_130;
   import package_14.class_47;
   import package_14.class_96;
   import package_20.class_33;
   import package_34.class_1053;
   import package_34.class_1499;
   import package_41.class_84;
   import package_45.class_110;
   import package_47.class_128;
   import package_47.class_135;
   import package_47.class_930;
   import package_49.class_137;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_214;
   import package_5.class_22;
   import package_51.class_974;
   import package_6.class_14;
   import package_88.class_290;
   import spark.components.DataGroup;
   import spark.components.Label;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   
   public final class class_486 implements class_14
   {
      
      public static const name_3:class_486 = new class_486();
       
      
      private var var_646:int = 0;
      
      public var var_65:int = 0;
      
      public var var_812:int = 0;
      
      public var name_50:Number = 0;
      
      public var var_473:int = 0;
      
      public var var_410:int = 0;
      
      public function class_486(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:Number = 0)
      {
         super();
         this.var_65 = param1;
         this.var_812 = param3;
         this.name_50 = param5;
         this.var_473 = param2;
         this.var_410 = param4;
      }
      
      public function method_16() : int
      {
         return 2300;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 7 % 16 | (65535 & this.var_646) >>> 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_65 = param1.readShort();
         this.var_812 = param1.readInt();
         this.var_812 = this.var_812 >>> 5 % 32 | this.var_812 << 32 - 5 % 32;
         this.name_50 = param1.readDouble();
         this.var_473 = param1.readByte();
         this.var_473 = 255 & ((255 & this.var_473) << 4 % 8 | (255 & this.var_473) >>> 8 - 4 % 8);
         this.var_473 = this.var_473 > 127?int(this.var_473 - 256):int(this.var_473);
         this.var_410 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(2300);
         param1.writeShort(65535 & ((65535 & 0) >>> 7 % 16 | (65535 & 0) << 16 - 7 % 16));
         param1.writeShort(this.var_65);
         param1.writeInt(this.var_812 << 5 % 32 | this.var_812 >>> 32 - 5 % 32);
         param1.writeDouble(this.name_50);
         param1.writeByte(255 & ((255 & this.var_473) >>> 4 % 8 | (255 & this.var_473) << 8 - 4 % 8));
         param1.writeShort(this.var_410);
      }
   }
}
