package com.bigpoint.seafight.view.mainmenu
{
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetStatsComponentVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetTrainerStatsListItemVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.shipselection.vo.SelectionVListItemGemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.GemOverviewListSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemStatListItemVo;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import package_14.class_47;
   import package_190.class_1181;
   import package_190.class_1469;
   import spark.components.Button;
   import spark.components.List;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.effects.animation.SimpleMotionPath;
   
   public final class MainMenuButton extends Button
   {
       
      
      private var _799140614fxBlinkAnimation:Animate;
      
      private var _660831309fxBlinkEndAnimation:Animate;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      [SkinPart(required="true")]
      public var icon:BriskImageDynaLib;
      
      [SkinPart(required="true")]
      public var pulldown:BriskImageDynaLib;
      
      [SkinPart(required="true")]
      public var notification:SolidColor;
      
      private var _icon:String = null;
      
      private var _pulldown:Boolean = false;
      
      private var _pulldownHoriz:Boolean = false;
      
      private var _updated:Boolean = false;
      
      public function MainMenuButton()
      {
         super();
         this.width = 55;
         this.height = 30;
         this.buttonMode = true;
         this._MainMenuButton_Animate1_i();
         this._MainMenuButton_Animate2_i();
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
            this.skinClass = MainMenuButtonSkin;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._updated || this._icon == null)
         {
            return;
         }
         this.icon.dynaBmpSourceName = this._icon;
         if(this._pulldownHoriz)
         {
            this.pulldown.rotation = 90;
            this.pulldown.right = null;
            this.pulldown.left = 2;
            this.pulldown.bottom = 3;
         }
         else
         {
            this.pulldown.rotation = 0;
            this.pulldown.left = null;
            this.pulldown.right = 2;
            this.pulldown.bottom = 1;
         }
         this.pulldown.visible = this._pulldown || this._pulldownHoriz;
         this._updated = true;
      }
      
      public function set iconName(param1:String) : void
      {
         this._icon = param1;
         this._updated = false;
         invalidateProperties();
      }
      
      public function set showPulldownIcon(param1:Boolean) : void
      {
         this._pulldown = param1;
         this._updated = false;
         invalidateProperties();
      }
      
      public function set pulldownHoriz(param1:Boolean) : void
      {
         this._pulldownHoriz = param1;
         this._updated = false;
         invalidateProperties();
      }
      
      public final function notify(param1:Boolean) : void
      {
         if(!this.notification)
         {
            return;
         }
         if(param1)
         {
            this.fxBlinkEndAnimation.stop();
            this.fxBlinkAnimation.play([this.notification]);
         }
         else
         {
            this.fxBlinkAnimation.stop();
            this.fxBlinkEndAnimation.play([this.notification]);
         }
      }
      
      private final function _MainMenuButton_Animate1_i() : Animate
      {
         var _loc1_:Animate = new Animate();
         _loc1_.repeatCount = 0;
         _loc1_.repeatBehavior = "reverse";
         _loc1_.duration = 600;
         _loc1_.motionPaths = new <MotionPath>[this._MainMenuButton_SimpleMotionPath1_c()];
         this.fxBlinkAnimation = _loc1_;
         BindingManager.executeBindings(this,"fxBlinkAnimation",this.fxBlinkAnimation);
         return _loc1_;
      }
      
      private final function _MainMenuButton_SimpleMotionPath1_c() : SimpleMotionPath
      {
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         _loc1_.property = "alpha";
         _loc1_.valueFrom = 0;
         _loc1_.valueTo = 1;
         return _loc1_;
      }
      
      private final function _MainMenuButton_Animate2_i() : Animate
      {
         var _loc1_:Animate = new Animate();
         _loc1_.repeatCount = 1;
         _loc1_.duration = 300;
         _loc1_.motionPaths = new <MotionPath>[this._MainMenuButton_SimpleMotionPath2_c()];
         this.fxBlinkEndAnimation = _loc1_;
         BindingManager.executeBindings(this,"fxBlinkEndAnimation",this.fxBlinkEndAnimation);
         return _loc1_;
      }
      
      private final function _MainMenuButton_SimpleMotionPath2_c() : SimpleMotionPath
      {
         var _loc1_:SimpleMotionPath = new SimpleMotionPath();
         _loc1_.property = "alpha";
         _loc1_.valueTo = 0;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get fxBlinkAnimation() : Animate
      {
         return this._799140614fxBlinkAnimation;
      }
      
      public function set fxBlinkAnimation(param1:Animate) : void
      {
         var _loc2_:Object = this._799140614fxBlinkAnimation;
         if(_loc2_ !== param1)
         {
            this._799140614fxBlinkAnimation = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fxBlinkAnimation",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fxBlinkEndAnimation() : Animate
      {
         return this._660831309fxBlinkEndAnimation;
      }
      
      public function set fxBlinkEndAnimation(param1:Animate) : void
      {
         var _loc2_:Object = this._660831309fxBlinkEndAnimation;
         if(_loc2_ !== param1)
         {
            this._660831309fxBlinkEndAnimation = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fxBlinkEndAnimation",_loc2_,param1));
            }
         }
      }
   }
}
