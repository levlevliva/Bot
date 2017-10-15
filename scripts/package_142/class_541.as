package package_142
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_1004;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SafeHavenGuildWindow;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.event.modules.common.skins.NpcKillsModuleSkin;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointBar;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.colorspopup.GuildColorsPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.colorspopup.GuildColorsPopupController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.SafeHavenGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.SafeHavenGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildColorsPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.SafeHavenGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipPreview;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.events.CollectionEventKind;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_604;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_646;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_665;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_784;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_912;
   import net.bigpoint.seafight.com.module.useraction.class_364;
   import org.osflash.signals.ISlot;
   import org.osflash.signals.Slot;
   import package_123.class_652;
   import package_123.class_837;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_96;
   import package_154.class_677;
   import package_166.class_1589;
   import package_17.class_54;
   import package_190.class_1181;
   import package_20.class_33;
   import package_204.class_1300;
   import package_29.class_565;
   import package_30.class_1013;
   import package_30.class_62;
   import package_32.class_64;
   import package_36.class_100;
   import package_41.class_84;
   import package_45.class_110;
   import package_46.class_1224;
   import package_48.class_1472;
   import package_48.class_1473;
   import package_49.class_140;
   import package_5.class_1050;
   import package_5.class_123;
   import package_51.class_148;
   import package_51.class_974;
   import package_54.class_1006;
   import package_6.class_14;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.TitleWindow;
   import spark.components.VScrollBar;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   public final class class_541 implements class_14
   {
      
      public static const name_3:class_541 = new class_541();
       
      
      private var var_646:int = 0;
      
      public var var_811:Vector.<int>;
      
      public var var_456:int = 0;
      
      public function class_541(param1:int = 0, param2:Vector.<int> = null)
      {
         super();
         if(param2 == null)
         {
            this.var_811 = new Vector.<int>();
         }
         else
         {
            this.var_811 = param2;
         }
         this.var_456 = param1;
      }
      
      public function method_16() : int
      {
         return 18023;
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
         return 5;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:* = 0;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 10 % 16 | (65535 & this.var_646) >>> 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_811.length > 0)
         {
            this.var_811.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = int(param1.readByte());
            _loc4_ = 255 & ((255 & _loc4_) >>> 6 % 8 | (255 & _loc4_) << 8 - 6 % 8);
            _loc4_ = int(_loc4_ > 127?int(_loc4_ - 256):int(_loc4_));
            this.var_811.push(_loc4_);
            _loc2_++;
         }
         this.var_456 = param1.readByte();
         this.var_456 = 255 & ((255 & this.var_456) >>> 10 % 8 | (255 & this.var_456) << 8 - 10 % 8);
         this.var_456 = this.var_456 > 127?int(this.var_456 - 256):int(this.var_456);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         param1.writeShort(18023);
         param1.writeShort(65535 & ((65535 & 0) >>> 10 % 16 | (65535 & 0) << 16 - 10 % 16));
         param1.writeByte(this.var_811.length);
         for each(_loc2_ in this.var_811)
         {
            param1.writeByte(255 & ((255 & _loc2_) << 6 % 8 | (255 & _loc2_) >>> 8 - 6 % 8));
         }
         param1.writeByte(255 & ((255 & this.var_456) << 10 % 8 | (255 & this.var_456) >>> 8 - 10 % 8));
      }
   }
}
