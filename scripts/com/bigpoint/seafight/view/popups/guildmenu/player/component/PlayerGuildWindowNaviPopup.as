package com.bigpoint.seafight.view.popups.guildmenu.player.component
{
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowBoosterItem;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowSlot;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowSlotBoosterItem;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.InventoryDragDropController;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.guildmenu.common.GuildMenuVanityComponent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.logging.Log;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import package_100.class_1186;
   import package_104.class_448;
   import package_158.class_703;
   import package_170.class_979;
   import package_34.class_116;
   import package_5.class_123;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.Rect;
   
   public final class PlayerGuildWindowNaviPopup extends Group
   {
       
      
      private var _951530617content:Group;
      
      private var _823764309vanity:GuildMenuVanityComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function PlayerGuildWindowNaviPopup()
      {
         super();
         mx_internal::_document = this;
         this.left = 4;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._PlayerGuildWindowNaviPopup_GuildMenuVanityComponent1_i(),this._PlayerGuildWindowNaviPopup_VGroup1_c()];
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
      
      private final function _PlayerGuildWindowNaviPopup_GuildMenuVanityComponent1_i() : GuildMenuVanityComponent
      {
         var _loc1_:GuildMenuVanityComponent = new GuildMenuVanityComponent();
         _loc1_.height = 330;
         _loc1_.bottom = 5;
         _loc1_.id = "vanity";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.vanity = _loc1_;
         BindingManager.executeBindings(this,"vanity",this.vanity);
         return _loc1_;
      }
      
      private final function _PlayerGuildWindowNaviPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingBottom = 5;
         _loc1_.paddingRight = 4;
         _loc1_.mxmlContent = [this._PlayerGuildWindowNaviPopup_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _PlayerGuildWindowNaviPopup_Group2_i() : Group
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
      
      [Bindable(event="propertyChange")]
      public function get vanity() : GuildMenuVanityComponent
      {
         return this._823764309vanity;
      }
      
      public function set vanity(param1:GuildMenuVanityComponent) : void
      {
         var _loc2_:Object = this._823764309vanity;
         if(_loc2_ !== param1)
         {
            this._823764309vanity = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vanity",_loc2_,param1));
            }
         }
      }
   }
}
