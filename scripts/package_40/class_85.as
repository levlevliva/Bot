package package_40
{
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.model.vo.class_1098;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.net.events.class_1097;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.DynamicImageButton;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.FactionPhaseRankingItem;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.LootGroupProperties;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.populateLoot;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.itemrenderers.MateyStatusItemRenderer;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScorePopupVo;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverviewContentMask;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.inventory.GemLevelsComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.greensock.TweenLite;
   import com.greensock.core.TweenCore;
   import com.greensock.events.TweenEvent;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.events.EffectEvent;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.guild.class_739;
   import package_102.class_359;
   import package_133.class_595;
   import package_136.class_509;
   import package_136.class_926;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_16.class_28;
   import package_179.class_1416;
   import package_210.class_1364;
   import package_210.class_1527;
   import package_30.class_62;
   import package_34.class_73;
   import package_46.class_1224;
   import package_47.class_881;
   import package_5.class_1239;
   import package_5.class_43;
   import package_5.class_940;
   import package_55.class_1009;
   import package_6.class_14;
   import package_8.class_1240;
   import package_80.class_1217;
   import package_83.class_268;
   import package_9.class_899;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_85 implements class_14
   {
      
      public static const name_3:class_85 = new class_85();
       
      
      private var var_646:int = 0;
      
      public var var_1474:int = 0;
      
      public var name_45:String = "";
      
      public function class_85(param1:int = 0, param2:String = "")
      {
         super();
         this.var_1474 = param1;
         this.name_45 = param2;
      }
      
      public function method_16() : int
      {
         return 28999;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 15 % 16 | (65535 & this.var_646) >>> 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1474 = param1.readShort();
         this.name_45 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(28999);
         param1.writeShort(65535 & ((65535 & 0) >>> 15 % 16 | (65535 & 0) << 16 - 15 % 16));
         param1.writeShort(this.var_1474);
         param1.writeUTF(this.name_45);
      }
   }
}
