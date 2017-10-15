package package_17
{
   import com.adobe.serialization.json.JSONToken;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1256;
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_46;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.event.modules.common.clash.ClashRankingListItem;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameModule;
   import com.bigpoint.seafight.view.popups.gempopup.ship.constants.SocketEmphasisType;
   import com.bigpoint.seafight.view.popups.scrollcostpopup.ScrollCostPopupController;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.seafight.view.userInterface.InstantMessageContainer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.GemOverviewListSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.ISimplePopupHandler;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.NotEnoughResourcesPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenEventWindow;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BevelFilter;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.class_759;
   import net.bigpoint.seafight.com.module.gems.class_892;
   import net.bigpoint.seafight.com.module.guild.class_1476;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import org.apache.flex.collections.VectorCollection;
   import org.osflash.signals.ISlot;
   import org.osflash.signals.SlotList;
   import package_101.class_564;
   import package_105.class_369;
   import package_105.class_529;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_15.class_48;
   import package_170.class_979;
   import package_171.class_981;
   import package_18.class_392;
   import package_20.class_33;
   import package_211.class_1369;
   import package_214.class_1598;
   import package_26.class_1102;
   import package_29.class_166;
   import package_3.class_499;
   import package_34.class_116;
   import package_34.class_1241;
   import package_41.class_84;
   import package_41.class_93;
   import package_45.class_110;
   import package_46.class_1132;
   import package_46.class_1271;
   import package_46.class_1312;
   import package_46.class_975;
   import package_5.class_12;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_43;
   import package_51.class_974;
   import package_52.class_167;
   import package_54.class_1089;
   import package_6.class_14;
   import package_7.class_74;
   import package_8.class_1317;
   import package_88.class_1090;
   import package_88.class_1093;
   import package_88.class_967;
   import package_92.class_1368;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.RichEditableText;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.layouts.TileLayout;
   
   public final class class_325 implements ISimplePopupHandler
   {
      
      public static const const_391:String = "onLogoutComplete";
      
      private static var name_55:class_325;
       
      
      private var var_1348:class_1089;
      
      private var var_264:TextField;
      
      private var var_272:Timer;
      
      private var var_626:int;
      
      private var var_1719:int;
      
      private var var_945:Boolean = false;
      
      public var var_2515:int;
      
      public var var_2514:String;
      
      public function class_325(param1:Function)
      {
         super();
         if(param1 !== method_976)
         {
            throw new class_166();
         }
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_325
      {
         if(name_55 == null)
         {
            name_55 = new class_325(method_976);
         }
         return name_55;
      }
      
      public final function method_2555(param1:int) : void
      {
         if(this.var_945)
         {
            return;
         }
         this.var_945 = true;
         class_304.method_21().method_1067();
         this.var_1719 = 0;
         if(!this.var_1348)
         {
            this.var_1348 = class_47.method_24.var_12.globalActionBtnContainer.method_109("abortLogout");
         }
         this.var_1348.visible = true;
         this.var_1348.var_316.name_26 = true;
         class_47.method_24.var_12.globalActionBtnContainer.method_109("commonMapChange").visible = false;
         if(!this.var_264)
         {
            this.var_264 = class_47.method_24.var_12.globalCntTxt;
         }
         this.var_626 = param1;
         this.var_272 = new Timer(1000,this.var_626--);
         this.var_272.addEventListener(TimerEvent.TIMER,this.method_686);
         this.var_272.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_580);
         this.var_272.start();
         this.var_264.visible = true;
         this.var_264.text = "" + param1;
         this.method_887();
      }
      
      private final function method_686(param1:TimerEvent) : void
      {
         this.var_264.text = "" + this.var_626--;
         this.method_887();
      }
      
      private final function method_580(param1:TimerEvent) : void
      {
         class_47.method_24.var_12.infoMessageContainer.deleteAllIcons();
         this.method_910();
      }
      
      private final function method_887() : void
      {
         if(!this.var_264)
         {
            return;
         }
         var _loc1_:class_1089 = class_47.method_24.var_12.globalActionBtnContainer.method_109("abortLogout");
         this.var_264.x = _loc1_.x + _loc1_.width / 2 - this.var_264.width / 2;
         this.var_264.y = _loc1_.y + _loc1_.height;
         class_47.method_24.var_12.instantMsgBox.setPos(InstantMessageContainer.COUNTER_PLACEING);
      }
      
      public final function method_1479() : void
      {
         if(!this.var_945)
         {
            return;
         }
         this.var_272.stop();
         this.var_264.visible = false;
         this.var_264.text = "";
         this.var_1348.visible = false;
         this.var_945 = false;
         class_47.method_24.var_12.instantMsgBox.setPos(InstantMessageContainer.COMMON_PLACEING);
      }
      
      public final function method_910() : void
      {
         if(!class_47.method_24)
         {
            return;
         }
         class_47.method_24.var_12.globalActionBtnContainer.method_109("abortLogout").visible = false;
         class_47.method_24.var_12.globalCntTxt.visible = false;
      }
      
      public final function method_606(param1:int) : void
      {
         if(!class_47.method_24)
         {
            class_499.method_923();
            return;
         }
         this.method_678(param1);
         this.method_910();
         class_47.method_24.var_12.instantMsgBox.setPos(InstantMessageContainer.COMMON_PLACEING);
         this.var_945 = false;
         class_41.name_3.name_17 = class_41.const_449;
         if(class_12.var_104 != class_12.const_130)
         {
            if(class_51.var_129 == "zh")
            {
               navigateToURL(new URLRequest(class_51.var_1535),"_self");
            }
            else if(class_49.method_42(class_43.const_623))
            {
               class_154.method_927();
            }
         }
         CentralEventUnit.dispatchEvent(new Event(const_391));
      }
      
      public final function method_678(param1:int = -1) : void
      {
         var reason:int = param1;
         var popup:class_332 = new class_332();
         if(reason == class_74.const_986 || reason == class_74.const_1012)
         {
            popup.method_185("logged_out");
            popup.var_171.push(PopupResponseType.RELOGIN);
         }
         else
         {
            popup.name_5 = class_332.const_842;
            popup.method_185("error_stream");
            popup.var_171.push(PopupResponseType.RECONNECT);
         }
         if(class_12.var_104 != class_12.const_130)
         {
            popup.var_171.push(PopupResponseType.CLOSE);
         }
         this.var_945 = false;
         CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,popup,this));
         try
         {
            class_47.method_24.var_12.messageBoxContainer.method_1517();
            return;
         }
         catch(e:Error)
         {
            Log.getLogger("LogoutControl").error("createReconnectPopup has some problems" + e.getStackTrace());
            return;
         }
      }
      
      public function onPopupResponse(param1:class_1102) : void
      {
         if(param1.name_60 == PopupResponseType.CLOSE)
         {
            class_154.method_927();
            return;
         }
         if(class_51.var_571 == false)
         {
            class_46.name_3.name_31 = class_1241.name_3.method_853;
            class_46.name_3.method_1475 = null;
            class_46.name_3.method_1269();
         }
         else
         {
            class_1241.name_3.method_853();
         }
      }
      
      public function get method_2600() : Boolean
      {
         return this.var_945;
      }
   }
}
