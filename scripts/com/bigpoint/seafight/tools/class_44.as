package com.bigpoint.seafight.tools
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.amsPlayer.AmsPlayer_VO;
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.event.modules.common.skins.NpcKillsModuleSkin;
   import com.bigpoint.seafight.view.popups.gempopup.pet.component.GemPopupPetTab;
   import com.bigpoint.seafight.view.popups.gempopup.pet.controller.GemPopupPetTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankMemberListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.greensock.TweenLite;
   import com.greensock.core.PropTween;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.events.CollectionEventKind;
   import mx.graphics.SolidColorStroke;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_698;
   import net.bigpoint.seafight.com.module.ship.class_751;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_15.class_48;
   import package_170.class_979;
   import package_171.class_981;
   import package_178.class_1060;
   import package_26.class_1102;
   import package_34.class_1000;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_89;
   import package_43.class_266;
   import package_51.class_1355;
   import package_58.class_175;
   import package_7.class_1039;
   import package_74.class_253;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.Scroller;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Line;
   
   use namespace mx_internal;
   
   public final class class_44
   {
      
      private static const const_80:ILogger = Log.getLogger("LinkTools");
      
      private static var name_55:class_44;
       
      
      private var var_1567:Dictionary;
      
      public const const_2236:String = "";
      
      public const const_2638:String = "_blank";
      
      public const const_1992:String = "_self";
      
      public const const_2499:String = "_parent";
      
      public const const_1948:String = "_top";
      
      public function class_44(param1:Function)
      {
         this.var_1567 = new Dictionary(true);
         super();
         if(param1 !== method_976)
         {
            throw new Error("LinkTools and can only be accessed through LinkTools.getInstance()");
         }
         class_58.method_21().method_82("init link tools");
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_44
      {
         if(name_55 == null)
         {
            name_55 = new class_44(method_976);
         }
         return name_55;
      }
      
      public final function name_16(param1:XML) : void
      {
         var _loc2_:XML = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         for each(_loc2_ in param1["link"])
         {
            _loc3_ = String(_loc2_.@key);
            _loc4_ = String(_loc2_.@url);
            this.var_1567[_loc3_] = _loc4_.replace("{SID}",class_51.var_1000);
         }
      }
      
      public final function method_2951(param1:String, param2:String = "_self") : void
      {
         class_154.method_1773(param1,param2);
      }
      
      public final function method_1288(param1:String) : void
      {
         var _loc2_:String = this.var_1567[param1];
         if(_loc2_ == null)
         {
            return;
         }
         class_154.method_1751(_loc2_);
      }
      
      public final function method_2938(param1:String, param2:URLVariables, param3:Function = null) : void
      {
         var request:URLRequest = null;
         var key:String = param1;
         var vars:URLVariables = param2;
         var callback:Function = param3;
         var url:String = this.var_1567[key];
         if(url == null)
         {
            return;
         }
         request = class_181.method_756(class_51.var_329 + "/" + url,vars);
         var _urlLoader:URLLoader = new URLLoader();
         const_80.info("LOADING : " + request.url);
         if(callback != null)
         {
            _urlLoader.addEventListener(Event.COMPLETE,callback);
         }
         _urlLoader.addEventListener(IOErrorEvent.IO_ERROR,function():void
         {
            const_80.error("ERROR LOADING guildstring: " + request.url);
         });
         _urlLoader.load(request);
      }
   }
}
