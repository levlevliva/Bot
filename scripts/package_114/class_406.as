package package_114
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tooltips.TowerListItemToolTip;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuSearchTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuSearchTabController;
   import com.bigpoint.seafight.view.popups.messageuserpopup.vo.MessageUserPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenMessageUserWindow;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.net.URLVariables;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.events.ToolTipEvent;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.event.class_616;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_14.class_47;
   import package_14.class_96;
   import package_166.class_1589;
   import package_190.*;
   import package_204.thiz;
   import package_34.class_1499;
   import package_34.class_73;
   import package_41.class_84;
   import package_42.class_1034;
   import package_48.class_996;
   import package_49.class_140;
   import package_5.class_1050;
   import package_5.class_22;
   import package_51.class_1355;
   import package_6.class_14;
   import package_92.class_944;
   import spark.components.DataGroup;
   import spark.components.Group;
   
   public final class class_406 implements class_14
   {
      
      public static const name_3:class_406 = new class_406();
       
      
      private var var_646:int = 0;
      
      public var var_22:int = 0;
      
      public var var_1077:int = 0;
      
      public var var_1552:String = "";
      
      public var var_175:int = 0;
      
      public var var_1874:Number = 0;
      
      public var var_1196:Number = 0;
      
      public function class_406(param1:int = 0, param2:int = 0, param3:String = "", param4:Number = 0, param5:Number = 0, param6:int = 0)
      {
         super();
         this.var_22 = param2;
         this.var_1077 = param1;
         this.var_1552 = param3;
         this.var_175 = param6;
         this.var_1874 = param5;
         this.var_1196 = param4;
      }
      
      public function method_16() : int
      {
         return -4660;
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
         return 19;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_22 = param1.readShort();
         this.var_1077 = param1.readShort();
         this.var_1552 = param1.readUTF();
         this.var_175 = param1.readByte();
         this.var_175 = 255 & ((255 & this.var_175) << 12 % 8 | (255 & this.var_175) >>> 8 - 12 % 8);
         this.var_175 = this.var_175 > 127?int(this.var_175 - 256):int(this.var_175);
         this.var_1874 = param1.readDouble();
         this.var_1196 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-4660);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         param1.writeShort(this.var_22);
         param1.writeShort(this.var_1077);
         param1.writeUTF(this.var_1552);
         param1.writeByte(255 & ((255 & this.var_175) >>> 12 % 8 | (255 & this.var_175) << 8 - 12 % 8));
         param1.writeDouble(this.var_1874);
         param1.writeDouble(this.var_1196);
      }
   }
}
