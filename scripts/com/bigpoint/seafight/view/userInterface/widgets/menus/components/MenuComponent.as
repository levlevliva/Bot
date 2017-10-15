package com.bigpoint.seafight.view.userInterface.widgets.menus.components
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.DefaultQuestItem_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.QuestItem_VO;
   import com.bigpoint.seafight.net.events.class_1235;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.BriskImg;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButton;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.LevelTooltipItemRenderer;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.event.modules.common.skins.NpcKillsModuleSkin;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.MenuComponentSkin;
   import com.bit101.components.Style;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.FileFilter;
   import flash.net.FileReference;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.IList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IVisualElement;
   import mx.events.CloseEvent;
   import mx.events.CollectionEventKind;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.managers.PopUpManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_436;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_121.class_841;
   import package_132.class_494;
   import package_132.class_605;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_88;
   import package_15.class_273;
   import package_166.class_1486;
   import package_166.class_1589;
   import package_190.class_1181;
   import package_41.class_84;
   import package_42.class_98;
   import package_46.class_1500;
   import package_46.class_1501;
   import package_48.class_999;
   import package_5.class_22;
   import package_6.class_14;
   import package_72.class_203;
   import package_8.class_114;
   import package_92.class_944;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.SkinnableDataContainer;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   import spark.primitives.Line;
   
   public class MenuComponent extends TitleWindow
   {
      
      protected static const LOG:ILogger = Log.getLogger("MenuComponent");
      
      protected static const TEXT_RES:class_87 = class_47.method_22;
       
      
      private var _951530617content:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      protected var finisher:SWFFinisher;
      
      protected var invalidated:Boolean = true;
      
      protected var menuType:int;
      
      public function MenuComponent()
      {
         super();
         mx_internal::_document = this;
         this.title = "";
         this.width = 300;
         this.height = 200;
         this.mouseEnabled = false;
         this._MenuComponent_Group1_i();
         this.addEventListener("close",this.___MenuComponent_TitleWindow1_close);
         this.addEventListener("creationComplete",this.___MenuComponent_TitleWindow1_creationComplete);
      }
      
      public static function destroy() : void
      {
      }
      
      public static function reset() : void
      {
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
            this.skinClass = MenuComponentSkin;
            this.borderAlpha = 1;
            this.backgroundColor = 0;
            this.borderColor = 9404775;
            this.backgroundAlpha = 0.7;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function closeMenu(param1:CloseEvent = null) : void
      {
         if(param1 == null)
         {
            dispatchEvent(new CloseEvent(CloseEvent.CLOSE));
            return;
         }
         class_203.name_21(SoundEffectType.MENU_CLOSE);
         this;
         MenuComponent.destroy();
         PopUpManager.removePopUp(this);
      }
      
      protected function onCreationComplete(param1:Event) : void
      {
      }
      
      public final function build(param1:SWFFinisher) : void
      {
         this.finisher = param1;
      }
      
      public final function addComponentToTitle(param1:SkinnableDataContainer) : void
      {
         (this.skin as MenuComponentSkin).titleBar.addElement(param1);
      }
      
      public final function addIconToTitle(param1:BitmapImage) : void
      {
         (this.skin as MenuComponentSkin).titleBar.addElement(param1);
         (this.skin as MenuComponentSkin).titleDisplay.x = param1.width + 8;
      }
      
      public final function invalidate() : void
      {
         this.invalidated = true;
      }
      
      public final function setMenuType(param1:int) : void
      {
         this.menuType = param1;
      }
      
      public final function getMenuType() : int
      {
         return this.menuType;
      }
      
      public final function setCloseButtonVisible(param1:Boolean) : void
      {
         (this.skin as MenuComponentSkin).closeButton.visible = param1;
      }
      
      private final function _MenuComponent_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.id = "content";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.content = _loc1_;
         BindingManager.executeBindings(this,"content",this.content);
         return _loc1_;
      }
      
      public final function ___MenuComponent_TitleWindow1_close(param1:CloseEvent) : void
      {
         this.closeMenu(param1);
      }
      
      public final function ___MenuComponent_TitleWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : Group
      {
         return this._951530617content;
      }
      
      public function set content(param1:Group) : void
      {
         var _loc2_:Object = this._951530617content;
         if(_loc2_ !== param1)
         {
            this._951530617content = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
            }
         }
      }
   }
}
