package package_91
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.avatarupload.vo.AvatarUploadPopupVo;
   import com.bigpoint.seafight.view.popups.common.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildMenuTreasuryTab;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.GuildMenuTreasuryTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.MemberRankAssignationVo;
   import com.bigpoint.seafight.view.userInterface.MenusContainer;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.SimplePopup;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenAvatarUploadWindow;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import com.greensock.easing.Sine;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.net.XMLSocket;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.logging.LogEvent;
   import mx.logging.LogEventLevel;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_108.class_596;
   import package_108.class_755;
   import package_122.class_428;
   import package_122.class_634;
   import package_14.class_102;
   import package_14.class_226;
   import package_14.class_47;
   import package_14.class_51;
   import package_17.class_37;
   import package_170.class_979;
   import package_190.class_1469;
   import package_20.class_33;
   import package_26.class_1061;
   import package_41.class_103;
   import package_41.class_84;
   import package_46.class_1224;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_945;
   import package_51.class_1355;
   import package_6.class_14;
   import package_7.class_15;
   import package_72.class_203;
   import package_8.class_1315;
   import package_9.class_76;
   import spark.components.Label;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_414 implements class_14
   {
      
      public static const name_3:class_414 = new class_414();
       
      
      private var var_646:int = 0;
      
      public function class_414()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 3672;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(3672);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
      }
   }
}
