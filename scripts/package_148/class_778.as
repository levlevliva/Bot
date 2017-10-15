package package_148
{
   import com.bigpoint.seafight.model.inventory.vo.gem.DefaultGem_VO;
   import com.bigpoint.seafight.model.inventory.vo.gem.Gem_VO;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.common.table.TableSkinInnerClass6;
   import com.bigpoint.seafight.view.popups.currencypopup.vo.CurrencyItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildImage;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentVo;
   import com.bigpoint.seafight.view.popups.quest.regular.component.QuestPopup;
   import com.greensock.TweenLite;
   import com.greensock.events.TweenEvent;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.graphics.GradientEntry;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.sound.class_439;
   import package_104.class_448;
   import package_104.class_641;
   import package_11.class_130;
   import package_112.class_411;
   import package_112.class_622;
   import package_118.class_539;
   import package_121.class_841;
   import package_123.class_1032;
   import package_123.class_837;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_96;
   import package_152.class_740;
   import package_152.class_801;
   import package_171.class_1276;
   import package_185.class_1136;
   import package_41.class_103;
   import package_41.class_93;
   import package_46.class_1224;
   import package_47.class_128;
   import package_5.class_22;
   import package_55.class_1007;
   import package_6.class_14;
   import package_72.class_203;
   import package_89.class_1378;
   import package_93.class_987;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridLayer;
   import spark.events.IndexChangeEvent;
   import spark.layouts.VerticalLayout;
   
   public final class class_778 implements class_14
   {
      
      public static const name_3:class_778 = new class_778();
      
      public static const const_2650:int = 0;
      
      public static const const_1895:int = 1;
      
      public static const const_1479:int = 2;
      
      public static const const_1621:int = 3;
      
      public static const const_2703:int = 4;
       
      
      private var var_646:int = 0;
      
      public var name_5:int = 0;
      
      public function class_778(param1:int = 0)
      {
         super();
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return -277;
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
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-277);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
         param1.writeShort(this.name_5);
      }
   }
}
