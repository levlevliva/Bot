package package_115
{
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.view.popups.avatarupload.AvatarUploadPopupController;
   import com.bigpoint.seafight.view.popups.avatarupload.vo.AvatarUploadPopupVo;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.component.ToggleButtonGroup;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuRewardsTabVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.LocalConnection;
   import flash.system.Capabilities;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import package_14.class_47;
   import package_143.class_542;
   import package_143.class_933;
   import package_170.class_979;
   import package_206.class_1569;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_935;
   import package_5.class_214;
   import package_6.class_14;
   import package_69.class_978;
   import package_9.class_91;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public final class class_490 implements class_14
   {
      
      public static const name_3:class_490 = new class_490();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public var var_24:class_91;
      
      public var name_61:Boolean = false;
      
      public var name_25:int = 0;
      
      public var name_4:class_84;
      
      public function class_490(param1:class_84 = null, param2:class_91 = null, param3:int = 0, param4:Boolean = false, param5:int = 0)
      {
         super();
         this.name_5 = param3;
         if(param2 == null)
         {
            this.var_24 = new class_91();
         }
         else
         {
            this.var_24 = param2;
         }
         this.name_61 = param4;
         this.name_25 = param5;
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -24920;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 9 % 16 | (65535 & this.var_646) << 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
         this.var_24 = new class_91();
         this.var_24.var_8 = param1.readShort();
         this.var_24.var_8 = 65535 & ((65535 & this.var_24.var_8) << 7 % 16 | (65535 & this.var_24.var_8) >>> 16 - 7 % 16);
         this.var_24.var_8 = this.var_24.var_8 > 32767?int(this.var_24.var_8 - 65536):int(this.var_24.var_8);
         this.var_24.var_9 = param1.readShort();
         this.var_24.var_9 = 65535 & ((65535 & this.var_24.var_9) << 2 % 16 | (65535 & this.var_24.var_9) >>> 16 - 2 % 16);
         this.var_24.var_9 = this.var_24.var_9 > 32767?int(this.var_24.var_9 - 65536):int(this.var_24.var_9);
         this.name_61 = param1.readBoolean();
         this.name_25 = param1.readByte();
         this.name_25 = 255 & ((255 & this.name_25) >>> 11 % 8 | (255 & this.name_25) << 8 - 11 % 8);
         this.name_25 = this.name_25 > 127?int(this.name_25 - 256):int(this.name_25);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 16 % 16 | (65535 & this.name_4.var_6) << 16 - 16 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-24920);
         param1.writeShort(65535 & ((65535 & 0) << 9 % 16 | (65535 & 0) >>> 16 - 9 % 16));
         param1.writeShort(this.name_5);
         param1.writeShort(65535 & ((65535 & this.var_24.var_8) >>> 7 % 16 | (65535 & this.var_24.var_8) << 16 - 7 % 16));
         param1.writeShort(65535 & ((65535 & this.var_24.var_9) >>> 2 % 16 | (65535 & this.var_24.var_9) << 16 - 2 % 16));
         param1.writeBoolean(this.name_61);
         param1.writeByte(255 & ((255 & this.name_25) << 11 % 8 | (255 & this.name_25) >>> 8 - 11 % 8));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 16 % 16 | (65535 & this.name_4.var_6) >>> 16 - 16 % 16));
         param1.writeDouble(this.name_4.name_4);
      }
   }
}
