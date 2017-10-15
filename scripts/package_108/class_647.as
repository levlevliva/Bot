package package_108
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.display.utils.createText;
   import com.bigpoint.seafight.model.vo.class_1342;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.net.events.class_943;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BlueButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InventoryDragDropController;
   import com.bigpoint.seafight.view.popups.gempopup.ship.controller.GemConfigDragDropController;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildAnnouncementListItem;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentDecksVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverview;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemConfigFooterVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkinBold;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_136.class_509;
   import package_136.class_926;
   import package_14.class_102;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_144.class_886;
   import package_148.class_820;
   import package_170.class_979;
   import package_174.class_1592;
   import package_190.class_1168;
   import package_190.class_1181;
   import package_190.class_1469;
   import package_204.class_1297;
   import package_210.class_1364;
   import package_210.class_1474;
   import package_22.class_423;
   import package_22.class_655;
   import package_26.class_1088;
   import package_36.class_100;
   import package_41.class_84;
   import package_42.class_1106;
   import package_48.class_996;
   import package_5.class_123;
   import package_5.class_1239;
   import package_5.class_22;
   import package_54.class_1089;
   import package_54.class_163;
   import package_6.class_14;
   import package_72.class_203;
   import package_8.class_1240;
   import package_9.class_17;
   import package_9.class_426;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.core.SpriteVisualElement;
   import spark.events.IndexChangeEvent;
   import spark.filters.GlowFilter;
   
   public class class_647 implements class_14
   {
      
      public static const name_3:class_647 = new class_647();
       
      
      private var var_646:int = 0;
      
      public var name_7:int = 0;
      
      public var name_5:int = 0;
      
      public function class_647(param1:int = 0, param2:int = 0)
      {
         super();
         this.name_7 = param1;
         this.name_5 = param2;
      }
      
      public function method_16() : int
      {
         return -31834;
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
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 15 % 16 | (65535 & this.var_646) << 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_7 = param1.readInt();
         this.name_7 = this.name_7 >>> 12 % 32 | this.name_7 << 32 - 12 % 32;
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-31834);
         param1.writeShort(65535 & ((65535 & 0) << 15 % 16 | (65535 & 0) >>> 16 - 15 % 16));
         param1.writeInt(this.name_7 << 12 % 32 | this.name_7 >>> 32 - 12 % 32);
         param1.writeShort(this.name_5);
      }
   }
}
