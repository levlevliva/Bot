package com.bigpoint.seafight
{
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetsInventoryGroup;
   import com.bigpoint.seafight.view.popups.calendar.component.CalendarDoor;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_88;
   import package_152.class_668;
   import package_16.class_28;
   import package_5.class_22;
   import package_72.class_203;
   
   public final class MainCopy extends Main
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _MainCopy_StylesInit_done:Boolean = false;
      
      public function MainCopy()
      {
         super();
         mx_internal::_document = this;
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
            this.backgroundColor = 0;
         };
         mx_internal::_MainCopy_StylesInit();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override protected function addedToStage() : void
      {
         COMPILE_TIMESTAMP = "17-10-14_21-57-50";
         super.addedToStage();
      }
      
      mx_internal final function _MainCopy_StylesInit() : void
      {
         if(mx_internal::_MainCopy_StylesInit_done)
         {
            return;
         }
         mx_internal::_MainCopy_StylesInit_done = true;
         styleManager.initProtoChainRoots();
      }
   }
}
