package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.auxconf.AuxConf_VO;
   import com.bigpoint.seafight.model.inventory.vo.auxconf.DefaultAuxConf_VO;
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import com.bigpoint.seafight.view.popups.common.BadgeLootIcon;
   import com.bigpoint.seafight.view.popups.common.LootIcon;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScoreVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.SimplePopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.YesNoPopup;
   import com.greensock.TweenLite;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.IFlexDisplayObject;
   import mx.core.IFlexModuleFactory;
   import mx.core.IVisualElement;
   import mx.logging.Log;
   import mx.managers.PopUpManager;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import package_138.class_523;
   import package_138.class_704;
   import package_14.class_47;
   import package_143.class_1040;
   import package_174.class_1592;
   import package_186.class_1465;
   import package_190.class_1168;
   import package_20.class_33;
   import package_26.class_1102;
   import package_45.class_110;
   import package_49.class_140;
   import package_5.class_984;
   import package_51.class_148;
   import package_51.class_974;
   import package_6.class_14;
   import package_89.class_1378;
   import package_89.class_1379;
   import package_93.class_987;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.TitleWindow;
   import spark.filters.DropShadowFilter;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   
   public final class MenusContainer extends Group
   {
      
      private static var uniqueID:uint = 0;
      
      private static var instance:MenusContainer;
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _windows:Vector.<TitleWindow>;
      
      private var simplePopup:SimplePopup;
      
      private var windowProxy:class_110;
      
      public function MenusContainer()
      {
         this.windowProxy = class_33.name_12.method_41;
         super();
         mx_internal::_document = this;
         this.layout = this._MenusContainer_VerticalLayout1_c();
      }
      
      public static function createMenu(param1:Class, param2:Boolean = false) : IFlexDisplayObject
      {
         var _loc3_:IFlexDisplayObject = PopUpManager.createPopUp(instance,param1,param2);
         centerMenu(_loc3_);
         return _loc3_;
      }
      
      public static function centerMenu(param1:IFlexDisplayObject) : void
      {
         var _loc2_:int = (class_47.method_49.stageWidth - param1.width) * 0.5;
         var _loc3_:int = (class_47.method_49.stageHeight - param1.height) * 0.5;
         param1.move(_loc2_,_loc3_);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override protected function initializationComplete() : void
      {
         super.initializationComplete();
         instance = this;
         this._windows = new Vector.<TitleWindow>();
         CentralEventUnit.addEventListener(class_974.const_7,this.onSimplePopupCreate);
      }
      
      public final function onStageResize() : void
      {
         var _loc1_:TitleWindow = null;
         for each(_loc1_ in this._windows)
         {
            if(_loc1_.stage)
            {
               centerMenu(_loc1_);
            }
         }
         class_33.name_12.method_41.method_1426();
      }
      
      private final function closeHandler(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc2_:TitleWindow = param1.target as TitleWindow;
         if(!_loc2_)
         {
            _loc2_ = param1.currentTarget as TitleWindow;
         }
         _loc2_.removeEventListener("close",this.closeHandler);
         if(_loc2_.name.indexOf(class_110.const_571) != -1)
         {
            _loc3_ = _loc2_.name.substring(_loc2_.name.indexOf(class_110.const_571) + class_110.const_571.length,_loc2_.name.length);
            this.windowProxy.method_1187(_loc3_);
         }
         var _loc4_:WindowController = this.windowProxy.var_620[!!_loc3_?_loc3_:_loc2_.name] as WindowController;
         _loc4_.shutdown();
         delete this.windowProxy.var_620[!!_loc3_?_loc3_:_loc2_.name];
         _loc4_ = null;
         PopUpManager.removePopUp(_loc2_ as IFlexDisplayObject);
         var _loc5_:int = this._windows.indexOf(_loc2_);
         if(_loc5_ > -1)
         {
            this._windows.splice(_loc5_,1);
         }
      }
      
      private final function onSimplePopupCreate(param1:class_974) : TitleWindow
      {
         var popup:TitleWindow = null;
         var onPopupResponse:Function = null;
         var sp:SimplePopup = null;
         var content:IVisualElement = null;
         var wController:IWindowController = null;
         var sP:SimplePopup = null;
         var event:class_974 = param1;
         onPopupResponse = function(param1:class_1102):void
         {
            event.method_1524.onPopupResponse(param1);
            popup.removeEventListener(class_1102.const_299,onPopupResponse);
            popup = null;
         };
         if(this.simplePopup)
         {
            if(this.simplePopup is SimplePopup)
            {
               sp = this.simplePopup as SimplePopup;
               sp.closeMenu();
            }
         }
         if(!event.name_8.var_27)
         {
            if(event.name_8.var_51)
            {
               popup = new event.name_8.var_51();
            }
            else
            {
               switch(event.name_8.name_5)
               {
                  case class_332.const_423:
                     popup = new YesNoPopup();
                     break;
                  case class_332.const_843:
                     popup = new OkPopup();
                     break;
                  default:
                     popup = new SimplePopup();
               }
            }
         }
         else
         {
            popup = new event.name_8.var_51();
            popup.name = "window_" + uniqueID++;
            if(event.name_8.var_67)
            {
               popup.name = popup.name + (class_110.const_571 + event.name_8.var_67);
            }
            if(event.name_8.var_74)
            {
               popup.setStyle("skinClass",event.name_8.var_74);
            }
            popup.addEventListener("close",this.closeHandler);
            popup.width = event.name_8.var_36;
            popup.height = event.name_8.var_31;
            content = new event.name_8.var_27() as IVisualElement;
            wController = new event.name_8.var_28("controller_" + uniqueID,content) as IWindowController;
            if(event.name_8.var_67)
            {
               this.windowProxy.var_620[event.name_8.var_67] = wController;
            }
            else
            {
               this.windowProxy.var_620[popup.name] = wController;
            }
            popup.addElement(content);
            if(event.name_8.var_30)
            {
               wController.data = event.name_8.var_30;
            }
         }
         if(event.name_8.var_67)
         {
            class_33.name_12.method_41.method_2538(event.name_8.var_67,popup);
         }
         PopUpManager.addPopUp(popup,instance,event.name_8.var_72);
         this._windows.push(popup);
         if(event.name_8.var_30 != null && event.name_8.var_30.headline)
         {
            popup.title = event.name_8.var_30.headline;
         }
         if(popup is SimplePopup)
         {
            sP = popup as SimplePopup;
            sP.create(event.name_8);
            this.simplePopup = sP;
         }
         centerMenu(popup);
         if(event.method_1524)
         {
            popup.addEventListener(class_1102.const_299,onPopupResponse);
         }
         return popup;
      }
      
      private final function _MenusContainer_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "center";
         _loc1_.paddingLeft = 0;
         _loc1_.paddingRight = 0;
         _loc1_.paddingTop = 0;
         _loc1_.paddingBottom = 0;
         return _loc1_;
      }
   }
}
