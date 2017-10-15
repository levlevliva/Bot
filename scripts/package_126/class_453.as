package package_126
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.cannon.Cannon_VO;
   import com.bigpoint.seafight.model.inventory.vo.cannon.DefaultCannon_VO;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyPopup;
   import com.bigpoint.seafight.view.popups.gempopup.ship.tools.GemTools;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.vo.GemConfigTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.GuildMenuVanity;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuSearchTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuSearchTabController;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.gemwindow.CmdSL_OpenGemWindow;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.gems.class_719;
   import net.bigpoint.seafight.com.module.gems.class_892;
   import package_109.class_385;
   import package_109.class_626;
   import package_170.class_979;
   import package_171.class_981;
   import package_41.class_84;
   import package_5.class_945;
   import package_51.class_1355;
   import package_6.class_14;
   import package_69.class_978;
   import package_9.class_91;
   
   public final class class_453 implements class_14
   {
      
      public static const name_3:class_453 = new class_453();
       
      
      private var var_646:int = 0;
      
      public var var_1548:Boolean = false;
      
      public var name_4:class_84;
      
      public var var_91:int = 0;
      
      public var name_6:class_91;
      
      public function class_453(param1:class_84 = null, param2:int = 0, param3:class_91 = null, param4:Boolean = false)
      {
         super();
         this.var_1548 = param4;
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         this.var_91 = param2;
         if(param3 == null)
         {
            this.name_6 = new class_91();
         }
         else
         {
            this.name_6 = param3;
         }
      }
      
      public function method_16() : int
      {
         return 16331;
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
         return 1;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1548 = param1.readBoolean();
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 4 % 16 | (65535 & this.name_4.var_6) << 16 - 4 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.var_91 = param1.readShort();
         this.name_6 = new class_91();
         this.name_6.var_8 = param1.readShort();
         this.name_6.var_8 = 65535 & ((65535 & this.name_6.var_8) << 6 % 16 | (65535 & this.name_6.var_8) >>> 16 - 6 % 16);
         this.name_6.var_8 = this.name_6.var_8 > 32767?int(this.name_6.var_8 - 65536):int(this.name_6.var_8);
         this.name_6.var_9 = param1.readShort();
         this.name_6.var_9 = 65535 & ((65535 & this.name_6.var_9) << 13 % 16 | (65535 & this.name_6.var_9) >>> 16 - 13 % 16);
         this.name_6.var_9 = this.name_6.var_9 > 32767?int(this.name_6.var_9 - 65536):int(this.name_6.var_9);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(16331);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         param1.writeBoolean(this.var_1548);
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 4 % 16 | (65535 & this.name_4.var_6) >>> 16 - 4 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeShort(this.var_91);
         param1.writeShort(65535 & ((65535 & this.name_6.var_8) >>> 6 % 16 | (65535 & this.name_6.var_8) << 16 - 6 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6.var_9) >>> 13 % 16 | (65535 & this.name_6.var_9) << 16 - 13 % 16));
      }
   }
}
