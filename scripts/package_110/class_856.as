package package_110
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.inventory.vo.crew.DefaultCrew_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.net.events.class_1021;
   import com.bigpoint.seafight.tools.class_46;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowCastleItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InventoryDragDropController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tooltips.TowerListItemToolTip;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiButtonVO;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsStatsComponent;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.containers.Form;
   import mx.core.UIComponentDescriptor;
   import mx.events.ToolTipEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import package_107.class_693;
   import package_11.class_130;
   import package_14.class_200;
   import package_14.class_25;
   import package_14.class_47;
   import package_14.class_51;
   import package_17.class_990;
   import package_170.class_979;
   import package_204.class_1531;
   import package_210.class_1364;
   import package_211.class_1369;
   import package_23.class_42;
   import package_27.class_53;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_935;
   import package_5.class_214;
   import package_51.class_1103;
   import package_52.class_306;
   import package_54.class_163;
   import package_54.class_319;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public final class class_856 implements class_14
   {
      
      public static const name_3:class_856 = new class_856();
       
      
      private var var_646:int = 0;
      
      public var var_1504:Boolean = false;
      
      public var var_1847:Boolean = false;
      
      public var name_7:class_84;
      
      public var var_649:Boolean = false;
      
      public var name_95:Boolean = false;
      
      public var var_647:Number = 0;
      
      public var name_10:int = 0;
      
      public var var_253:Boolean = false;
      
      public var name_13:String = "";
      
      public var var_1897:Boolean = false;
      
      public function class_856(param1:class_84 = null, param2:String = "", param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:int = 0, param10:Number = 0)
      {
         super();
         this.var_1504 = param8;
         this.var_1847 = param6;
         if(param1 == null)
         {
            this.name_7 = new class_84();
         }
         else
         {
            this.name_7 = param1;
         }
         this.var_649 = param4;
         this.name_95 = param5;
         this.var_647 = param10;
         this.name_10 = param9;
         this.var_253 = param3;
         this.name_13 = param2;
         this.var_1897 = param7;
      }
      
      public function method_16() : int
      {
         return -455;
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
         return 17;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 8 % 16 | (65535 & this.var_646) >>> 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1504 = param1.readBoolean();
         this.var_1847 = param1.readBoolean();
         this.name_7 = class_84(class_93.method_26().method_25(param1.readShort()));
         this.name_7.method_15(param1);
         this.var_649 = param1.readBoolean();
         this.name_95 = param1.readBoolean();
         this.var_647 = param1.readDouble();
         this.name_10 = param1.readByte();
         this.name_10 = 255 & ((255 & this.name_10) << 16 % 8 | (255 & this.name_10) >>> 8 - 16 % 8);
         this.name_10 = this.name_10 > 127?int(this.name_10 - 256):int(this.name_10);
         this.var_253 = param1.readBoolean();
         this.name_13 = param1.readUTF();
         this.var_1897 = param1.readBoolean();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-455);
         param1.writeShort(65535 & ((65535 & 0) >>> 8 % 16 | (65535 & 0) << 16 - 8 % 16));
         param1.writeBoolean(this.var_1504);
         param1.writeBoolean(this.var_1847);
         this.name_7.method_14(param1);
         param1.writeBoolean(this.var_649);
         param1.writeBoolean(this.name_95);
         param1.writeDouble(this.var_647);
         param1.writeByte(255 & ((255 & this.name_10) >>> 16 % 8 | (255 & this.name_10) << 8 - 16 % 8));
         param1.writeBoolean(this.var_253);
         param1.writeUTF(this.name_13);
         param1.writeBoolean(this.var_1897);
      }
   }
}
