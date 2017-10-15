package com.bigpoint.seafight.view.popups.common
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPresetsVo;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import package_111.class_742;
   import package_121.class_841;
   import package_14.class_88;
   import package_23.class_42;
   import package_5.class_984;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.supportClasses.ItemRenderer;
   import spark.primitives.BitmapImage;
   
   public final class CurrencyItemRenderer extends ItemRenderer
   {
       
      
      private var _1413853096amount:Label;
      
      private var _3226745icon:BitmapImage;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var vo:class_841;
      
      private var dirty:Boolean;
      
      public function CurrencyItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.autoDrawBackground = false;
         this.verticalCenter = 0;
         this.percentWidth = 100;
         this.mxmlContent = [this._CurrencyItemRenderer_HGroup1_c()];
      }
      
      public static function getTinyCurrencyIconPath(param1:int) : String
      {
         return class_42.method_47("images/merchant/currency/tiny/gfx_currency_tiny_" + param1 + class_984.const_39);
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
      
      override public function set data(param1:Object) : void
      {
         super.data = this.vo = param1 as class_841;
         this.dirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(!this.dirty || !this.vo)
         {
            return;
         }
         this.icon.source = getTinyCurrencyIconPath(this.vo.name_5);
         this.amount.text = class_13.method_53(this.vo.var_10);
         this.toolTip = this.amount.text + " " + class_88.method_32(class_88.const_19,this.vo.name_5.toString());
         this.dirty = false;
      }
      
      private final function _CurrencyItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 5;
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalCenter = 0;
         _loc1_.mxmlContent = [this._CurrencyItemRenderer_BitmapImage1_i(),this._CurrencyItemRenderer_Label1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CurrencyItemRenderer_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.initialized(this,"icon");
         this.icon = _loc1_;
         BindingManager.executeBindings(this,"icon",this.icon);
         return _loc1_;
      }
      
      private final function _CurrencyItemRenderer_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "fontwhite11";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.setStyle("paddingTop",1);
         _loc1_.id = "amount";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.amount = _loc1_;
         BindingManager.executeBindings(this,"amount",this.amount);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get amount() : Label
      {
         return this._1413853096amount;
      }
      
      public function set amount(param1:Label) : void
      {
         var _loc2_:Object = this._1413853096amount;
         if(_loc2_ !== param1)
         {
            this._1413853096amount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icon() : BitmapImage
      {
         return this._3226745icon;
      }
      
      public function set icon(param1:BitmapImage) : void
      {
         var _loc2_:Object = this._3226745icon;
         if(_loc2_ !== param1)
         {
            this._3226745icon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icon",_loc2_,param1));
            }
         }
      }
   }
}
