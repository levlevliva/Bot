package package_111
{
   import com.bigpoint.seafight.model.inventory.vo.cannon.Cannon_VO;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.popups.spymenu.component.target;
   import flash.display.DisplayObject;
   import flash.display.GradientType;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_485;
   import net.bigpoint.seafight.com.module.guild.class_714;
   import net.bigpoint.seafight.com.module.guild.class_923;
   import net.bigpoint.seafight.com.module.guild.class_938;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_110.class_856;
   import package_14.class_47;
   import package_14.class_51;
   import package_141.class_804;
   import package_16.class_28;
   import package_17.class_307;
   import package_170.class_979;
   import package_171.class_1274;
   import package_205.class_1353;
   import package_216.class_1575;
   import package_219.class_1595;
   import package_39.class_1366;
   import package_40.class_334;
   import package_41.class_89;
   import package_41.class_93;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_22;
   import package_51.class_1355;
   import package_53.class_1100;
   import package_6.class_14;
   import package_72.class_203;
   import package_92.class_1333;
   import package_92.class_944;
   import package_99.class_786;
   import spark.components.Label;
   import spark.components.List;
   import spark.filters.DropShadowFilter;
   import spark.layouts.TileLayout;
   
   use namespace mx_internal;
   
   public final class class_659 implements class_14
   {
      
      public static const name_3:class_659 = new class_659();
       
      
      private var var_646:int = 0;
      
      public var var_199:int = 0;
      
      public var var_395:int = 0;
      
      public var var_426:int = 0;
      
      public function class_659(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_199 = param1;
         this.var_395 = param3;
         this.var_426 = param2;
      }
      
      public function method_16() : int
      {
         return -26794;
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
         return 6;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_199 = param1.readShort();
         this.var_199 = 65535 & ((65535 & this.var_199) << 4 % 16 | (65535 & this.var_199) >>> 16 - 4 % 16);
         this.var_199 = this.var_199 > 32767?int(this.var_199 - 65536):int(this.var_199);
         this.var_395 = param1.readShort();
         this.var_395 = 65535 & ((65535 & this.var_395) << 7 % 16 | (65535 & this.var_395) >>> 16 - 7 % 16);
         this.var_395 = this.var_395 > 32767?int(this.var_395 - 65536):int(this.var_395);
         this.var_426 = param1.readShort();
         this.var_426 = 65535 & ((65535 & this.var_426) >>> 5 % 16 | (65535 & this.var_426) << 16 - 5 % 16);
         this.var_426 = this.var_426 > 32767?int(this.var_426 - 65536):int(this.var_426);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-26794);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeShort(65535 & ((65535 & this.var_199) >>> 4 % 16 | (65535 & this.var_199) << 16 - 4 % 16));
         param1.writeShort(65535 & ((65535 & this.var_395) >>> 7 % 16 | (65535 & this.var_395) << 16 - 7 % 16));
         param1.writeShort(65535 & ((65535 & this.var_426) << 5 % 16 | (65535 & this.var_426) >>> 16 - 5 % 16));
      }
   }
}
