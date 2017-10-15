package package_40
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowBoosterItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.GuildSizeItemRenderer;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModuleVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsStatsComponent;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.target;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.filters.BevelFilter;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.net.XMLSocket;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_111.class_727;
   import package_131.class_573;
   import package_14.class_1535;
   import package_14.class_47;
   import package_166.class_1502;
   import package_17.class_54;
   import package_171.class_1275;
   import package_29.class_166;
   import package_34.class_1499;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_959;
   import package_49.class_137;
   import package_6.class_14;
   import package_72.class_203;
   import package_9.class_120;
   import package_9.class_17;
   import package_9.class_91;
   import package_92.class_1278;
   import package_92.class_944;
   import package_92.class_995;
   import package_99.class_786;
   import spark.components.Button;
   import spark.components.DataGroup;
   import spark.components.HGroup;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_334 implements class_14
   {
      
      public static const name_3:class_334 = new class_334();
      
      public static const const_2728:int = 0;
      
      public static const const_1418:int = 1;
      
      public static const const_1625:int = 2;
      
      public static const const_2354:int = 3;
      
      public static const const_1298:int = 4;
      
      public static const const_1379:int = 5;
      
      public static const const_1168:int = 6;
       
      
      private var var_646:int = 0;
      
      public var name_4:class_84;
      
      public var name_5:int = 0;
      
      public function class_334(param1:int = 0, param2:class_84 = null)
      {
         super();
         if(param2 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param2;
         }
         this.name_5 = param1;
      }
      
      public function method_16() : int
      {
         return 12970;
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
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 2 % 16 | (65535 & this.name_4.var_6) << 16 - 2 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(12970);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 2 % 16 | (65535 & this.name_4.var_6) >>> 16 - 2 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeShort(this.name_5);
      }
   }
}
