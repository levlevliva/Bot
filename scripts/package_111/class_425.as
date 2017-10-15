package package_111
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.assistants.LevelColumn;
   import com.bigpoint.seafight.view.popups.calendar.component.target;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuRanksTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuRanksTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuRanksTabVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuComponent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bit101.components.ListItem;
   import com.bit101.components.Style;
   import com.greensock.TweenLite;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.graphics.GradientEntry;
   import mx.managers.PopUpManager;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_122.class_428;
   import package_122.class_634;
   import package_127.class_753;
   import package_127.class_808;
   import package_128.class_716;
   import package_14.class_47;
   import package_14.class_88;
   import package_15.class_48;
   import package_151.class_594;
   import package_151.class_831;
   import package_16.class_28;
   import package_2.*;
   import package_41.class_93;
   import package_46.class_1493;
   import package_48.class_999;
   import package_51.class_1355;
   import package_52.class_168;
   import package_6.class_14;
   import package_7.class_1039;
   import package_72.class_203;
   import package_9.class_899;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.Scroller;
   
   use namespace mx_internal;
   
   public final class class_425 implements class_14
   {
      
      public static const name_3:class_425 = new class_425();
       
      
      private var var_646:int = 0;
      
      public var name_29:int = 0;
      
      public var var_96:Vector.<class_742>;
      
      public var var_886:Vector.<int>;
      
      public var name_38:Number = 0;
      
      public function class_425(param1:Number = 0, param2:int = 0, param3:Vector.<int> = null, param4:Vector.<class_742> = null)
      {
         super();
         this.name_29 = param2;
         if(param4 == null)
         {
            this.var_96 = new Vector.<class_742>();
         }
         else
         {
            this.var_96 = param4;
         }
         if(param3 == null)
         {
            this.var_886 = new Vector.<int>();
         }
         else
         {
            this.var_886 = param3;
         }
         this.name_38 = param1;
      }
      
      public function method_16() : int
      {
         return 11274;
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
         return 16;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_742 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 4 % 16 | (65535 & this.var_646) >>> 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_29 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_96.length > 0)
         {
            this.var_96.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_742(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_96.push(_loc4_);
            _loc2_++;
         }
         while(this.var_886.length > 0)
         {
            this.var_886.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.var_886.push(param1.readShort());
            _loc2_++;
         }
         this.name_38 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_742 = null;
         var _loc3_:int = 0;
         param1.writeShort(11274);
         param1.writeShort(65535 & ((65535 & 0) >>> 4 % 16 | (65535 & 0) << 16 - 4 % 16));
         param1.writeShort(this.name_29);
         param1.writeByte(this.var_96.length);
         for each(_loc2_ in this.var_96)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_886.length);
         for each(_loc3_ in this.var_886)
         {
            param1.writeShort(_loc3_);
         }
         param1.writeDouble(this.name_38);
      }
   }
}
