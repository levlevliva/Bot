package package_111
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentButtonClickEvent;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.IGemsInventory;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.LogCategoryCheckBox;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPresetsVo;
   import com.bigpoint.seafight.view.popups.spymenu.component.itemrenderer.SpyNameItemRenderer;
   import com.greensock.TweenLite;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import package_104.class_448;
   import package_104.class_803;
   import package_104.class_989;
   import package_14.class_47;
   import package_14.class_49;
   import package_143.class_933;
   import package_16.class_28;
   import package_166.class_971;
   import package_184.class_1609;
   import package_20.class_109;
   import package_26.class_1088;
   import package_5.class_22;
   import package_5.class_43;
   import package_52.class_168;
   import package_6.class_14;
   import package_7.class_1039;
   import package_88.class_1014;
   import package_89.class_1011;
   import package_97.class_409;
   import spark.components.Group;
   import spark.components.gridClasses.GridColumn;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   public final class class_735 implements class_14
   {
      
      public static const name_3:class_735 = new class_735();
       
      
      private var var_646:int = 0;
      
      public var var_861:int = 0;
      
      public var var_826:int = 0;
      
      public var var_1575:int = 0;
      
      public var var_1698:int = 0;
      
      public var name_15:int = 0;
      
      public function class_735(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:int = 0)
      {
         super();
         this.var_861 = param3;
         this.var_826 = param5;
         this.var_1575 = param4;
         this.var_1698 = param2;
         this.name_15 = param1;
      }
      
      public function method_16() : int
      {
         return 11039;
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
         return 12;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 16 % 16 | (65535 & this.var_646) << 16 - 16 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_861 = param1.readInt();
         this.var_861 = this.var_861 << 12 % 32 | this.var_861 >>> 32 - 12 % 32;
         this.var_826 = param1.readInt();
         this.var_826 = this.var_826 << 13 % 32 | this.var_826 >>> 32 - 13 % 32;
         this.var_1575 = param1.readShort();
         this.var_1698 = param1.readShort();
         this.name_15 = param1.readInt();
         this.name_15 = this.name_15 << 12 % 32 | this.name_15 >>> 32 - 12 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(11039);
         param1.writeShort(65535 & ((65535 & 0) << 16 % 16 | (65535 & 0) >>> 16 - 16 % 16));
         param1.writeInt(this.var_861 >>> 12 % 32 | this.var_861 << 32 - 12 % 32);
         param1.writeInt(this.var_826 >>> 13 % 32 | this.var_826 << 32 - 13 % 32);
         param1.writeShort(this.var_1575);
         param1.writeShort(this.var_1698);
         param1.writeInt(this.name_15 >>> 12 % 32 | this.name_15 << 32 - 12 % 32);
      }
   }
}
