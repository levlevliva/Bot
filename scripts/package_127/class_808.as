package package_127
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.table.TableSkinInnerClass2;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildIslandListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardSubListItem;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tooltips.LeagueButtonTooltip;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueButtonTooltipVo;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.events.ToolTipEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import package_111.class_726;
   import package_111.class_774;
   import package_121.class_841;
   import package_123.class_837;
   import package_124.class_1311;
   import package_124.class_434;
   import package_136.class_926;
   import package_14.class_47;
   import package_216.class_1575;
   import package_46.class_1312;
   import package_47.class_129;
   import package_5.class_123;
   import package_5.class_43;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.filters.DropShadowFilter;
   
   public final class class_808 implements class_14
   {
      
      public static const name_3:class_808 = new class_808();
       
      
      private var var_646:int = 0;
      
      public var var_610:int = 0;
      
      public var var_282:int = 0;
      
      public var var_153:int = 0;
      
      public function class_808(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_610 = param1;
         this.var_282 = param2;
         this.var_153 = param3;
      }
      
      public function method_16() : int
      {
         return 2630;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_610 = param1.readShort();
         this.var_282 = param1.readInt();
         this.var_282 = this.var_282 >>> 9 % 32 | this.var_282 << 32 - 9 % 32;
         this.var_153 = param1.readInt();
         this.var_153 = this.var_153 >>> 15 % 32 | this.var_153 << 32 - 15 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(2630);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         param1.writeShort(this.var_610);
         param1.writeInt(this.var_282 << 9 % 32 | this.var_282 >>> 32 - 9 % 32);
         param1.writeInt(this.var_153 << 15 % 32 | this.var_153 >>> 32 - 15 % 32);
      }
   }
}
