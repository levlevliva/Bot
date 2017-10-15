package com.bigpoint.seafight.view.common.components
{
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoDownBtnSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingLogListItemVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.AbstractShipEquipmentInventory;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.common.table.CommonHListSkin;
   import com.bigpoint.seafight.view.popups.event.modules.common.skins.RankingModuleSkin;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.controller.GemPopupCraftingTabController;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.TowerListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankItemListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.LockTitleWindowToggleButtonSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.MinMaxTitleWindowToggleButtonSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenNPCWindow;
   import com.bigpoint.services.statelessCommands.commands.guildwindow.CmdSL_OpenPlayerGuildWindow;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getQualifiedClassName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.guild.class_1475;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_107.class_1467;
   import package_14.class_47;
   import package_14.class_51;
   import package_147.class_918;
   import package_155.class_623;
   import package_156.class_674;
   import package_16.class_28;
   import package_170.class_979;
   import package_190.class_1181;
   import package_2.class_9;
   import package_26.class_142;
   import package_29.class_143;
   import package_29.class_144;
   import package_29.class_57;
   import package_34.class_115;
   import package_39.class_80;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_1034;
   import package_47.class_930;
   import package_48.class_996;
   import package_5.class_22;
   import package_5.class_41;
   import package_57.class_171;
   import package_6.class_14;
   import package_89.class_299;
   import package_93.class_876;
   import package_93.class_987;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.ToggleButton;
   import spark.primitives.Rect;
   
   public class MinimizeLockWindow extends ResizableTitleWindow
   {
       
      
      private var _406719549lockButton:ToggleButton;
      
      private var _168913776minimizeButton:ToggleButton;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      [SkinPart(required="false")]
      public var titleButtonsRight:HGroup;
      
      [SkinPart(required="false")]
      public var titleButtonsLeft:HGroup;
      
      [SkinPart(required="false")]
      public var helpButton:DynamicImageButton;
      
      public function MinimizeLockWindow()
      {
         super();
         mx_internal::_document = this;
         this.title = "";
         this.mouseEnabled = false;
         this._MinimizeLockWindow_ToggleButton2_i();
         this._MinimizeLockWindow_ToggleButton1_i();
         this.addEventListener("close",this.___MinimizeLockWindow_ResizableTitleWindow1_close);
         this.addEventListener("creationComplete",this.___MinimizeLockWindow_ResizableTitleWindow1_creationComplete);
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
      
      protected function onCreationComplete(param1:Event) : void
      {
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.titleButtonsRight)
         {
            this.lockButton.addEventListener(MouseEvent.CLICK,this.onToggleLockButtonClick);
            this.minimizeButton.addEventListener(MouseEvent.CLICK,this.onToggleMinMaxButtonClick);
            this.titleButtonsRight.addElementAt(this.lockButton,0);
            this.titleButtonsRight.addElementAt(this.minimizeButton,0);
         }
         else if(param2 == this.helpButton)
         {
            this.helpButton.includeInLayout = true;
            this.helpButton.visible = true;
            this.helpButton.addEventListener(MouseEvent.CLICK,this.onHelpButtonClick);
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         if(param2 == this.titleButtonsRight)
         {
            this.lockButton.removeEventListener(MouseEvent.CLICK,this.onToggleLockButtonClick);
            this.minimizeButton.removeEventListener(MouseEvent.CLICK,this.onToggleMinMaxButtonClick);
            this.titleButtonsRight.removeElement(this.lockButton);
            this.titleButtonsRight.removeElement(this.minimizeButton);
         }
         else if(param2 == this.helpButton)
         {
            this.helpButton.removeEventListener(MouseEvent.CLICK,this.onHelpButtonClick);
         }
         super.partRemoved(param1,param2);
      }
      
      private final function onToggleLockButtonClick(param1:MouseEvent) : void
      {
         this.locked = this.lockButton.selected;
         dispatchEvent(new class_979(class_979.const_32));
      }
      
      public final function enforceUnlocking() : void
      {
         this.lockButton.selected = false;
         this.locked = false;
         dispatchEvent(new class_979(class_979.const_32));
      }
      
      private final function onToggleMinMaxButtonClick(param1:MouseEvent) : void
      {
         dispatchEvent(new class_979(class_979.const_49));
      }
      
      private final function onHelpButtonClick(param1:MouseEvent) : void
      {
         dispatchEvent(new class_979(class_979.const_5));
      }
      
      override public function get lockable() : Boolean
      {
         return true;
      }
      
      public function set minimized(param1:Boolean) : void
      {
         this.minimizeButton.selected = param1;
      }
      
      public function get minimized() : Boolean
      {
         return this.minimizeButton.selected;
      }
      
      private final function _MinimizeLockWindow_ToggleButton2_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.buttonMode = true;
         _loc1_.setStyle("skinClass",LockTitleWindowToggleButtonSkin);
         _loc1_.id = "lockButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lockButton = _loc1_;
         BindingManager.executeBindings(this,"lockButton",this.lockButton);
         return _loc1_;
      }
      
      private final function _MinimizeLockWindow_ToggleButton1_i() : ToggleButton
      {
         var _loc1_:ToggleButton = new ToggleButton();
         _loc1_.buttonMode = true;
         _loc1_.setStyle("skinClass",MinMaxTitleWindowToggleButtonSkin);
         _loc1_.id = "minimizeButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.minimizeButton = _loc1_;
         BindingManager.executeBindings(this,"minimizeButton",this.minimizeButton);
         return _loc1_;
      }
      
      public final function ___MinimizeLockWindow_ResizableTitleWindow1_close(param1:CloseEvent) : void
      {
         closeMenu(param1);
      }
      
      public final function ___MinimizeLockWindow_ResizableTitleWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get lockButton() : ToggleButton
      {
         return this._406719549lockButton;
      }
      
      public function set lockButton(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._406719549lockButton;
         if(_loc2_ !== param1)
         {
            this._406719549lockButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get minimizeButton() : ToggleButton
      {
         return this._168913776minimizeButton;
      }
      
      public function set minimizeButton(param1:ToggleButton) : void
      {
         var _loc2_:Object = this._168913776minimizeButton;
         if(_loc2_ !== param1)
         {
            this._168913776minimizeButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minimizeButton",_loc2_,param1));
            }
         }
      }
   }
}
