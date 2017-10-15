package com.bigpoint.seafight.view.popups.guildmenu.safehaven.component
{
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingAssistantVoMinimal;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import flash.events.MouseEvent;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import org.apache.flex.collections.VectorCollection;
   import package_212.class_1458;
   import spark.components.Group;
   import spark.components.VGroup;
   
   public final class SafeHavenGuildWindowNaviPopup extends Group
   {
       
      
      private var _951530617content:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function SafeHavenGuildWindowNaviPopup()
      {
         super();
         mx_internal::_document = this;
         this.left = 4;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._SafeHavenGuildWindowNaviPopup_VGroup1_c()];
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
      
      private final function _SafeHavenGuildWindowNaviPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingBottom = 5;
         _loc1_.paddingRight = 4;
         _loc1_.mxmlContent = [this._SafeHavenGuildWindowNaviPopup_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SafeHavenGuildWindowNaviPopup_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.id = "content";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.content = _loc1_;
         BindingManager.executeBindings(this,"content",this.content);
         return _loc1_;
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
