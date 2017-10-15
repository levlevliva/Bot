package package_140
{
   import com.adobe.serialization.json.JSONToken;
   import com.adobe.serialization.json.JSONTokenType;
   import com.adobe.serialization.json.JSONTokenizer;
   import com.adobe.utils.IntUtil;
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.class_1187;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.populateLoot;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.target;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.itemrenderers.MateyServerItemRenderer;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.reputation.ReputationFavoriteEvent;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import org.osflash.signals.ISlot;
   import package_100.class_1186;
   import package_127.class_455;
   import package_127.class_486;
   import package_127.class_528;
   import package_14.class_47;
   import package_14.class_49;
   import package_170.class_979;
   import package_20.class_109;
   import package_205.class_1353;
   import package_216.class_1575;
   import package_29.class_565;
   import package_34.class_116;
   import package_39.class_973;
   import package_49.class_137;
   import package_49.class_880;
   import package_5.class_43;
   import package_6.class_14;
   import package_69.class_978;
   import package_88.class_290;
   import package_9.class_76;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.primitives.Graphic;
   
   use namespace mx_internal;
   
   public final class class_546 implements class_14
   {
      
      public static const name_3:class_546 = new class_546();
       
      
      private var var_646:int = 0;
      
      public var var_569:String = "";
      
      public function class_546(param1:String = "")
      {
         super();
         this.var_569 = param1;
      }
      
      public function method_16() : int
      {
         return -371;
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
         this.var_646 = 65535 & ((65535 & this.var_646) << 5 % 16 | (65535 & this.var_646) >>> 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_569 = param1.readUTF();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-371);
         param1.writeShort(65535 & ((65535 & 0) >>> 5 % 16 | (65535 & 0) << 16 - 5 % 16));
         param1.writeUTF(this.var_569);
      }
   }
}
