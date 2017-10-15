package com.bigpoint.seafight.view.popups.currencypopup.component
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.currencypopup.vo.CurrencyItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import flash.events.Event;
   import flash.text.StyleSheet;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import package_121.class_841;
   import package_14.class_88;
   import package_23.class_42;
   import package_39.class_973;
   import package_5.class_984;
   import package_52.class_152;
   import package_52.class_153;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.components.supportClasses.ItemRenderer;
   import spark.primitives.BitmapImage;
   import spark.primitives.Graphic;
   
   public final class CurrencyItemRenderer extends ItemRenderer
   {
      
      public static const CURRENCY_BUY_EVENT:String = "CurrencyBuyEvent";
       
      
      private var _3226745icon:BitmapImage;
      
      private var _1082037139purchaseButton:MiniActionButton;
      
      private var _1393776636txAmount:Label;
      
      private var _860742865txName:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var vo:CurrencyItemVo;
      
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
      
      public static function getSmallCurrencyIconPath(param1:int) : String
      {
         return class_42.method_47("images/merchant/currency/small/gfx_currency_small_" + param1 + class_984.const_9);
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
         super.data = this.vo = param1 as CurrencyItemVo;
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
         var _loc1_:class_841 = this.vo.currency;
         this.icon.source = getSmallCurrencyIconPath(_loc1_.name_5);
         this.txName.text = class_88.method_32(class_88.const_19,_loc1_.name_5.toString());
         this.txAmount.text = class_13.method_53(_loc1_.var_10);
         this.purchaseButton.includeInLayout = this.purchaseButton.visible = this.vo.purchasable;
         this.dirty = false;
      }
      
      private final function _CurrencyItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = null;
         _loc1_ = new HGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 5;
         _loc1_.mouseEnabled = false;
         _loc1_.verticalAlign = "middle";
         _loc1_.horizontalCenter = 0;
         _loc1_.paddingLeft = 5;
         _loc1_.paddingRight = 5;
         _loc1_.paddingTop = 5;
         _loc1_.paddingBottom = 5;
         _loc1_.mxmlContent = [this._CurrencyItemRenderer_BitmapImage1_i(),this._CurrencyItemRenderer_VGroup1_c(),this._CurrencyItemRenderer_MiniActionButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CurrencyItemRenderer_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.scaleX = 0.5;
         _loc1_.scaleY = 0.5;
         _loc1_.smooth = true;
         _loc1_.initialized(this,"icon");
         this.icon = _loc1_;
         BindingManager.executeBindings(this,"icon",this.icon);
         return _loc1_;
      }
      
      private final function _CurrencyItemRenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.gap = 2;
         _loc1_.paddingTop = 1;
         _loc1_.mxmlContent = [this._CurrencyItemRenderer_Label1_i(),this._CurrencyItemRenderer_Label2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CurrencyItemRenderer_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "fontwhite10b";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.showTruncationTip = true;
         _loc1_.id = "txName";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.txName = _loc1_;
         BindingManager.executeBindings(this,"txName",this.txName);
         return _loc1_;
      }
      
      private final function _CurrencyItemRenderer_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.percentWidth = 100;
         _loc1_.styleName = "fontgrey10";
         _loc1_.maxDisplayedLines = 1;
         _loc1_.showTruncationTip = true;
         _loc1_.id = "txAmount";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.txAmount = _loc1_;
         BindingManager.executeBindings(this,"txAmount",this.txAmount);
         return _loc1_;
      }
      
      private final function _CurrencyItemRenderer_MiniActionButton1_i() : MiniActionButton
      {
         var _loc1_:MiniActionButton = new MiniActionButton();
         _loc1_.dynaBmpSourceName = "ico_plus";
         _loc1_.addEventListener("clicked",this.__purchaseButton_clicked);
         _loc1_.id = "purchaseButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.purchaseButton = _loc1_;
         BindingManager.executeBindings(this,"purchaseButton",this.purchaseButton);
         return _loc1_;
      }
      
      public final function __purchaseButton_clicked(param1:Event) : void
      {
         dispatchEvent(new class_973(CURRENCY_BUY_EVENT,this.vo.currency.name_5,true));
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
      
      [Bindable(event="propertyChange")]
      public function get purchaseButton() : MiniActionButton
      {
         return this._1082037139purchaseButton;
      }
      
      public function set purchaseButton(param1:MiniActionButton) : void
      {
         var _loc2_:Object = this._1082037139purchaseButton;
         if(_loc2_ !== param1)
         {
            this._1082037139purchaseButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"purchaseButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txAmount() : Label
      {
         return this._1393776636txAmount;
      }
      
      public function set txAmount(param1:Label) : void
      {
         var _loc2_:Object = this._1393776636txAmount;
         if(_loc2_ !== param1)
         {
            this._1393776636txAmount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txAmount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txName() : Label
      {
         return this._860742865txName;
      }
      
      public function set txName(param1:Label) : void
      {
         var _loc2_:Object = this._860742865txName;
         if(_loc2_ !== param1)
         {
            this._860742865txName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txName",_loc2_,param1));
            }
         }
      }
   }
}
