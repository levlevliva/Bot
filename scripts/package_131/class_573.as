package package_131
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotAmountItemVo;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagDropTarget;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowUserModel;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowAscendTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRankingTab;
   import com.bigpoint.services.statelessCommands.commands.leaguewindow.CmdSL_OpenLeagueWindowRewardsTab;
   import com.greensock.TweenLite;
   import com.greensock.easing.Sine;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_10.class_18;
   import package_10.class_38;
   import package_107.class_693;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_88;
   import package_170.class_979;
   import package_171.class_1275;
   import package_48.class_996;
   import package_49.class_140;
   import package_5.class_133;
   import package_6.class_14;
   import package_69.class_978;
   import spark.components.Button;
   import spark.components.HGroup;
   
   public class class_573 implements class_14
   {
      
      public static const name_3:class_573 = new class_573();
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public function class_573(param1:int = 0)
      {
         super();
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return 5850;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(5850);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
