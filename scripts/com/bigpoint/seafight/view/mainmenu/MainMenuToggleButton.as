package com.bigpoint.seafight.view.mainmenu
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import mx.core.IFlexModuleFactory;
   import spark.components.ToggleButton;
   
   public final class MainMenuToggleButton extends ToggleButton
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      [SkinPart(required="true")]
      public var icon:BriskImageDynaLib;
      
      [SkinPart(required="true")]
      public var iconOff:BriskImageDynaLib;
      
      private var _iconOn:String = null;
      
      private var _iconOff:String = null;
      
      private var _updated:Boolean = false;
      
      public function MainMenuToggleButton()
      {
         super();
         this.width = 55;
         this.height = 30;
         this.buttonMode = true;
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
         if(this._updated || this._iconOn == null || this._iconOff == null)
         {
            return;
         }
         this.icon.dynaBmpSourceName = this._iconOn;
         this.iconOff.dynaBmpSourceName = this._iconOff;
         this._updated = true;
      }
      
      public function set iconNameOn(param1:String) : void
      {
         this._iconOn = param1;
         invalidateProperties();
      }
      
      public function set iconNameOff(param1:String) : void
      {
         this._iconOff = param1;
         invalidateProperties();
      }
   }
}
