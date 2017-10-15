package package_142
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.cannon.Cannon_VO;
   import com.bigpoint.seafight.model.inventory.vo.cannon.DefaultCannon_VO;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.GroupMapQueueWindow;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleSlotVo;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.TextInputWithLabel;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.gempopup.AbstractGemConfigPopupTabController;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.groupmap.queue.GroupMapQueuePopupController;
   import com.bigpoint.seafight.view.popups.groupmap.queue.component.GroupMapQueuePopup;
   import com.bigpoint.seafight.view.popups.groupmap.queue.vo.GroupMapQueuePopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.GemConfigFooter;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleWindowSkin;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_678;
   import net.bigpoint.seafight.com.module.guild.class_758;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_104.class_641;
   import package_109.class_385;
   import package_109.class_626;
   import package_11.class_130;
   import package_14.class_47;
   import package_14.class_88;
   import package_177.class_1049;
   import package_20.class_33;
   import package_204.class_1300;
   import package_25.class_295;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_45.class_110;
   import package_47.class_128;
   import package_47.class_834;
   import package_5.class_123;
   import package_5.class_22;
   import package_51.class_974;
   import package_54.class_319;
   import package_6.class_14;
   import package_7.class_614;
   import package_72.class_203;
   import package_92.class_336;
   import package_99.class_764;
   import package_99.class_786;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_771 implements class_14
   {
      
      public static const name_3:class_771 = new class_771();
       
      
      private var var_646:int = 0;
      
      public function class_771()
      {
         super();
      }
      
      public function method_16() : int
      {
         return -21648;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-21648);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
      }
   }
}
