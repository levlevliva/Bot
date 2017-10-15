package package_99
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.net.events.class_1235;
   import com.bigpoint.seafight.tools.class_1606;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.colorpicker.ColorPicker;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildMenuTreasuryTab;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.GuildMenuTreasuryTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMenuMembersTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.teamscore.component.TeamMembersScorePopupListItemMemberItem;
   import com.bigpoint.seafight.view.popups.teamscore.component.target;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import com.greensock.easing.Sine;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.FileReference;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.states.AddItems;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_1147;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_105.class_369;
   import package_105.class_529;
   import package_111.class_696;
   import package_111.class_742;
   import package_111.class_745;
   import package_14.class_200;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_170.class_979;
   import package_18.class_392;
   import package_202.class_1238;
   import package_202.class_1484;
   import package_202.class_1485;
   import package_202.class_1487;
   import package_202.class_1488;
   import package_202.class_1489;
   import package_202.class_1490;
   import package_202.class_1491;
   import package_202.class_1492;
   import package_26.class_101;
   import package_29.class_57;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_45.class_110;
   import package_46.class_1224;
   import package_46.class_975;
   import package_48.class_996;
   import package_5.class_123;
   import package_51.class_1355;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_1039;
   import package_8.class_1315;
   import package_9.class_91;
   import package_91.class_1246;
   import package_95.class_341;
   import package_98.class_777;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.Scroller;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_550 extends class_341
   {
      
      public static const name_3:class_550 = new class_550();
       
      
      private var var_646:int = 0;
      
      public var var_637:Vector.<class_786>;
      
      public var var_831:Vector.<class_786>;
      
      public function class_550(param1:Vector.<class_786> = null, param2:Vector.<class_786> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_637 = new Vector.<class_786>();
         }
         else
         {
            this.var_637 = param1;
         }
         if(param2 == null)
         {
            this.var_831 = new Vector.<class_786>();
         }
         else
         {
            this.var_831 = param2;
         }
      }
      
      override public function method_16() : int
      {
         return -5081;
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
         return 8;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_786 = null;
         var _loc5_:class_786 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 14 % 16 | (65535 & this.var_646) >>> 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_637.length > 0)
         {
            this.var_637.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_786(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_637.push(_loc4_);
            _loc2_++;
         }
         while(this.var_831.length > 0)
         {
            this.var_831.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_786(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_831.push(_loc5_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_786 = null;
         var _loc3_:class_786 = null;
         param1.writeShort(-5081);
         param1.writeShort(65535 & ((65535 & 0) >>> 14 % 16 | (65535 & 0) << 16 - 14 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_637.length);
         for each(_loc2_ in this.var_637)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_831.length);
         for each(_loc3_ in this.var_831)
         {
            _loc3_.method_14(param1);
         }
      }
   }
}
