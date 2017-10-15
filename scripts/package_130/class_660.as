package package_130
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.harpoon.Harpoon_VO;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.TextTuple;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingAssistantVoMinimal;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.popups.common.table.TableSkinInnerClass2;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuRelationsTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuRelationsTabController;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopupController;
   import com.bigpoint.seafight.view.popups.multipopup.component.InfoHelpPopupContent;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiButtonVO;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiPopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleWindowSkin;
   import com.greensock.TweenLite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_1470;
   import net.bigpoint.seafight.com.module.guild.class_485;
   import org.apache.flex.collections.VectorCollection;
   import package_124.class_1311;
   import package_124.class_434;
   import package_14.class_47;
   import package_14.class_88;
   import package_143.class_542;
   import package_15.class_48;
   import package_17.class_326;
   import package_2.*;
   import package_29.class_143;
   import package_29.class_144;
   import package_41.class_84;
   import package_45.class_110;
   import package_46.class_1312;
   import package_51.class_1355;
   import package_51.class_974;
   import package_54.class_158;
   import package_54.class_319;
   import package_6.class_14;
   import package_72.class_203;
   import package_92.class_944;
   import package_92.class_962;
   import spark.components.Group;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   
   public final class class_660 implements class_14
   {
      
      public static const name_3:class_660 = new class_660();
       
      
      private var var_646:int = 0;
      
      public var var_73:int = 0;
      
      public function class_660(param1:int = 0)
      {
         super();
         this.var_73 = param1;
      }
      
      public function method_16() : int
      {
         return 14071;
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
         return 1;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 8 % 16 | (65535 & this.var_646) << 16 - 8 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_73 = param1.readByte();
         this.var_73 = 255 & ((255 & this.var_73) << 8 % 8 | (255 & this.var_73) >>> 8 - 8 % 8);
         this.var_73 = this.var_73 > 127?int(this.var_73 - 256):int(this.var_73);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(14071);
         param1.writeShort(65535 & ((65535 & 0) << 8 % 16 | (65535 & 0) >>> 16 - 8 % 16));
         param1.writeByte(255 & ((255 & this.var_73) >>> 8 % 8 | (255 & this.var_73) << 8 - 8 % 8));
      }
   }
}
