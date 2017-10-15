package package_130
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentButtonClickEvent;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingAssistantVoMinimal;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildAnnouncementListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopupController;
   import com.bigpoint.seafight.view.popups.multipopup.component.InfoHelpPopupContent;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiButtonVO;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiPopupVo;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
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
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleWindowSkin;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.class_1470;
   import net.bigpoint.seafight.com.module.guild.class_485;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import org.apache.flex.collections.VectorCollection;
   import package_14.class_220;
   import package_14.class_47;
   import package_14.class_49;
   import package_17.class_224;
   import package_26.class_218;
   import package_34.class_1499;
   import package_41.class_93;
   import package_45.class_110;
   import package_49.class_880;
   import package_5.class_22;
   import package_50.class_219;
   import package_51.class_148;
   import package_51.class_974;
   import package_6.class_14;
   import package_72.class_203;
   import package_97.class_409;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   public final class class_675 implements class_14
   {
      
      public static const name_3:class_675 = new class_675();
       
      
      private var var_646:int = 0;
      
      public var var_73:int = 0;
      
      public var var_365:int = 0;
      
      public var name_10:int = 0;
      
      public function class_675(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_73 = param1;
         this.var_365 = param3;
         this.name_10 = param2;
      }
      
      public function method_16() : int
      {
         return 15230;
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
         return 2;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_73 = param1.readByte();
         this.var_73 = 255 & ((255 & this.var_73) << 15 % 8 | (255 & this.var_73) >>> 8 - 15 % 8);
         this.var_73 = this.var_73 > 127?int(this.var_73 - 256):int(this.var_73);
         this.var_365 = param1.readShort();
         this.name_10 = param1.readByte();
         this.name_10 = 255 & ((255 & this.name_10) << 8 % 8 | (255 & this.name_10) >>> 8 - 8 % 8);
         this.name_10 = this.name_10 > 127?int(this.name_10 - 256):int(this.name_10);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(15230);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         param1.writeByte(255 & ((255 & this.var_73) >>> 15 % 8 | (255 & this.var_73) << 8 - 15 % 8));
         param1.writeShort(this.var_365);
         param1.writeByte(255 & ((255 & this.name_10) >>> 8 % 8 | (255 & this.name_10) << 8 - 8 % 8));
      }
   }
}
