package package_110
{
   import com.bigpoint.seafight.model.vo.class_1265;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InitiateItemTransferEvent;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InitiateItemTransferEventDispatcher;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.graphics.LinearGradientStroke;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.ship.class_413;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_104.class_448;
   import package_14.class_47;
   import package_14.class_51;
   import package_140.class_546;
   import package_158.class_703;
   import package_17.class_151;
   import package_17.class_325;
   import package_179.class_1064;
   import package_26.class_1128;
   import package_26.class_942;
   import package_26.class_960;
   import package_26.class_969;
   import package_34.class_1127;
   import package_36.class_100;
   import package_4.class_11;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_49.class_880;
   import package_5.class_1028;
   import package_5.class_12;
   import package_5.class_123;
   import package_53.class_1100;
   import package_6.class_14;
   import package_72.class_203;
   import package_92.class_1278;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichEditableText;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public final class class_903 implements class_14
   {
      
      public static const name_3:class_903 = new class_903();
       
      
      private var var_646:int = 0;
      
      public var var_1182:class_84;
      
      public function class_903(param1:class_84 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_1182 = new class_84();
         }
         else
         {
            this.var_1182 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 5317;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 12 % 16 | (65535 & this.var_646) >>> 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1182 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.var_1182.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(5317);
         param1.writeShort(65535 & ((65535 & 0) >>> 12 % 16 | (65535 & 0) << 16 - 12 % 16));
         this.var_1182.method_14(param1);
      }
   }
}
