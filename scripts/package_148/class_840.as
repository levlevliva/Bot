package package_148
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.SimpleRedButtonSkin;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InventoryDragDropController;
   import com.bigpoint.seafight.view.popups.currencypopup.CurrencyPopupController;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialSocket;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.vo.CraftingMaterialItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.leaguemenu.skins.LeagueMenuRankingTabButtonListSkin;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipselection.vo.SelectionVListItemGemVo;
   import com.bigpoint.seafight.view.popups.spymenu.WindowSettingsController;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SmallScrollBarSkin;
   import com.greensock.core.TweenCore;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.UIComponent;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_775;
   import net.bigpoint.seafight.com.module.guild.class_461;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_10.class_18;
   import package_10.class_38;
   import package_100.class_729;
   import package_126.class_453;
   import package_126.class_488;
   import package_126.class_508;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_17.class_325;
   import package_170.class_979;
   import package_210.class_1364;
   import package_23.class_42;
   import package_26.class_101;
   import package_28.class_56;
   import package_29.class_166;
   import package_29.class_57;
   import package_34.class_116;
   import package_36.class_100;
   import package_41.class_93;
   import package_47.class_129;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_945;
   import package_5.class_984;
   import package_53.class_1100;
   import package_54.class_158;
   import package_54.class_160;
   import package_54.class_319;
   import package_6.class_14;
   import package_72.class_203;
   import package_84.class_270;
   import package_89.class_331;
   import package_9.class_426;
   import package_9.class_836;
   import package_92.class_1278;
   import package_98.class_777;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.components.VScrollBar;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.layouts.VerticalLayout;
   
   public final class class_840 implements class_14
   {
      
      public static const name_3:class_840 = new class_840();
       
      
      private var var_646:int = 0;
      
      public var var_779:Vector.<class_820>;
      
      public var var_1156:class_863;
      
      public var var_1161:class_863;
      
      public var var_731:Vector.<class_697>;
      
      public var var_1086:class_863;
      
      public var var_465:int = 0;
      
      public function class_840(param1:Vector.<class_820> = null, param2:Vector.<class_697> = null, param3:class_863 = null, param4:class_863 = null, param5:class_863 = null, param6:int = 0)
      {
         super();
         if(param1 == null)
         {
            this.var_779 = new Vector.<class_820>();
         }
         else
         {
            this.var_779 = param1;
         }
         if(param5 == null)
         {
            this.var_1156 = new class_863();
         }
         else
         {
            this.var_1156 = param5;
         }
         if(param3 == null)
         {
            this.var_1161 = new class_863();
         }
         else
         {
            this.var_1161 = param3;
         }
         if(param2 == null)
         {
            this.var_731 = new Vector.<class_697>();
         }
         else
         {
            this.var_731 = param2;
         }
         if(param4 == null)
         {
            this.var_1086 = new class_863();
         }
         else
         {
            this.var_1086 = param4;
         }
         this.var_465 = param6;
      }
      
      public function method_16() : int
      {
         return 8904;
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
         return 10;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_820 = null;
         var _loc5_:class_697 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 13 % 16 | (65535 & this.var_646) << 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_779.length > 0)
         {
            this.var_779.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_820(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_779.push(_loc4_);
            _loc2_++;
         }
         this.var_1156 = class_863(class_93.method_26().method_25(param1.readShort()));
         this.var_1156.method_15(param1);
         this.var_1161 = class_863(class_93.method_26().method_25(param1.readShort()));
         this.var_1161.method_15(param1);
         while(this.var_731.length > 0)
         {
            this.var_731.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_697(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_731.push(_loc5_);
            _loc2_++;
         }
         this.var_1086 = class_863(class_93.method_26().method_25(param1.readShort()));
         this.var_1086.method_15(param1);
         this.var_465 = param1.readShort();
         this.var_465 = 65535 & ((65535 & this.var_465) << 16 % 16 | (65535 & this.var_465) >>> 16 - 16 % 16);
         this.var_465 = this.var_465 > 32767?int(this.var_465 - 65536):int(this.var_465);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_820 = null;
         var _loc3_:class_697 = null;
         param1.writeShort(8904);
         param1.writeShort(65535 & ((65535 & 0) << 13 % 16 | (65535 & 0) >>> 16 - 13 % 16));
         param1.writeByte(this.var_779.length);
         for each(_loc2_ in this.var_779)
         {
            _loc2_.method_14(param1);
         }
         this.var_1156.method_14(param1);
         this.var_1161.method_14(param1);
         param1.writeByte(this.var_731.length);
         for each(_loc3_ in this.var_731)
         {
            _loc3_.method_14(param1);
         }
         this.var_1086.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.var_465) >>> 16 % 16 | (65535 & this.var_465) << 16 - 16 % 16));
      }
   }
}
