package com.bigpoint.seafight.view.userInterface.widgets.menus.infomessagemenu
{
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.vo.class_1098;
   import com.bigpoint.seafight.net.events.class_1097;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.commands.IDragDropMoveCommand;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.common.HeaderDecoText;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardsTabListItem;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiButtonVO;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScoreVo;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.greensock.TweenLite;
   import com.greensock.easing.Strong;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BevelFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_1119;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_127.class_486;
   import package_127.class_753;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_88;
   import package_15.class_48;
   import package_171.class_1270;
   import package_23.class_42;
   import package_28.class_56;
   import package_34.class_1099;
   import package_41.class_84;
   import package_41.class_93;
   import package_48.class_1534;
   import package_5.class_984;
   import package_56.class_427;
   import package_6.class_14;
   import package_69.class_978;
   import package_88.class_1090;
   import package_88.class_1093;
   import package_88.class_967;
   import package_9.class_17;
   import package_9.class_91;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.primitives.BitmapImage;
   
   public final class InfoMessageMenu extends Group
   {
       
      
      private var _410956671container:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private const MAX_ICONS:uint = 5;
      
      private const ANIMATION_TIME:Number = 1.5;
      
      private var _numOfCurrentIcons:int = 0;
      
      private var _icons:Vector.<InfoMessageButton>;
      
      private var _popUpDisplayed:Boolean;
      
      public function InfoMessageMenu()
      {
         this._icons = new Vector.<InfoMessageButton>();
         super();
         mx_internal::_document = this;
         this.width = 488;
         this.height = 350;
         this.mxmlContent = [this._InfoMessageMenu_Group2_i()];
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
      
      override protected function initializationComplete() : void
      {
         super.initializationComplete();
         class_427.name_3.addEventListener(class_1097.var_1673,this.onMenuInfoMessageUpdate);
      }
      
      private final function onMenuInfoMessageUpdate(param1:class_1097) : void
      {
         this.pushIcon(param1.var_228);
      }
      
      private final function pushIcon(param1:class_1098) : void
      {
         var _loc2_:InfoMessageButton = new InfoMessageButton();
         _loc2_.vo = param1;
         this._icons.push(_loc2_);
         this.updateIcons();
      }
      
      private final function updateIcons() : void
      {
         if(this._numOfCurrentIcons < 5 && this._numOfCurrentIcons < this._icons.length)
         {
            this.container.addElement(this._icons[this._numOfCurrentIcons]);
            this._numOfCurrentIcons++;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this._numOfCurrentIcons)
         {
            TweenLite.to(this._icons[_loc1_],1.5,{
               "ease":Strong.easeIn,
               "y":320 - _loc1_ * (this._icons[_loc1_].height + 10)
            });
            _loc1_++;
         }
      }
      
      public final function deleteIcon(param1:int) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._icons.length)
         {
            if(this._icons[_loc2_].vo.name_7 == param1)
            {
               this.container.removeElement(this._icons[_loc2_]);
               this._icons.splice(_loc2_,1);
               this._numOfCurrentIcons--;
               class_1099.name_3.method_2703(param1);
            }
            _loc2_++;
         }
         this.updateIcons();
      }
      
      public final function deleteAllIcons() : void
      {
         var _loc1_:int = 0;
         if(this._icons)
         {
            _loc1_ = 0;
            while(_loc1_ < this._icons.length)
            {
               if(this.container.contains(this._icons[_loc1_]))
               {
                  this.container.removeElement(this._icons[_loc1_]);
               }
               _loc1_++;
            }
            this._numOfCurrentIcons = 0;
            this._icons = new Vector.<InfoMessageButton>();
         }
      }
      
      public function get popUpDisplayed() : Boolean
      {
         return this._popUpDisplayed;
      }
      
      public function set popUpDisplayed(param1:Boolean) : void
      {
         this._popUpDisplayed = param1;
      }
      
      private final function _InfoMessageMenu_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.id = "container";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.container = _loc1_;
         BindingManager.executeBindings(this,"container",this.container);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get container() : Group
      {
         return this._410956671container;
      }
      
      public function set container(param1:Group) : void
      {
         var _loc2_:Object = this._410956671container;
         if(_loc2_ !== param1)
         {
            this._410956671container = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container",_loc2_,param1));
            }
         }
      }
   }
}
