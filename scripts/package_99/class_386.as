package package_99
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.hslider.HSliderSkinInnerClass0;
   import com.bigpoint.seafight.view.common.skins.hslider.target;
   import com.bigpoint.seafight.view.popups.common.BorderType2;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.event.component.ToggleButtonGroup;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuOverviewTab;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandMenuOverviewTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusItemVO;
   import com.bigpoint.seafight.view.popups.npcconversationpopup.vo.NpcConversationPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.media.SoundTransform;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.IVisualElement;
   import mx.core.mx_internal;
   import package_121.class_841;
   import package_14.class_47;
   import package_152.class_664;
   import package_20.class_33;
   import package_29.class_565;
   import package_34.class_115;
   import package_34.class_1499;
   import package_41.class_93;
   import package_45.class_110;
   import package_49.class_137;
   import package_5.class_123;
   import package_5.class_984;
   import package_51.class_1355;
   import package_95.class_341;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.effects.easing.Elastic;
   
   use namespace mx_internal;
   
   public final class class_386 extends class_341
   {
      
      public static const name_3:class_386 = new class_386();
       
      
      private var var_646:int = 0;
      
      public var var_804:Vector.<class_841>;
      
      public var var_838:Vector.<class_841>;
      
      public function class_386(param1:Vector.<class_841> = null, param2:Vector.<class_841> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_804 = new Vector.<class_841>();
         }
         else
         {
            this.var_804 = param1;
         }
         if(param2 == null)
         {
            this.var_838 = new Vector.<class_841>();
         }
         else
         {
            this.var_838 = param2;
         }
      }
      
      override public function method_16() : int
      {
         return -13375;
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
         var _loc4_:class_841 = null;
         var _loc5_:class_841 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 9 % 16 | (65535 & this.var_646) >>> 16 - 9 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_804.length > 0)
         {
            this.var_804.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_841(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_804.push(_loc4_);
            _loc2_++;
         }
         while(this.var_838.length > 0)
         {
            this.var_838.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_841(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_838.push(_loc5_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_841 = null;
         var _loc3_:class_841 = null;
         param1.writeShort(-13375);
         param1.writeShort(65535 & ((65535 & 0) >>> 9 % 16 | (65535 & 0) << 16 - 9 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_804.length);
         for each(_loc2_ in this.var_804)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_838.length);
         for each(_loc3_ in this.var_838)
         {
            _loc3_.method_14(param1);
         }
      }
   }
}
