package package_161
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.NonPerishableGood_VO;
   import com.bigpoint.seafight.model.vo.class_1525;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_1483;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.target;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemStatsListItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.greensock.TweenLite;
   import com.greensock.core.PropTween;
   import com.greensock.easing.Strong;
   import com.greensock.events.TweenEvent;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IUIComponent;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import package_14.class_47;
   import package_178.class_1060;
   import package_2.class_65;
   import package_26.class_1102;
   import package_26.class_1523;
   import package_34.class_107;
   import package_41.class_93;
   import package_46.class_1224;
   import package_46.class_1501;
   import package_5.class_123;
   import package_5.class_43;
   import package_6.class_14;
   import package_69.class_978;
   import package_8.class_1315;
   import package_93.class_987;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.primitives.Graphic;
   
   use namespace mx_internal;
   
   public final class class_819 implements class_14
   {
      
      public static const name_3:class_819 = new class_819();
       
      
      private var var_646:int = 0;
      
      public var var_22:int = 0;
      
      public var var_323:class_830;
      
      public var var_35:int = 0;
      
      public function class_819(param1:int = 0, param2:int = 0, param3:class_830 = null)
      {
         super();
         this.var_22 = param1;
         if(param3 == null)
         {
            this.var_323 = new class_830();
         }
         else
         {
            this.var_323 = param3;
         }
         this.var_35 = param2;
      }
      
      public function method_16() : int
      {
         return 25384;
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
         return 5;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 1 % 16 | (65535 & this.var_646) >>> 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_22 = param1.readInt();
         this.var_22 = this.var_22 << 11 % 32 | this.var_22 >>> 32 - 11 % 32;
         this.var_323 = class_830(class_93.method_26().method_25(param1.readShort()));
         this.var_323.method_15(param1);
         this.var_35 = param1.readByte();
         this.var_35 = 255 & ((255 & this.var_35) << 15 % 8 | (255 & this.var_35) >>> 8 - 15 % 8);
         this.var_35 = this.var_35 > 127?int(this.var_35 - 256):int(this.var_35);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(25384);
         param1.writeShort(65535 & ((65535 & 0) >>> 1 % 16 | (65535 & 0) << 16 - 1 % 16));
         param1.writeInt(this.var_22 >>> 11 % 32 | this.var_22 << 32 - 11 % 32);
         this.var_323.method_14(param1);
         param1.writeByte(255 & ((255 & this.var_35) >>> 15 % 8 | (255 & this.var_35) << 8 - 15 % 8));
      }
   }
}
