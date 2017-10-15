package package_91
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentButtonClickEvent;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.texteditor.RichTextEditor;
   import com.bigpoint.seafight.view.popups.event.modules.faction.itemRenderer.FactionPhaseRankingItem;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.GemPopupCraftingTab;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.controller.GemPopupCraftingTabController;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.GuildRelationsTableColumnHeaderRenderer;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPresetsVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.presets.PresetComboBoxData;
   import com.greensock.TweenLite;
   import com.greensock.easing.Strong;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.events.ToolTipEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import package_104.class_1160;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_94;
   import package_14.class_96;
   import package_184.class_1609;
   import package_36.class_1417;
   import package_41.class_84;
   import package_49.class_137;
   import package_5.class_133;
   import package_5.class_22;
   import package_51.class_1355;
   import package_6.class_14;
   import package_97.class_409;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_734 implements class_14
   {
      
      public static const name_3:class_734 = new class_734();
       
      
      private var var_646:int = 0;
      
      public var var_183:int = 0;
      
      public var name_4:class_84;
      
      public function class_734(param1:class_84 = null, param2:int = 0)
      {
         super();
         this.var_183 = param2;
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 32276;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_183 = param1.readShort();
         this.var_183 = 65535 & ((65535 & this.var_183) << 4 % 16 | (65535 & this.var_183) >>> 16 - 4 % 16);
         this.var_183 = this.var_183 > 32767?int(this.var_183 - 65536):int(this.var_183);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 2 % 16 | (65535 & this.name_4.var_6) << 16 - 2 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(32276);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         param1.writeShort(65535 & ((65535 & this.var_183) >>> 4 % 16 | (65535 & this.var_183) << 16 - 4 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 2 % 16 | (65535 & this.name_4.var_6) >>> 16 - 2 % 16));
         param1.writeDouble(this.name_4.name_4);
      }
   }
}
