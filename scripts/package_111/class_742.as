package package_111
{
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.BoardingStatsComponent;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InventoryDragDropController;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuCurrencyItemRenderer;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gemcraftmenu.EpicWinPopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.infomessagemenu.InfoMessageMenu;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_513;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_104.class_448;
   import package_104.class_989;
   import package_14.class_286;
   import package_14.class_47;
   import package_14.class_49;
   import package_141.class_804;
   import package_17.class_29;
   import package_170.class_979;
   import package_177.class_1049;
   import package_190.class_1168;
   import package_205.class_1353;
   import package_210.class_1364;
   import package_214.class_1604;
   import package_26.class_204;
   import package_41.class_93;
   import package_46.class_1224;
   import package_5.class_123;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_43;
   import package_51.class_1355;
   import package_53.class_1100;
   import package_6.class_14;
   import package_72.class_203;
   import package_89.class_1378;
   import package_92.class_336;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   public final class class_742 extends class_741
   {
      
      public static const name_3:class_742 = new class_742();
       
      
      private var var_646:int = 0;
      
      public var name_13:String = "";
      
      public function class_742(param1:String = "")
      {
         super();
         this.name_13 = param1;
      }
      
      override public function method_16() : int
      {
         return 944;
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
         return 2;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.name_13 = param1.readUTF();
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(944);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
         super.method_14(param1);
         param1.writeUTF(this.name_13);
      }
   }
}
