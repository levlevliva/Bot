package package_7
{
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_1371;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.skins.hslider.HSliderTrackSkin;
   import com.bigpoint.seafight.view.popups.common.BorderType0;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxLevelItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gemcraftmenu.EpicWinPopupVo;
   import com.greensock.TweenMax;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.StyleSheet;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import package_121.class_841;
   import package_14.class_51;
   import package_190.class_1168;
   import package_5.class_22;
   import package_57.class_171;
   import package_6.class_14;
   import package_89.class_1378;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_750 implements class_14
   {
      
      public static const name_3:class_750 = new class_750();
       
      
      private var var_646:int = 0;
      
      public var var_26:int = 0;
      
      public var name_14:int = 0;
      
      public function class_750(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_26 = param2;
         this.name_14 = param1;
      }
      
      public function method_16() : int
      {
         return 10348;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_26 = param1.readShort();
         this.var_26 = 65535 & ((65535 & this.var_26) << 13 % 16 | (65535 & this.var_26) >>> 16 - 13 % 16);
         this.var_26 = this.var_26 > 32767?int(this.var_26 - 65536):int(this.var_26);
         this.name_14 = param1.readShort();
         this.name_14 = 65535 & ((65535 & this.name_14) >>> 14 % 16 | (65535 & this.name_14) << 16 - 14 % 16);
         this.name_14 = this.name_14 > 32767?int(this.name_14 - 65536):int(this.name_14);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(10348);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         param1.writeShort(65535 & ((65535 & this.var_26) >>> 13 % 16 | (65535 & this.var_26) << 16 - 13 % 16));
         param1.writeShort(65535 & ((65535 & this.name_14) << 14 % 16 | (65535 & this.name_14) >>> 16 - 14 % 16));
      }
   }
}
