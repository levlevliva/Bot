package package_111
{
   import com.adobe.serialization.json.JSONToken;
   import com.adobe.serialization.json.JSONTokenType;
   import com.adobe.serialization.json.JSONTokenizer;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.net.events.class_1446;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuEquipmentTab;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandMenuEquipmentTabController;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import org.osflash.signals.SlotList;
   import package_103.class_525;
   import package_14.class_102;
   import package_14.class_47;
   import package_140.class_540;
   import package_16.class_28;
   import package_166.class_1352;
   import package_17.class_37;
   import package_202.class_1238;
   import package_204.class_1289;
   import package_215.class_1600;
   import package_26.class_142;
   import package_29.class_143;
   import package_29.class_144;
   import package_34.class_1000;
   import package_36.class_100;
   import package_40.class_416;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_46.class_1455;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_41;
   import package_51.class_1355;
   import package_52.class_1096;
   import package_59.class_180;
   import package_6.class_14;
   import package_69.class_978;
   import package_72.class_1080;
   import package_9.class_120;
   import package_93.class_876;
   import package_93.class_987;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VScrollBar;
   import spark.primitives.Rect;
   
   public final class class_583 implements class_14
   {
      
      public static const name_3:class_583 = new class_583();
       
      
      private var var_646:int = 0;
      
      public var name_13:String = "";
      
      public var var_32:Number = 0;
      
      public function class_583(param1:Number = 0, param2:String = "")
      {
         super();
         this.name_13 = param2;
         this.var_32 = param1;
      }
      
      public function method_16() : int
      {
         return 2644;
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
         return 10;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 11 % 16 | (65535 & this.var_646) << 16 - 11 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_13 = param1.readUTF();
         this.var_32 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(2644);
         param1.writeShort(65535 & ((65535 & 0) << 11 % 16 | (65535 & 0) >>> 16 - 11 % 16));
         param1.writeUTF(this.name_13);
         param1.writeDouble(this.var_32);
      }
   }
}
