package package_31
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.PlayerGuildWindow;
   import com.bigpoint.seafight.view.popups.common.SimpleGreenButtonSkin;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.PlayerGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.PlayerGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.PlayerGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardsTabListItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.oaxoa.fx.Lightning;
   import com.oaxoa.fx.LightningFadeType;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.events.ToolTipEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_101.class_566;
   import package_14.class_47;
   import package_14.class_94;
   import package_152.class_937;
   import package_154.class_632;
   import package_165.class_951;
   import package_166.class_1589;
   import package_19.class_32;
   import package_20.class_33;
   import package_26.class_52;
   import package_41.class_84;
   import package_41.class_93;
   import package_45.class_110;
   import package_49.class_880;
   import package_5.class_123;
   import package_51.class_974;
   import package_92.class_336;
   import package_92.class_944;
   import package_97.class_986;
   import spark.components.Group;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.effects.animation.Animation;
   import spark.primitives.BitmapImage;
   
   public final class class_63
   {
      
      private static const const_80:ILogger = Log.getLogger("XMLTools");
       
      
      public function class_63()
      {
         super();
      }
      
      public static function method_2905(param1:XML, param2:String = "********** XML-Childs - BEGIN", param3:String = "********** XML-Childs - END") : void
      {
         var _loc4_:XML = null;
         const_80.warn(param2);
         if(param1 == null)
         {
            const_80.warn("NULL");
            return;
         }
         for each(_loc4_ in param1.children())
         {
            const_80.warn(_loc4_.name());
         }
         const_80.warn(param3);
      }
      
      public static function method_2926(param1:XMLList, param2:String = "") : String
      {
         var _loc4_:XML = null;
         if(param1 == null)
         {
            return "NULL";
         }
         var _loc3_:String = "";
         for each(_loc4_ in param1)
         {
            _loc3_ = _loc3_ + (param2 + _loc4_.toXMLString() + "\r\n");
         }
         return _loc3_;
      }
      
      public static function method_2897(param1:XML, param2:String = "********** XML-Para - BEGIN", param3:String = "********** XML-Para - END") : void
      {
         var _loc4_:XML = null;
         const_80.warn(param2);
         if(param1 == null)
         {
            const_80.warn("NULL");
            return;
         }
         for each(_loc4_ in param1.attributes())
         {
            const_80.warn(_loc4_.name() + ": " + _loc4_.valueOf());
         }
         const_80.warn(param3);
      }
      
      public static function method_2797(param1:String, param2:Function) : void
      {
         var request:URLRequest = null;
         var loader:URLLoader = null;
         var url:String = param1;
         var handleXMLLoaded:Function = param2;
         request = new URLRequest(url);
         const_80.info("LOADING: " + request.url);
         loader = new URLLoader(request);
         loader.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            var xmlData:XML = null;
            var e:Event = param1;
            try
            {
               xmlData = new XML(loader.data);
            }
            catch(e:Error)
            {
               if(!_loc5_)
               {
                  logger.error("ERROR PARSING XML from URL: " + request.url + " (" + e + ")");
               }
               return;
            }
            handleXMLLoaded(xmlData);
         });
         loader.addEventListener(IOErrorEvent.IO_ERROR,function(param1:Event):void
         {
            const_80.error("ERROR LOADING: " + request.url);
         });
      }
      
      public static function method_796(param1:String) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(param1.length == 0)
         {
            return false;
         }
         return param1.toLocaleLowerCase() == "true";
      }
      
      public static function method_3009(param1:XMLList) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(param1.length() == 0)
         {
            return false;
         }
         return true;
      }
      
      public static function method_2942(param1:XMLList, param2:String) : XML
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         for each(_loc3_ in param1)
         {
            _loc4_ = String(_loc3_);
            if(_loc4_.toLowerCase() == param2.toLowerCase())
            {
               return _loc3_;
            }
         }
         return null;
      }
   }
}
