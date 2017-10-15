package package_121
{
   import com.bigpoint.seafight.model.inventory.vo.extensions.Ext_VO;
   import com.bigpoint.seafight.model.vo.class_1037;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.skins.DynamicImageButtonSkin;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleWindowData;
   import com.bigpoint.seafight.view.popups.common.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildTreasuryLogListItem;
   import com.bigpoint.seafight.view.popups.quest.npc.component.NpcQuestList;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.QuestDisplayVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.gemwindow.CmdSL_OpenGemWindow;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColorStroke;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.seafight.com.module.event.class_616;
   import net.bigpoint.seafight.com.module.guild.GuildLogAction;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import net.bigpoint.seafight.com.module.guild.class_476;
   import package_11.class_130;
   import package_125.class_497;
   import package_14.class_47;
   import package_14.class_88;
   import package_166.class_1350;
   import package_171.class_1273;
   import package_181.class_1081;
   import package_190.class_1181;
   import package_28.class_311;
   import package_29.class_565;
   import package_30.class_62;
   import package_34.class_107;
   import package_41.class_93;
   import package_47.class_128;
   import package_5.class_214;
   import package_5.class_43;
   import package_5.class_984;
   import package_54.class_161;
   import package_58.class_175;
   import package_6.class_14;
   import package_9.class_899;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VScrollBar;
   import spark.effects.Move;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.Rect;
   
   public final class class_424 implements class_14
   {
      
      public static const name_3:class_424 = new class_424();
       
      
      private var var_646:int = 0;
      
      public var var_751:Vector.<class_616>;
      
      public var var_77:Vector.<class_841>;
      
      public function class_424(param1:Vector.<class_616> = null, param2:Vector.<class_841> = null)
      {
         super();
         if(param1 == null)
         {
            this.var_751 = new Vector.<class_616>();
         }
         else
         {
            this.var_751 = param1;
         }
         if(param2 == null)
         {
            this.var_77 = new Vector.<class_841>();
         }
         else
         {
            this.var_77 = param2;
         }
      }
      
      public function method_16() : int
      {
         return -14712;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_616 = null;
         var _loc5_:class_841 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 15 % 16 | (65535 & this.var_646) << 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_751.length > 0)
         {
            this.var_751.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_616(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_751.push(_loc4_);
            _loc2_++;
         }
         while(this.var_77.length > 0)
         {
            this.var_77.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = class_841(class_93.method_26().method_25(param1.readShort()));
            _loc5_.method_15(param1);
            this.var_77.push(_loc5_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_616 = null;
         var _loc3_:class_841 = null;
         param1.writeShort(-14712);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         param1.writeByte(this.var_751.length);
         for each(_loc2_ in this.var_751)
         {
            _loc2_.method_14(param1);
         }
         param1.writeByte(this.var_77.length);
         for each(_loc3_ in this.var_77)
         {
            _loc3_.method_14(param1);
         }
      }
   }
}
