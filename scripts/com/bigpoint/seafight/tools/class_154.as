package com.bigpoint.seafight.tools
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1235;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.colorpicker.ColorPicker;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.class_207;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenNpcConversationWindow;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.seafight.com.module.gems.class_642;
   import net.bigpoint.seafight.com.module.gems.class_708;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_107.class_693;
   import package_108.class_581;
   import package_130.class_1143;
   import package_14.class_102;
   import package_14.class_200;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_96;
   import package_147.class_683;
   import package_147.class_797;
   import package_16.class_28;
   import package_17.class_325;
   import package_202.class_1238;
   import package_202.class_1484;
   import package_202.class_1485;
   import package_202.class_1487;
   import package_202.class_1488;
   import package_202.class_1489;
   import package_202.class_1490;
   import package_202.class_1491;
   import package_202.class_1492;
   import package_25.class_295;
   import package_29.class_143;
   import package_29.class_144;
   import package_29.class_57;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_46.class_1455;
   import package_46.class_975;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_43;
   import package_51.class_974;
   import package_56.class_170;
   import package_6.class_14;
   import package_69.class_978;
   import package_7.class_119;
   import package_7.class_74;
   import package_72.class_1080;
   import package_72.class_203;
   import package_9.class_120;
   import package_9.class_91;
   import package_9.class_917;
   import package_91.class_1246;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.TextInput;
   import spark.components.VGroup;
   import spark.events.TextOperationEvent;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_154
   {
      
      private static const const_3:ILogger = Log.getLogger("JSTools");
       
      
      public function class_154()
      {
         super();
      }
      
      public static function method_488() : void
      {
         method_79("location.reload(true)");
      }
      
      public static function method_1751(param1:String) : void
      {
         if(class_12.var_104 == class_12.const_130)
         {
            method_79("winOpener",param1);
         }
         else
         {
            method_79("standardWinOpener",param1);
         }
      }
      
      public static function method_927(param1:Boolean = false) : void
      {
         if(!param1 && class_12.var_104 == class_12.const_130)
         {
            method_488();
         }
         else
         {
            method_79("closePopUpWindow");
         }
      }
      
      public static function method_1773(param1:String, param2:String = "_self") : void
      {
         navigateToURL(new URLRequest(param1),param2);
      }
      
      public static function method_1642() : void
      {
         method_79("window.opener.System.openEventMarketplace()");
         method_79("window.opener.focus()");
         class_170.method_188("warmap:eventMenuPayment");
      }
      
      public static function method_562() : void
      {
         method_79("window.opener.System.loadPaymentLayer()");
         method_79("window.opener.focus()");
         class_170.method_188("warmap:eventMenuPayment");
      }
      
      public static function method_742() : void
      {
         method_79("window.opener.System.openMerchant()");
         method_79("window.opener.focus()");
      }
      
      public static function method_2244() : void
      {
         method_79("window.opener.System.openMerchantExpansions()");
         method_79("window.opener.focus()");
      }
      
      public static function method_2392() : void
      {
         method_79("window.opener.System.openMerchantArms()");
         method_79("window.opener.focus()");
      }
      
      public static function method_1171() : void
      {
         method_79("window.opener.System.openTavern()");
         method_79("window.opener.focus()");
      }
      
      public static function method_1247() : void
      {
         method_79("window.opener.System.openEventSeafightPlus()");
         method_79("window.opener.focus()");
      }
      
      public static function method_2896() : void
      {
         method_79("window.opener.System.openMarketEliteItems()");
         method_79("window.opener.focus()");
      }
      
      public static function method_2918(param1:String) : void
      {
         ExternalInterface.call("dataLayer.push",{
            "questName":param1,
            "event":"questCompleted"
         });
      }
      
      private static function method_79(param1:String, ... rest) : *
      {
         var func:String = param1;
         var args:Array = rest;
         if(!ExternalInterface.available)
         {
            return null;
         }
         try
         {
            return ExternalInterface.call(func,args);
         }
         catch(e:Error)
         {
            const_3.error("Failed to execute ExternalInterface.call: " + func + "(" + args + ") => " + e);
         }
         return null;
      }
   }
}
