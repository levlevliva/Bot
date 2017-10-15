package package_26
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1021;
   import com.bigpoint.seafight.view.common.components.SafeHavenGuildWindow;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.SafeHavenGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.SafeHavenGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.SafeHavenGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_394;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import package_14.class_47;
   import package_14.class_88;
   import package_190.class_1181;
   import package_20.class_33;
   import package_29.class_565;
   import package_34.class_73;
   import package_45.class_110;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_51.class_974;
   import package_56.class_170;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   
   public final class class_204 extends Event
   {
      
      public static const const_816:String = "CONF_CHANGE_EVENT";
      
      public static const const_1261:int = 1;
      
      public static const const_1880:int = 0;
       
      
      private var var_1717:int;
      
      public function class_204(param1:String, param2:int = -1, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.var_1717 = param2;
      }
      
      override public function clone() : Event
      {
         return new class_1088(type,this.var_1717,this.bubbles,this.cancelable);
      }
      
      public function set method_1313(param1:int) : void
      {
         this.var_1717 = param1;
      }
      
      public function get method_1313() : int
      {
         return this.var_1717;
      }
   }
}
