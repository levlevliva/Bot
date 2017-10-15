package com.bigpoint.seafight.view.popups.event.modules.skins
{
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.CheckBoxGroup;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.table.Table;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.event.modules.common.BulletText;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.GuildRelationsComboBoxListItem;
   import com.bigpoint.seafight.view.popups.reputation.ReputationFavoriteEvent;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tooltips.ConcreteGoodTooltip;
   import com.bit101.components.ColorChooser;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.IFlexModuleFactory;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_107.class_693;
   import package_14.class_47;
   import package_170.class_979;
   import package_186.class_1137;
   import package_216.class_1575;
   import package_26.class_101;
   import package_52.class_167;
   import package_72.class_1080;
   import package_89.class_1138;
   import package_90.class_316;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.Scroller;
   import spark.components.TextInput;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   import spark.components.supportClasses.Skin;
   import spark.effects.Animate;
   import spark.effects.animation.MotionPath;
   import spark.events.GridSelectionEvent;
   import spark.events.TextOperationEvent;
   import spark.layouts.VerticalLayout;
   
   public final class EventModulDefaultSkin extends Skin
   {
       
      
      private var _951530617content:VGroup;
      
      private var _1585012692grpContent:Group;
      
      private var _66491520mainContent:VGroup;
      
      private var _40973069moduleDivider:ModuleDivider;
      
      private var _1795581177titleGroup:Group;
      
      private var _907438540txTitle:BulletText;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function EventModulDefaultSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._EventModulDefaultSkin_VGroup1_i()];
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
      
      private final function _EventModulDefaultSkin_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingLeft = 11;
         _loc1_.mxmlContent = [this._EventModulDefaultSkin_Group1_i()];
         _loc1_.id = "mainContent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainContent = _loc1_;
         BindingManager.executeBindings(this,"mainContent",this.mainContent);
         return _loc1_;
      }
      
      private final function _EventModulDefaultSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._EventModulDefaultSkin_BorderType11_c(),this._EventModulDefaultSkin_VGroup2_i()];
         _loc1_.id = "grpContent";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.grpContent = _loc1_;
         BindingManager.executeBindings(this,"grpContent",this.grpContent);
         return _loc1_;
      }
      
      private final function _EventModulDefaultSkin_BorderType11_c() : BorderType1
      {
         var _loc1_:BorderType1 = new BorderType1();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _EventModulDefaultSkin_VGroup2_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingLeft = 12;
         _loc1_.paddingTop = 12;
         _loc1_.paddingBottom = 2;
         _loc1_.gap = 0;
         _loc1_.mxmlContent = [this._EventModulDefaultSkin_Group2_i()];
         _loc1_.id = "content";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.content = _loc1_;
         BindingManager.executeBindings(this,"content",this.content);
         return _loc1_;
      }
      
      private final function _EventModulDefaultSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.height = 40;
         _loc1_.mxmlContent = [this._EventModulDefaultSkin_BulletText1_i(),this._EventModulDefaultSkin_ModuleDivider1_i()];
         _loc1_.id = "titleGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleGroup = _loc1_;
         BindingManager.executeBindings(this,"titleGroup",this.titleGroup);
         return _loc1_;
      }
      
      private final function _EventModulDefaultSkin_BulletText1_i() : BulletText
      {
         var _loc1_:BulletText = new BulletText();
         _loc1_.percentWidth = 100;
         _loc1_.paddingTop = 5;
         _loc1_.paddingBottom = 7;
         _loc1_.text = "txTitleParent";
         _loc1_.id = "txTitle";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.txTitle = _loc1_;
         BindingManager.executeBindings(this,"txTitle",this.txTitle);
         return _loc1_;
      }
      
      private final function _EventModulDefaultSkin_ModuleDivider1_i() : ModuleDivider
      {
         var _loc1_:ModuleDivider = new ModuleDivider();
         _loc1_.y = 28;
         _loc1_.id = "moduleDivider";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moduleDivider = _loc1_;
         BindingManager.executeBindings(this,"moduleDivider",this.moduleDivider);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : VGroup
      {
         return this._951530617content;
      }
      
      public function set content(param1:VGroup) : void
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
      
      [Bindable(event="propertyChange")]
      public function get grpContent() : Group
      {
         return this._1585012692grpContent;
      }
      
      public function set grpContent(param1:Group) : void
      {
         var _loc2_:Object = this._1585012692grpContent;
         if(_loc2_ !== param1)
         {
            this._1585012692grpContent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"grpContent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainContent() : VGroup
      {
         return this._66491520mainContent;
      }
      
      public function set mainContent(param1:VGroup) : void
      {
         var _loc2_:Object = this._66491520mainContent;
         if(_loc2_ !== param1)
         {
            this._66491520mainContent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainContent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moduleDivider() : ModuleDivider
      {
         return this._40973069moduleDivider;
      }
      
      public function set moduleDivider(param1:ModuleDivider) : void
      {
         var _loc2_:Object = this._40973069moduleDivider;
         if(_loc2_ !== param1)
         {
            this._40973069moduleDivider = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moduleDivider",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleGroup() : Group
      {
         return this._1795581177titleGroup;
      }
      
      public function set titleGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1795581177titleGroup;
         if(_loc2_ !== param1)
         {
            this._1795581177titleGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txTitle() : BulletText
      {
         return this._907438540txTitle;
      }
      
      public function set txTitle(param1:BulletText) : void
      {
         var _loc2_:Object = this._907438540txTitle;
         if(_loc2_ !== param1)
         {
            this._907438540txTitle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txTitle",_loc2_,param1));
            }
         }
      }
   }
}
