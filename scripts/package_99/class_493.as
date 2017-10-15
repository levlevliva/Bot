package package_99
{
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.populateLoot;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.skins.GuildMenuIslandTowerListSkin;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuFoundTabVo;
   import com.bigpoint.seafight.view.popups.reputation.ReputationFavoriteEvent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatisticItem;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_11.class_130;
   import package_14.class_47;
   import package_185.class_1136;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_47.class_128;
   import package_47.class_135;
   import package_47.class_930;
   import package_49.class_137;
   import package_49.class_880;
   import package_5.class_1239;
   import package_5.class_133;
   import package_72.class_203;
   import package_8.class_1240;
   import package_88.class_1093;
   import package_88.class_290;
   import package_95.class_341;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_493 extends class_341
   {
      
      public static const name_3:class_493 = new class_493();
       
      
      private var var_646:int = 0;
      
      public var var_840:Vector.<class_911>;
      
      public function class_493(param1:Vector.<class_911> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_840 = new Vector.<class_911>();
         }
         else
         {
            this.var_840 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return 19726;
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
         return 4;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_911 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_840.length > 0)
         {
            this.var_840.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_911(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_840.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_911 = null;
         param1.writeShort(19726);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_840.length);
         for each(_loc2_ in this.var_840)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
