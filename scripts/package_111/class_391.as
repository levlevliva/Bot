package package_111
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.BorderType2;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.npcconversationpopup.component.target;
   import com.bigpoint.seafight.view.popups.puzzlepopup.vo.PuzzlePopupPieceVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.QuestItemBG;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentSailsVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.mx_internal;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_670;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import package_14.class_47;
   import package_14.class_96;
   import package_152.class_664;
   import package_171.class_981;
   import package_178.class_1060;
   import package_185.class_1136;
   import package_26.class_142;
   import package_36.class_100;
   import package_41.class_103;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_45.class_110;
   import package_46.class_1224;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_43;
   import package_5.class_945;
   import package_5.class_984;
   import package_52.class_310;
   import package_6.class_14;
   import package_69.class_1615;
   import package_7.class_1039;
   import package_89.class_299;
   import package_93.class_339;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_391 extends class_339
   {
      
      public static const name_3:class_391 = new class_391();
       
      
      private var var_646:int = 0;
      
      public var var_877:Vector.<class_859>;
      
      public function class_391(param1:Vector.<class_859> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_877 = new Vector.<class_859>();
         }
         else
         {
            this.var_877 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -3345;
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
         var _loc4_:class_859 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_877.length > 0)
         {
            this.var_877.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_859(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_877.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_859 = null;
         param1.writeShort(-3345);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
         super.method_14(param1);
         param1.writeByte(this.var_877.length);
         for each(_loc2_ in this.var_877)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
