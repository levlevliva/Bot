package package_108
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.MouseHandler;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.CrewInventory;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.PlayerImageLoader;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardsTab;
   import com.bigpoint.seafight.view.popups.leaguemenu.controllers.LeagueMenuRewardsTabController;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuRewardsTabVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Security;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.UIComponent;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.gems.class_642;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_485;
   import net.bigpoint.seafight.com.module.guild.class_714;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_923;
   import net.bigpoint.seafight.com.module.guild.class_938;
   import package_12.class_21;
   import package_14.class_47;
   import package_14.class_51;
   import package_16.class_28;
   import package_17.class_54;
   import package_30.class_62;
   import package_34.class_1576;
   import package_34.class_73;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_939;
   import package_51.class_1355;
   import package_53.class_1100;
   import package_6.class_14;
   import package_72.class_1071;
   import package_9.class_76;
   import package_9.class_872;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.effects.Rotate3D;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public final class class_755 implements class_14
   {
      
      public static const name_3:class_755 = new class_755();
       
      
      private var var_646:int = 0;
      
      public var var_1686:int = 0;
      
      public var name_9:Vector.<class_596>;
      
      public function class_755(param1:int = 0, param2:Vector.<class_596> = null)
      {
         super();
         this.var_1686 = param1;
         if(param2 == null)
         {
            this.name_9 = new Vector.<class_596>();
         }
         else
         {
            this.name_9 = param2;
         }
      }
      
      public function method_16() : int
      {
         return -10749;
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
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_596 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 2 % 16 | (65535 & this.var_646) << 16 - 2 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1686 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_9.length > 0)
         {
            this.name_9.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_596(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_596 = null;
         param1.writeShort(-10749);
         param1.writeShort(65535 & ((65535 & 0) << 2 % 16 | (65535 & 0) >>> 16 - 2 % 16));
         param1.writeShort(this.var_1686);
         param1.writeByte(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
