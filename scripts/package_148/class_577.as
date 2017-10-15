package package_148
{
   import com.bigpoint.seafight.model.vo.class_1033;
   import com.bigpoint.seafight.model.vo.class_172;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowSlot;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.SmallGreenPayButton;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderCheckBoxRenderer;
   import com.bigpoint.seafight.view.popups.event.modules.common.BulletText;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowUserModel;
   import com.bigpoint.seafight.view.popups.shipequipment.component.common.AmsValuePair;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.FavoriteButtonSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemConfigFooterVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityTriggerEvent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.events.FlexEvent;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BCBitmapData;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_10.class_18;
   import package_10.class_38;
   import package_110.class_856;
   import package_14.class_102;
   import package_14.class_1377;
   import package_14.class_47;
   import package_14.class_49;
   import package_140.class_985;
   import package_166.class_1345;
   import package_184.*;
   import package_34.class_116;
   import package_41.class_84;
   import package_41.class_89;
   import package_42.class_98;
   import package_49.class_140;
   import package_5.class_133;
   import package_5.class_22;
   import package_5.class_43;
   import package_6.class_14;
   import package_69.class_1464;
   import package_69.class_978;
   import package_72.class_203;
   import package_8.class_1317;
   import package_88.class_1093;
   import package_93.class_987;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.ToggleButton;
   import spark.components.VScrollBar;
   import spark.primitives.BitmapImage;
   
   public final class class_577 implements class_14
   {
      
      public static const name_3:class_577 = new class_577();
       
      
      private var var_646:int = 0;
      
      public var name_6:int = 0;
      
      public var var_53:int = 0;
      
      public var name_10:int = 0;
      
      public function class_577(param1:int = 0, param2:int = 0, param3:int = 0)
      {
         super();
         this.name_6 = param2;
         this.var_53 = param1;
         this.name_10 = param3;
      }
      
      public function method_16() : int
      {
         return -17523;
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
         return 6;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 6 % 16 | (65535 & this.var_646) >>> 16 - 6 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_6 = param1.readShort();
         this.name_6 = 65535 & ((65535 & this.name_6) << 11 % 16 | (65535 & this.name_6) >>> 16 - 11 % 16);
         this.name_6 = this.name_6 > 32767?int(this.name_6 - 65536):int(this.name_6);
         this.var_53 = param1.readShort();
         this.var_53 = 65535 & ((65535 & this.var_53) >>> 4 % 16 | (65535 & this.var_53) << 16 - 4 % 16);
         this.var_53 = this.var_53 > 32767?int(this.var_53 - 65536):int(this.var_53);
         this.name_10 = param1.readShort();
         this.name_10 = 65535 & ((65535 & this.name_10) << 11 % 16 | (65535 & this.name_10) >>> 16 - 11 % 16);
         this.name_10 = this.name_10 > 32767?int(this.name_10 - 65536):int(this.name_10);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-17523);
         param1.writeShort(65535 & ((65535 & 0) >>> 6 % 16 | (65535 & 0) << 16 - 6 % 16));
         param1.writeShort(65535 & ((65535 & this.name_6) >>> 11 % 16 | (65535 & this.name_6) << 16 - 11 % 16));
         param1.writeShort(65535 & ((65535 & this.var_53) << 4 % 16 | (65535 & this.var_53) >>> 16 - 4 % 16));
         param1.writeShort(65535 & ((65535 & this.name_10) >>> 11 % 16 | (65535 & this.name_10) << 16 - 11 % 16));
      }
   }
}
