package com.bigpoint.seafight.view.popups.reputation
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.CheckBoxGroup;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.table.Table;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_111.class_1176;
   import package_111.class_790;
   import package_12.class_21;
   import package_14.class_47;
   import package_171.class_1044;
   import package_171.class_1057;
   import package_190.class_1181;
   import package_34.class_107;
   import package_34.class_1526;
   import package_41.class_93;
   import package_42.class_949;
   import package_47.class_129;
   import package_47.class_136;
   import package_49.class_137;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_43;
   import package_52.class_168;
   import package_92.class_944;
   import package_92.class_962;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   
   public final class ReputationPopup extends VGroup
   {
       
      
      private var _1091888612faction:GridColumn;
      
      private var _1050790300favorite:GridColumn;
      
      private var _1252986688opposer:GridColumn;
      
      private var _1292876679reputation:GridColumn;
      
      private var _1236101602reputationArrayList:ArrayCollection;
      
      private var _2145512149reputationTable:Table;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ReputationPopup()
      {
         super();
         mx_internal::_document = this;
         this.gap = 0;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.paddingTop = 5;
         this.paddingBottom = 3;
         this.paddingRight = 4;
         this.paddingLeft = 4;
         this.mxmlContent = [this._ReputationPopup_Group1_c()];
         this._ReputationPopup_GridColumn1_i();
         this._ReputationPopup_GridColumn4_i();
         this._ReputationPopup_GridColumn3_i();
         this._ReputationPopup_GridColumn2_i();
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
      
      private final function _ReputationPopup_GridColumn1_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.minWidth = 5;
         _loc1_.width = 157;
         _loc1_.sortable = true;
         _loc1_.resizable = false;
         _loc1_.itemRenderer = this._ReputationPopup_ClassFactory1_c();
         this.faction = _loc1_;
         BindingManager.executeBindings(this,"faction",this.faction);
         return _loc1_;
      }
      
      private final function _ReputationPopup_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ReputationNameItemRenderer;
         return _loc1_;
      }
      
      private final function _ReputationPopup_GridColumn4_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.width = 100;
         _loc1_.sortable = true;
         _loc1_.resizable = false;
         _loc1_.itemRenderer = this._ReputationPopup_ClassFactory4_c();
         this.favorite = _loc1_;
         BindingManager.executeBindings(this,"favorite",this.favorite);
         return _loc1_;
      }
      
      private final function _ReputationPopup_ClassFactory4_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ReputationFavoriteItemRenderer;
         return _loc1_;
      }
      
      private final function _ReputationPopup_GridColumn3_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.minWidth = 5;
         _loc1_.width = 157;
         _loc1_.sortable = true;
         _loc1_.resizable = false;
         _loc1_.itemRenderer = this._ReputationPopup_ClassFactory3_c();
         this.opposer = _loc1_;
         BindingManager.executeBindings(this,"opposer",this.opposer);
         return _loc1_;
      }
      
      private final function _ReputationPopup_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ReputationOpposerItemRenderer;
         return _loc1_;
      }
      
      private final function _ReputationPopup_GridColumn2_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.minWidth = 5;
         _loc1_.width = 96;
         _loc1_.sortable = true;
         _loc1_.resizable = false;
         _loc1_.itemRenderer = this._ReputationPopup_ClassFactory2_c();
         this.reputation = _loc1_;
         BindingManager.executeBindings(this,"reputation",this.reputation);
         return _loc1_;
      }
      
      private final function _ReputationPopup_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = ReputationNumberItemRenderer;
         return _loc1_;
      }
      
      private final function _ReputationPopup_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.mouseEnabled = false;
         _loc1_.mxmlContent = [this._ReputationPopup_Table1_i(),this._ReputationPopup_BorderType11_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ReputationPopup_Table1_i() : Table
      {
         var _loc1_:Table = new Table();
         _loc1_.right = 1;
         _loc1_.columns = this._ReputationPopup_ArrayCollection1_i();
         _loc1_.id = "reputationTable";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.reputationTable = _loc1_;
         BindingManager.executeBindings(this,"reputationTable",this.reputationTable);
         return _loc1_;
      }
      
      private final function _ReputationPopup_ArrayCollection1_i() : ArrayCollection
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         _loc1_.initialized(this,"reputationArrayList");
         this.reputationArrayList = _loc1_;
         BindingManager.executeBindings(this,"reputationArrayList",this.reputationArrayList);
         return _loc1_;
      }
      
      private final function _ReputationPopup_BorderType11_c() : BorderType1
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
      
      [Bindable(event="propertyChange")]
      public function get faction() : GridColumn
      {
         return this._1091888612faction;
      }
      
      public function set faction(param1:GridColumn) : void
      {
         var _loc2_:Object = this._1091888612faction;
         if(_loc2_ !== param1)
         {
            this._1091888612faction = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"faction",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get favorite() : GridColumn
      {
         return this._1050790300favorite;
      }
      
      public function set favorite(param1:GridColumn) : void
      {
         var _loc2_:Object = this._1050790300favorite;
         if(_loc2_ !== param1)
         {
            this._1050790300favorite = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"favorite",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get opposer() : GridColumn
      {
         return this._1252986688opposer;
      }
      
      public function set opposer(param1:GridColumn) : void
      {
         var _loc2_:Object = this._1252986688opposer;
         if(_loc2_ !== param1)
         {
            this._1252986688opposer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"opposer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reputation() : GridColumn
      {
         return this._1292876679reputation;
      }
      
      public function set reputation(param1:GridColumn) : void
      {
         var _loc2_:Object = this._1292876679reputation;
         if(_loc2_ !== param1)
         {
            this._1292876679reputation = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reputation",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reputationArrayList() : ArrayCollection
      {
         return this._1236101602reputationArrayList;
      }
      
      public function set reputationArrayList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1236101602reputationArrayList;
         if(_loc2_ !== param1)
         {
            this._1236101602reputationArrayList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reputationArrayList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reputationTable() : Table
      {
         return this._2145512149reputationTable;
      }
      
      public function set reputationTable(param1:Table) : void
      {
         var _loc2_:Object = this._2145512149reputationTable;
         if(_loc2_ !== param1)
         {
            this._2145512149reputationTable = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reputationTable",_loc2_,param1));
            }
         }
      }
   }
}
