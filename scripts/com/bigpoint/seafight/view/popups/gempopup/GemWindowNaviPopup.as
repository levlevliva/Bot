package com.bigpoint.seafight.view.popups.gempopup
{
   import com.bigpoint.seafight.view.popups.gempopup.crafting.component.GemsInventoryGroup;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.vo.CraftingMaterialItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemListVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemsInventoryVo;
   import com.bigpoint.seafight.view.userInterface.class_149;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemConfigFooterVo;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import package_104.class_448;
   import package_104.class_803;
   import package_104.class_989;
   import package_14.class_47;
   import package_14.class_94;
   import package_16.class_28;
   import package_47.class_129;
   import package_47.class_136;
   import package_49.class_137;
   import package_7.class_1039;
   import package_95.class_341;
   import package_97.class_409;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.Rect;
   
   public final class GemWindowNaviPopup extends Group
   {
       
      
      private var _951530617content:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function GemWindowNaviPopup()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._GemWindowNaviPopup_VGroup1_c()];
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
      
      private final function _GemWindowNaviPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingBottom = 0;
         _loc1_.paddingRight = 0;
         _loc1_.mxmlContent = [this._GemWindowNaviPopup_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _GemWindowNaviPopup_Group2_i() : Group
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
