package package_130
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_24;
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.model.inventory.vo.subscription.DefaultSubscription_VO;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.currencypopup.component.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.MiniHitpointsBarDisplay;
   import com.bigpoint.seafight.view.popups.puzzlepopup.component.PuzzlePopupPieceItemRenderer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bit101.components.ListItem;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.Socket;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_106.class_372;
   import package_106.class_783;
   import package_121.class_773;
   import package_14.class_220;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_170.class_979;
   import package_171.*;
   import package_41.class_84;
   import package_41.class_93;
   import package_49.class_880;
   import package_5.class_22;
   import package_6.class_14;
   import package_72.class_203;
   import package_9.class_769;
   import package_90.class_316;
   import package_90.class_352;
   import package_97.class_986;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_711 implements class_14
   {
      
      public static const name_3:class_711 = new class_711();
       
      
      private var var_646:int = 0;
      
      public var var_1190:Number = 0;
      
      public var var_1256:Number = 0;
      
      public var var_1131:class_773;
      
      public var var_1132:int = 0;
      
      public var var_461:Number = 0;
      
      public var var_139:Number = 0;
      
      public var name_7:int = 0;
      
      public var var_425:class_773;
      
      public var var_365:int = 0;
      
      public var var_910:class_773;
      
      public var name_10:int = 0;
      
      public function class_711(param1:int = 0, param2:int = 0, param3:int = 0, param4:int = 0, param5:Number = 0, param6:Number = 0, param7:Number = 0, param8:Number = 0, param9:class_773 = null, param10:class_773 = null, param11:class_773 = null)
      {
         super();
         this.var_1190 = param7;
         this.var_1256 = param8;
         if(param11 == null)
         {
            this.var_1131 = new class_773();
         }
         else
         {
            this.var_1131 = param11;
         }
         this.var_1132 = param3;
         this.var_461 = param5;
         this.var_139 = param6;
         this.name_7 = param1;
         if(param10 == null)
         {
            this.var_425 = new class_773();
         }
         else
         {
            this.var_425 = param10;
         }
         this.var_365 = param4;
         if(param9 == null)
         {
            this.var_910 = new class_773();
         }
         else
         {
            this.var_910 = param9;
         }
         this.name_10 = param2;
      }
      
      public function method_16() : int
      {
         return -1781;
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
         return 38;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 3 % 16 | (65535 & this.var_646) >>> 16 - 3 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1190 = param1.readDouble();
         this.var_1256 = param1.readDouble();
         this.var_1131 = class_773(class_93.method_26().method_25(param1.readShort()));
         this.var_1131.method_15(param1);
         this.var_1132 = param1.readShort();
         this.var_461 = param1.readDouble();
         this.var_139 = param1.readDouble();
         this.name_7 = param1.readInt();
         this.name_7 = this.name_7 << 5 % 32 | this.name_7 >>> 32 - 5 % 32;
         this.var_425 = class_773(class_93.method_26().method_25(param1.readShort()));
         this.var_425.method_15(param1);
         this.var_365 = param1.readShort();
         this.var_910 = class_773(class_93.method_26().method_25(param1.readShort()));
         this.var_910.method_15(param1);
         this.name_10 = param1.readShort();
         this.name_10 = 65535 & ((65535 & this.name_10) >>> 3 % 16 | (65535 & this.name_10) << 16 - 3 % 16);
         this.name_10 = this.name_10 > 32767?int(this.name_10 - 65536):int(this.name_10);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-1781);
         param1.writeShort(65535 & ((65535 & 0) >>> 3 % 16 | (65535 & 0) << 16 - 3 % 16));
         param1.writeDouble(this.var_1190);
         param1.writeDouble(this.var_1256);
         this.var_1131.method_14(param1);
         param1.writeShort(this.var_1132);
         param1.writeDouble(this.var_461);
         param1.writeDouble(this.var_139);
         param1.writeInt(this.name_7 >>> 5 % 32 | this.name_7 << 32 - 5 % 32);
         this.var_425.method_14(param1);
         param1.writeShort(this.var_365);
         this.var_910.method_14(param1);
         param1.writeShort(65535 & ((65535 & this.name_10) << 3 % 16 | (65535 & this.name_10) >>> 16 - 3 % 16));
      }
   }
}
