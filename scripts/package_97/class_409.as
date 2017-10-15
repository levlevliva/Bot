package package_97
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.gem.Gem_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_1004;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_127;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowBoosterItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointBar;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.target;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.vo.GemPopupBootybagTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.colorspopup.GuildColorsPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.colorspopup.GuildColorsPopupController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.GuildRelationsTableColumnHeaderRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildColorsPopupVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.mx_internal;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1554;
   import net.bigpoint.seafight.com.module.guild.class_669;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import net.bigpoint.seafight.com.module.guild.class_701;
   import net.bigpoint.seafight.com.module.guild.class_847;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_104.class_1160;
   import package_104.class_641;
   import package_121.class_841;
   import package_130.class_711;
   import package_133.class_595;
   import package_14.class_1535;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_166.class_1502;
   import package_17.class_54;
   import package_170.class_979;
   import package_190.*;
   import package_20.class_109;
   import package_20.class_33;
   import package_30.class_62;
   import package_32.class_64;
   import package_41.class_103;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_959;
   import package_45.class_110;
   import package_46.class_1224;
   import package_46.class_1455;
   import package_46.class_1501;
   import package_49.class_880;
   import package_5.class_945;
   import package_5.class_984;
   import package_51.class_974;
   import package_52.class_1096;
   import package_69.class_978;
   import package_76.class_243;
   import package_8.class_1315;
   import package_9.class_17;
   import package_92.class_1278;
   import package_92.class_944;
   import package_95.class_341;
   import spark.components.PopUpAnchor;
   import spark.events.IndexChangeEvent;
   import spark.layouts.TileLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_409 extends class_341
   {
      
      public static const name_3:class_409 = new class_409();
       
      
      private var var_646:int = 0;
      
      public var var_514:int = 0;
      
      public var var_220:int = 0;
      
      public var var_141:int = 0;
      
      public var var_105:int = 0;
      
      public var var_618:class_880;
      
      public var var_585:class_880;
      
      public var var_622:class_880;
      
      public var var_232:int = 0;
      
      public var var_814:Vector.<class_588>;
      
      public function class_409(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:int = 0, param6:class_880 = null, param7:class_880 = null, param8:class_880 = null, param9:Vector.<class_588> = null)
      {
         super();
         this.var_514 = param2;
         this.var_220 = param4;
         this.var_141 = param5;
         this.var_105 = param3;
         if(param6 == null)
         {
            this.var_618 = new class_880();
         }
         else
         {
            this.var_618 = param6;
         }
         if(param8 == null)
         {
            this.var_585 = new class_880();
         }
         else
         {
            this.var_585 = param8;
         }
         if(param7 == null)
         {
            this.var_622 = new class_880();
         }
         else
         {
            this.var_622 = param7;
         }
         this.var_232 = param1;
         if(param9 == null)
         {
            this.var_814 = new Vector.<class_588>();
         }
         else
         {
            this.var_814 = param9;
         }
      }
      
      override public function method_16() : int
      {
         return 14811;
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
         return 14;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_588 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.var_514 = param1.readShort();
         this.var_514 = 65535 & ((65535 & this.var_514) << 14 % 16 | (65535 & this.var_514) >>> 16 - 14 % 16);
         this.var_514 = this.var_514 > 32767?int(this.var_514 - 65536):int(this.var_514);
         this.var_220 = param1.readInt();
         this.var_220 = this.var_220 >>> 14 % 32 | this.var_220 << 32 - 14 % 32;
         this.var_141 = param1.readShort();
         this.var_141 = 65535 & ((65535 & this.var_141) >>> 13 % 16 | (65535 & this.var_141) << 16 - 13 % 16);
         this.var_141 = this.var_141 > 32767?int(this.var_141 - 65536):int(this.var_141);
         this.var_105 = param1.readShort();
         this.var_105 = 65535 & ((65535 & this.var_105) << 5 % 16 | (65535 & this.var_105) >>> 16 - 5 % 16);
         this.var_105 = this.var_105 > 32767?int(this.var_105 - 65536):int(this.var_105);
         this.var_618 = class_880(class_93.method_26().method_25(param1.readShort()));
         this.var_618.method_15(param1);
         this.var_585 = class_880(class_93.method_26().method_25(param1.readShort()));
         this.var_585.method_15(param1);
         this.var_622 = class_880(class_93.method_26().method_25(param1.readShort()));
         this.var_622.method_15(param1);
         this.var_232 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_814.length > 0)
         {
            this.var_814.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_588(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_814.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_588 = null;
         param1.writeShort(14811);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         super.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_514) >>> 14 % 16 | (65535 & this.var_514) << 16 - 14 % 16));
         param1.writeInt(this.var_220 << 14 % 32 | this.var_220 >>> 32 - 14 % 32);
         param1.writeShort(65535 & ((65535 & this.var_141) << 13 % 16 | (65535 & this.var_141) >>> 16 - 13 % 16));
         param1.writeShort(65535 & ((65535 & this.var_105) >>> 5 % 16 | (65535 & this.var_105) << 16 - 5 % 16));
         this.var_618.method_14(param1);
         this.var_585.method_14(param1);
         this.var_622.method_14(param1);
         param1.writeShort(this.var_232);
         param1.writeByte(this.var_814.length);
         for each(_loc2_ in this.var_814)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
