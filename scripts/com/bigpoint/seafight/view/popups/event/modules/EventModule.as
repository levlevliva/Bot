package com.bigpoint.seafight.view.popups.event.modules
{
   import com.bigpoint.seafight.model.inventory.vo.ConcreteGoodVO;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.crew.ShipEquipmentButtonClickEvent;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.event.modules.common.TitleText;
   import com.bigpoint.seafight.view.popups.event.modules.skins.EventModulDefaultSkin;
   import com.bigpoint.seafight.view.popups.messageuserpopup.vo.MessageUserPopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenCurrencyWindow;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenMessageUserWindow;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.core.IVisualElement;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_104.class_448;
   import package_118.class_1445;
   import package_118.class_539;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_94;
   import package_167.class_1024;
   import package_170.class_979;
   import package_30.class_62;
   import package_34.class_107;
   import package_34.class_115;
   import package_34.class_1499;
   import package_41.class_84;
   import package_46.class_1455;
   import package_48.class_999;
   import package_5.class_22;
   import package_5.class_43;
   import package_6.class_14;
   import package_7.class_1039;
   import package_9.class_17;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.components.supportClasses.SkinnableComponent;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public class EventModule extends SkinnableComponent
   {
      
      protected static const LOG:ILogger = Log.getLogger("EventModule");
      
      protected static const TEXT_RES:class_87 = class_47.method_22;
      
      protected static const MODULE_TITLE:String = "ev%1mod%2title";
      
      protected static const MODULE_DESCRIPTION:String = "ev%1mod%2desc";
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      protected var mainEventType:int;
      
      protected var moduleId:int;
      
      protected var eventType:int;
      
      protected var eventId:int;
      
      protected var uniqueId:int;
      
      protected var activePhase:int;
      
      protected var controller:IEventModuleController;
      
      [SkinPart(type="spark.components.VGroup",required="true")]
      public var mainContent:VGroup;
      
      [SkinPart(type="spark.components.Group",required="true")]
      public var grpContent:Group;
      
      [SkinPart(type="spark.components.VGroup",required="true")]
      public var content:VGroup;
      
      [SkinPart(type="spark.components.Group",required="true")]
      public var titleGroup:Group;
      
      [SkinPart(type="com.bigpoint.seafight.view.popups.event.modules.common.TitleText",required="true")]
      public var txTitle:TitleText;
      
      [SkinPart(type="spark.components.VGroup",required="false")]
      public var grpRewards:VGroup;
      
      public function EventModule()
      {
         super();
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.addEventListener("creationComplete",this.___EventModule_SkinnableComponent1_creationComplete);
      }
      
      public static function getModuleTitleId(param1:int, param2:int = 0) : String
      {
         return MODULE_TITLE.replace(class_22.const_74,param1 > 0?param1:"").replace(class_22.const_6,param2 > 0?param2:"");
      }
      
      public static function getModuleDescriptionId(param1:int, param2:int = 0, param3:int = 0) : String
      {
         var _loc4_:String = MODULE_DESCRIPTION.replace(class_22.const_74,param1).replace(class_22.const_6,param2 > 0?param2:"");
         return param3 > 0?_loc4_ + param3:_loc4_;
      }
      
      public static function getEventTitle(param1:int) : String
      {
         var _loc2_:String = class_999.method_27(param1);
         var _loc3_:String = class_47.method_37.method_121(class_88.const_85,_loc2_);
         return _loc3_ && _loc3_.length > 0?_loc3_:class_88.const_85 + "::" + _loc2_;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.skinClass = EventModulDefaultSkin;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public final function init(param1:int, param2:int, param3:int, param4:int, param5:int) : void
      {
         this.eventType = param2;
         this.eventId = param1;
         this.moduleId = param3;
         this.uniqueId = param4;
         this.activePhase = param5;
      }
      
      protected function onCreationComplete(param1:Event) : void
      {
         this.txTitle.text = this.getModuleTitle() + class_22.const_226 + this.getModuleDescription();
         this.mainContent.addElementAt(this.grpContent,0);
      }
      
      protected final function addToContent(param1:IVisualElement) : void
      {
         this.content.addElement(param1);
      }
      
      public final function getLocaleText(param1:String) : String
      {
         var _loc2_:String = TEXT_RES.method_28(param1);
         return !!_loc2_?_loc2_:param1;
      }
      
      public final function setMainEventType(param1:int) : void
      {
         this.mainEventType = param1;
      }
      
      public final function getMainEventType() : int
      {
         return this.mainEventType;
      }
      
      public final function getEventId() : int
      {
         return this.eventId;
      }
      
      public function getEventType() : int
      {
         return this.eventType;
      }
      
      public final function getModuleId() : int
      {
         return this.moduleId;
      }
      
      public final function getUniqueId() : int
      {
         return this.uniqueId;
      }
      
      public function getHelpText() : String
      {
         return null;
      }
      
      public function onModuleLeave() : void
      {
      }
      
      public function getModuleTitle() : String
      {
         var _loc1_:String = getModuleTitleId(this.moduleId,this.mainEventType);
         var _loc2_:String = this.uniqueId > 0?_loc1_ + this.uniqueId:_loc1_;
         var _loc3_:String = TEXT_RES.method_28(_loc2_);
         if(!_loc3_)
         {
            _loc3_ = TEXT_RES.method_28(getModuleTitleId(0,this.mainEventType));
         }
         return !!_loc3_?_loc3_:getEventTitle(this.mainEventType);
      }
      
      public function getModuleDescription() : String
      {
         var _loc1_:String = null;
         _loc1_ = getModuleDescriptionId(this.moduleId,this.mainEventType,this.uniqueId);
         var _loc2_:String = TEXT_RES.method_28(_loc1_);
         if(!_loc2_)
         {
            return _loc1_ + class_22.const_10 + this.className;
         }
         return _loc2_;
      }
      
      public final function getModuleDescription2(param1:String) : String
      {
         var _loc2_:String = null;
         _loc2_ = getModuleDescriptionId(this.moduleId,this.mainEventType,this.uniqueId);
         var _loc3_:String = TEXT_RES.method_28(_loc2_);
         return !!_loc3_?_loc3_:TEXT_RES.method_20(param1);
      }
      
      public function getReferenceButtonIconId() : String
      {
         return EventMenu.EVENT_ICON_PREFIX + this.eventType;
      }
      
      public function sendInitRequest() : void
      {
         class_115.name_3.method_2568(this.eventId,this.eventType,this.moduleId,this.uniqueId,this.activePhase);
      }
      
      override public function set height(param1:Number) : void
      {
         super.height = param1;
         this.content.height = param1;
      }
      
      public function destroy() : void
      {
         if(this.controller)
         {
            this.controller.destroy();
         }
         this.controller = null;
      }
      
      public final function ___EventModule_SkinnableComponent1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete(param1);
      }
   }
}
