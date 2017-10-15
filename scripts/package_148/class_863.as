package package_148
{
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_1020;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.shipcoverflow.components.ShipCoverFlowItem;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyPopup;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuSearchTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildSearchListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuAscendTabVo;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.class_207;
   import com.bigpoint.seafight.view.userInterface.class_208;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.class_211;
   import com.bigpoint.seafight.view.userInterface.class_212;
   import com.bigpoint.seafight.view.userInterface.class_215;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.bigpoint.seafight.view.userInterface.class_221;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.PropTween;
   import com.greensock.core.TweenCore;
   import com.greensock.events.TweenEvent;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_134.class_504;
   import package_14.class_220;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_94;
   import package_17.class_224;
   import package_171.class_981;
   import package_185.class_1136;
   import package_190.class_1562;
   import package_220.class_1601;
   import package_26.class_142;
   import package_26.class_218;
   import package_34.class_107;
   import package_34.class_115;
   import package_41.class_89;
   import package_41.class_93;
   import package_46.class_1224;
   import package_46.class_1356;
   import package_48.class_996;
   import package_49.class_137;
   import package_5.class_41;
   import package_5.class_43;
   import package_50.class_219;
   import package_6.class_14;
   import package_69.class_978;
   import package_72.class_203;
   import package_76.class_279;
   import package_9.class_91;
   import package_91.class_1246;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.layouts.TileLayout;
   import spark.primitives.Rect;
   
   public final class class_863 implements class_14
   {
      
      public static const name_3:class_863 = new class_863();
       
      
      private var var_646:int = 0;
      
      public var var_617:Vector.<class_606>;
      
      public var var_796:int = 0;
      
      public function class_863(param1:int = 0, param2:Vector.<class_606> = null)
      {
         super();
         if(param2 == null)
         {
            this.var_617 = new Vector.<class_606>();
         }
         else
         {
            this.var_617 = param2;
         }
         this.var_796 = param1;
      }
      
      public function method_16() : int
      {
         return 18217;
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
         var _loc4_:class_606 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_617.length > 0)
         {
            this.var_617.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_606(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_617.push(_loc4_);
            _loc2_++;
         }
         this.var_796 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_606 = null;
         param1.writeShort(18217);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         param1.writeByte(this.var_617.length);
         for each(_loc2_ in this.var_617)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(this.var_796);
      }
   }
}
