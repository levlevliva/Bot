package com.bigpoint.seafight.view.common.components
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.class_127;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialItem;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.CraftingMaterialSocket;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.vo.CraftingMaterialItemVo;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.tabs.MateysMenuOverviewTab;
   import com.bigpoint.seafight.view.popups.mateysmenu.controllers.MateysMenuOverviewTabController;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.class_1451;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.CloseEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_625;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_32.class_64;
   import package_46.class_1224;
   import package_5.class_123;
   import package_51.class_1355;
   import package_54.class_163;
   import package_69.class_978;
   import package_72.class_203;
   import package_88.class_1093;
   import package_99.class_764;
   import package_99.class_786;
   
   public final class QuestWindow extends ResizeableExtendedWindow
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function QuestWindow()
      {
         super();
         mx_internal::_document = this;
         this.title = "";
         this.mouseEnabled = false;
         this.addEventListener("close",this.___QuestWindow_ResizeableExtendedWindow1_close);
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
            this.skinClass = BasicResizableWindowSkin;
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
      
      public final function ___QuestWindow_ResizeableExtendedWindow1_close(param1:CloseEvent) : void
      {
         closeMenu(param1);
      }
   }
}
