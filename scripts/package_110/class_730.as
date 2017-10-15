package package_110
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.DynamicTabNavigator;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.LevelTooltipItemRenderer;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildAnnouncementListItem;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenSpyWindow;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_14.class_47;
   import package_14.class_51;
   import package_210.class_1364;
   import package_26.class_960;
   import package_34.class_1499;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_54.class_1089;
   import package_58.class_175;
   import package_6.class_14;
   import package_88.class_1093;
   import package_9.class_17;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public final class class_730 implements class_14
   {
      
      public static const name_3:class_730 = new class_730();
       
      
      private var var_646:int = 0;
      
      public var var_87:class_84;
      
      public var var_691:String = "";
      
      public function class_730(param1:class_84 = null, param2:String = "")
      {
         super();
         if(param1 == null)
         {
            this.var_87 = new class_84();
         }
         else
         {
            this.var_87 = param1;
         }
         this.var_691 = param2;
      }
      
      public function method_16() : int
      {
         return -7034;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_87 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_87.method_15(param1);
         this.var_691 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-7034);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         this.var_87.method_14(param1);
         param1.writeUTF(this.var_691);
      }
   }
}
