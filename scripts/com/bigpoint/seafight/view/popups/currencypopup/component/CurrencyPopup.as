package com.bigpoint.seafight.view.popups.currencypopup.component
{
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import flash.events.Event;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColorStroke;
   import spark.components.Group;
   import spark.components.List;
   import spark.primitives.Rect;
   
   public final class CurrencyPopup extends Group
   {
       
      
      private var _1005036623currencyList:List;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var currencies:ArrayList;
      
      private var dirty:Boolean;
      
      public function CurrencyPopup()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.left = 6;
         this.right = 6;
         this.bottom = 4;
         this.top = 6;
         this.mxmlContent = [this._CurrencyPopup_Group2_c(),this._CurrencyPopup_Rect1_c()];
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
      
      public function set data(param1:ArrayList) : void
      {
         if(!param1.length)
         {
            return;
         }
         this.currencies = param1;
         this.dirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(!this.currencies || !this.dirty)
         {
            return;
         }
         this.currencyList.dataProvider = this.currencies;
         delay(100,function():void
         {
            dispatchEvent(new Event(Event.COMPLETE,true));
         });
         this.dirty = false;
      }
      
      private final function _CurrencyPopup_Group2_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.top = 1;
         _loc1_.bottom = 1;
         _loc1_.mxmlContent = [this._CurrencyPopup_List1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CurrencyPopup_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.horizontalCenter = 0;
         _loc1_.useVirtualLayout = false;
         _loc1_.itemRenderer = this._CurrencyPopup_ClassFactory1_c();
         _loc1_.setStyle("horizontalScrollPolicy","off");
         _loc1_.setStyle("verticalScrollPolicy","auto");
         _loc1_.setStyle("skinClass",CommonListSkin);
         _loc1_.id = "currencyList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.currencyList = _loc1_;
         BindingManager.executeBindings(this,"currencyList",this.currencyList);
         return _loc1_;
      }
      
      private final function _CurrencyPopup_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CurrencyItemRenderer;
         return _loc1_;
      }
      
      private final function _CurrencyPopup_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.stroke = this._CurrencyPopup_SolidColorStroke1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _CurrencyPopup_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.weight = 1;
         _loc1_.color = 4274727;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyList() : List
      {
         return this._1005036623currencyList;
      }
      
      public function set currencyList(param1:List) : void
      {
         var _loc2_:Object = this._1005036623currencyList;
         if(_loc2_ !== param1)
         {
            this._1005036623currencyList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyList",_loc2_,param1));
            }
         }
      }
   }
}
