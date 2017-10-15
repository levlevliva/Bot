package package_140
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_46;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildIslandListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.MemberRankAssignationVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardSubListItem;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusPopup;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiButtonVO;
   import com.bigpoint.seafight.view.popups.shipequipment.skins.StatisticListSkin;
   import com.bit101.components.Style;
   import com.greensock.TweenLite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import mx.graphics.GradientEntry;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.minigame.class_1331;
   import net.bigpoint.seafight.com.module.minigame.class_438;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_609;
   import package_101.class_357;
   import package_111.class_696;
   import package_122.class_656;
   import package_136.class_926;
   import package_14.class_25;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_15.class_48;
   import package_184.class_1135;
   import package_185.class_1136;
   import package_20.class_33;
   import package_211.class_1369;
   import package_45.class_110;
   import package_46.class_1224;
   import package_48.class_996;
   import package_49.class_137;
   import package_5.class_43;
   import package_52.class_309;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_1039;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_636 extends class_609
   {
      
      public static const name_3:class_636 = new class_636();
       
      
      private var var_646:int = 0;
      
      public var var_1555:int = 0;
      
      public function class_636(param1:int = 0)
      {
         super();
         this.var_1555 = param1;
      }
      
      override public function method_16() : int
      {
         return -16203;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 0;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 13 % 16 | (65535 & this.var_646) << 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_1555 = param1.readShort();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-16203);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
         super.method_14(param1);
         param1.writeShort(this.var_1555);
      }
   }
}
