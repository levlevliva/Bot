package com.bigpoint.seafight.view.popups.mateysmenu.component
{
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.layouts.supportClasses.LayoutAxis;
   import com.bigpoint.seafight.view.popups.common.table.Table;
   import com.bigpoint.seafight.view.popups.common.table.TableColumnHeaderBg;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_96;
   import package_154.class_842;
   import package_170.class_979;
   import package_47.class_129;
   import package_47.class_136;
   import package_48.class_996;
   import package_49.class_137;
   import package_5.class_22;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   import spark.events.IndexChangeEvent;
   
   public final class MateysWindowNaviPopup extends Group
   {
       
      
      private var _951530617content:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function MateysWindowNaviPopup()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._MateysWindowNaviPopup_VGroup1_c()];
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
      
      private final function _MateysWindowNaviPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingBottom = 5;
         _loc1_.mxmlContent = [this._MateysWindowNaviPopup_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MateysWindowNaviPopup_Group2_i() : Group
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
