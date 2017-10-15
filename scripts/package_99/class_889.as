package package_99
{
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingLogListItemVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildIslandListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipNameTextArea;
   import com.bigpoint.seafight.view.popups.shipequipment.skins.StatisticListSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.system.ApplicationDomain;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.EffectEvent;
   import mx.graphics.SolidColorStroke;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_121.class_841;
   import package_130.class_1143;
   import package_14.class_88;
   import package_156.class_654;
   import package_156.class_674;
   import package_27.class_53;
   import package_41.class_93;
   import package_5.class_43;
   import package_52.class_309;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.primitives.Graphic;
   
   public final class class_889 implements class_14
   {
      
      public static const name_3:class_889 = new class_889();
       
      
      private var var_646:int = 0;
      
      public var name_24:int = 0;
      
      public var var_15:class_853;
      
      public function class_889(param1:class_853 = null, param2:int = 0)
      {
         super();
         this.name_24 = param2;
         if(param1 == null)
         {
            this.var_15 = new class_853();
         }
         else
         {
            this.var_15 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -28385;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_24 = param1.readInt();
         this.name_24 = this.name_24 << 13 % 32 | this.name_24 >>> 32 - 13 % 32;
         this.var_15 = class_853(class_93.method_26().method_25(param1.readShort()));
         this.var_15.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-28385);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         param1.writeInt(this.name_24 >>> 13 % 32 | this.name_24 << 32 - 13 % 32);
         this.var_15.method_14(param1);
      }
   }
}
