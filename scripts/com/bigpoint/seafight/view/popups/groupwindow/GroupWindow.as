package com.bigpoint.seafight.view.popups.groupwindow
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.dragging.DragTargetType;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetStatsComponentVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetsInventoryVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.table.ListSkinForOnePixelLines;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuHeader;
   import com.bigpoint.seafight.view.popups.event.component.EventModuleFactory;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildIslandListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardSubListItem;
   import com.bigpoint.seafight.view.popups.monthlyloginbonus.MonthlyLoginBonusPopup;
   import com.bigpoint.seafight.view.popups.shipequipment.component.common.SlotsIndicator;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.class_207;
   import com.bigpoint.seafight.view.userInterface.class_208;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.class_211;
   import com.bigpoint.seafight.view.userInterface.class_212;
   import com.bigpoint.seafight.view.userInterface.class_215;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import com.bigpoint.seafight.view.userInterface.class_221;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkinBold;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.PropTween;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.ColorTransform;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IVisualElement;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.bitmapclip.AnimationManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.GuildIslandType;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_103.class_1029;
   import package_111.class_391;
   import package_112.class_622;
   import package_122.class_428;
   import package_122.class_634;
   import package_136.class_926;
   import package_14.class_220;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_88;
   import package_17.class_224;
   import package_18.class_571;
   import package_18.class_855;
   import package_185.class_1136;
   import package_216.class_1575;
   import package_26.class_218;
   import package_41.class_89;
   import package_41.class_93;
   import package_48.class_996;
   import package_5.class_123;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_940;
   import package_50.class_219;
   import package_51.class_148;
   import package_6.class_14;
   import package_60.class_183;
   import package_69.class_978;
   import package_7.class_1039;
   import package_7.class_104;
   import package_72.class_203;
   import package_76.class_279;
   import package_8.class_114;
   import package_9.class_120;
   import package_9.class_91;
   import package_91.class_1246;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Button;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.RichText;
   import spark.components.Scroller;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   import spark.primitives.supportClasses.GraphicElement;
   import spark.utils.TextFlowUtil;
   
   public final class GroupWindow extends HGroup
   {
      
      public static const EVENT_INVITE:String = "EVENT_INVITE";
       
      
      private var _1741915245arrowRight:BriskImageDynaLib;
      
      private var _773045014icoGroup:MiniActionButton;
      
      private var _3322014list:List;
      
      private var _561452617searchGroup:HGroup;
      
      private var _710472971searchText:SF_LocaLabel;
      
      private var _1624148692targetsButton:Group;
      
      private var _256808482txSearchInput:SeafightTextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _enabled:GroupWindowItem;
      
      public function GroupWindow()
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
         this.mxmlContent = [this._GroupWindow_VGroup1_c(),this._GroupWindow_Group2_i()];
         this.addEventListener("creationComplete",this.___GroupWindow_HGroup1_creationComplete);
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
      
      private final function onCC() : void
      {
         this.targetsButton.toolTip = class_47.method_22.method_20("groupWindowSwitchOverview");
         this.list.addEventListener(GroupWindowItem.EVENT_SWITCH_ENABLED,this.onSwitchEnabled);
         this.list.addEventListener(FlexEvent.UPDATE_COMPLETE,this.updateSize);
         this.setData(null);
      }
      
      private final function updateTitle(param1:int) : void
      {
         (this.owner as TitleWindow).title = class_47.method_22.method_20("group_view_window_title") + " (" + param1 + "/5)";
      }
      
      public final function destroy() : void
      {
         this.list.removeEventListener(GroupWindowItem.EVENT_SWITCH_ENABLED,this.onSwitchEnabled);
         this.list.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.updateSize);
      }
      
      public final function setData(param1:ArrayList) : void
      {
         this.list.dataProvider = param1;
         var _loc2_:int = !!param1?int(param1.length):0;
         this.searchGroup.visible = _loc2_ < 5;
         this.targetsButton.visible = _loc2_ > 0;
         this.updateTitle(_loc2_);
         if(_loc2_ == 0)
         {
            this.width = 256;
            owner.width = this.width + 16;
            this.arrowRight.scaleX = 1;
         }
      }
      
      private final function onSwitchEnabled(param1:Event) : void
      {
         var _loc2_:GroupWindowItem = param1.target as GroupWindowItem;
         if(this._enabled)
         {
            this._enabled.switchEnabled();
         }
         if(_loc2_ == this._enabled)
         {
            this._enabled = null;
         }
         else
         {
            this._enabled = _loc2_;
            this._enabled.switchEnabled();
         }
         this.updateHeight();
      }
      
      private final function updateSize(param1:Event) : void
      {
         this.updateHeight();
         this.updateWidth();
      }
      
      private final function updateHeight() : void
      {
         var _loc5_:GroupWindowItem = null;
         var _loc1_:DataGroup = this.list.dataGroup;
         var _loc2_:int = 0;
         if(!_loc1_)
         {
            return;
         }
         var _loc3_:int = _loc1_.numElements;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc1_.getElementAt(_loc4_) as GroupWindowItem;
            if(_loc5_)
            {
               _loc2_ = _loc2_ + _loc5_.getFutureHeight();
            }
            _loc4_++;
         }
         _loc2_ = _loc2_ + -1 * (_loc3_ - 1);
         this.height = _loc2_ + (!!this.searchGroup.visible?40:13);
         owner.height = this.height + 36;
      }
      
      private final function onSwitchLength(param1:Event) : void
      {
         var _loc5_:GroupWindowItem = null;
         var _loc2_:DataGroup = this.list.dataGroup;
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:int = _loc2_.numElements;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc2_.getElementAt(_loc4_) as GroupWindowItem;
            if(_loc5_)
            {
               _loc5_.switchLength();
            }
            _loc4_++;
         }
         this.updateWidth();
         this.arrowRight.scaleX = this.arrowRight.scaleX * -1;
      }
      
      private final function updateWidth() : void
      {
         var _loc3_:GroupWindowItem = null;
         var _loc1_:DataGroup = this.list.dataGroup;
         if(_loc1_ && _loc1_.numElements)
         {
            _loc3_ = _loc1_.getElementAt(0) as GroupWindowItem;
            this.width = _loc3_.getFutureWidth() + 16;
            owner.width = this.width + 16;
         }
         var _loc2_:TitleWindow = this.owner as TitleWindow;
         _loc2_.move(_loc2_.x,_loc2_.y);
      }
      
      public final function setSearchText(param1:String) : void
      {
         this.txSearchInput.text = param1;
         this.searchText.visible = false;
      }
      
      private final function _GroupWindow_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.gap = 3;
         _loc1_.mxmlContent = [this._GroupWindow_List1_i(),this._GroupWindow_HGroup2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _GroupWindow_List1_i() : List
      {
         var _loc1_:List = new List();
         _loc1_.itemRenderer = this._GroupWindow_ClassFactory1_c();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.useVirtualLayout = false;
         _loc1_.setStyle("contentBackgroundAlpha",0);
         _loc1_.setStyle("borderVisible",false);
         _loc1_.setStyle("horizontalScrollPolicy","off");
         _loc1_.setStyle("verticalScrollPolicy","off");
         _loc1_.setStyle("contentBackgroundColor",0);
         _loc1_.setStyle("skinClass",ListSkinForOnePixelLines);
         _loc1_.id = "list";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.list = _loc1_;
         BindingManager.executeBindings(this,"list",this.list);
         return _loc1_;
      }
      
      private final function _GroupWindow_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = GroupWindowItem;
         return _loc1_;
      }
      
      private final function _GroupWindow_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.gap = 5;
         _loc1_.paddingLeft = 1;
         _loc1_.mxmlContent = [this._GroupWindow_Group1_c(),this._GroupWindow_MiniActionButton1_i()];
         _loc1_.id = "searchGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.searchGroup = _loc1_;
         BindingManager.executeBindings(this,"searchGroup",this.searchGroup);
         return _loc1_;
      }
      
      private final function _GroupWindow_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 215;
         _loc1_.height = 25;
         _loc1_.mxmlContent = [this._GroupWindow_SF_LocaLabel1_i(),this._GroupWindow_GroupWindowRect1_c(),this._GroupWindow_SeafightTextInput1_i()];
         _loc1_.addEventListener("mouseDown",this.___GroupWindow_Group1_mouseDown);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _GroupWindow_SF_LocaLabel1_i() : SF_LocaLabel
      {
         var _loc1_:SF_LocaLabel = new SF_LocaLabel();
         _loc1_.locaID = "search";
         _loc1_.styleName = "fontgrey12";
         _loc1_.width = 200;
         _loc1_.left = 5;
         _loc1_.verticalCenter = 1;
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.id = "searchText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.searchText = _loc1_;
         BindingManager.executeBindings(this,"searchText",this.searchText);
         return _loc1_;
      }
      
      private final function _GroupWindow_GroupWindowRect1_c() : GroupWindowRect
      {
         var _loc1_:GroupWindowRect = new GroupWindowRect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _GroupWindow_SeafightTextInput1_i() : SeafightTextInput
      {
         var _loc1_:SeafightTextInput = new SeafightTextInput();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.initialized(this,"txSearchInput");
         this.txSearchInput = _loc1_;
         BindingManager.executeBindings(this,"txSearchInput",this.txSearchInput);
         return _loc1_;
      }
      
      public final function ___GroupWindow_Group1_mouseDown(param1:MouseEvent) : void
      {
         this.searchText.visible = false;
      }
      
      private final function _GroupWindow_MiniActionButton1_i() : MiniActionButton
      {
         var _loc1_:MiniActionButton = new MiniActionButton();
         _loc1_.dynaBmpSourceName = "ico_grouplist";
         _loc1_.toolTip = "groupWindowInvite";
         _loc1_.id = "icoGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.icoGroup = _loc1_;
         BindingManager.executeBindings(this,"icoGroup",this.icoGroup);
         return _loc1_;
      }
      
      private final function _GroupWindow_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.width = 14;
         _loc1_.percentHeight = 100;
         _loc1_.mxmlContent = [this._GroupWindow_BriskImageDynaLib1_i(),this._GroupWindow_GroupWindowRect2_c()];
         _loc1_.addEventListener("click",this.__targetsButton_click);
         _loc1_.id = "targetsButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.targetsButton = _loc1_;
         BindingManager.executeBindings(this,"targetsButton",this.targetsButton);
         return _loc1_;
      }
      
      private final function _GroupWindow_BriskImageDynaLib1_i() : BriskImageDynaLib
      {
         var _loc1_:BriskImageDynaLib = new BriskImageDynaLib();
         _loc1_.dynaLibName = "componentassets";
         _loc1_.dynaBmpSourceName = "small_arrow_closed";
         _loc1_.horizontalCenter = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.id = "arrowRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.arrowRight = _loc1_;
         BindingManager.executeBindings(this,"arrowRight",this.arrowRight);
         return _loc1_;
      }
      
      private final function _GroupWindow_GroupWindowRect2_c() : GroupWindowRect
      {
         var _loc1_:GroupWindowRect = new GroupWindowRect();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.x = 0;
         _loc1_.y = 0;
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      public final function __targetsButton_click(param1:MouseEvent) : void
      {
         this.onSwitchLength(param1);
      }
      
      public final function ___GroupWindow_HGroup1_creationComplete(param1:FlexEvent) : void
      {
         this.onCC();
      }
      
      [Bindable(event="propertyChange")]
      public function get arrowRight() : BriskImageDynaLib
      {
         return this._1741915245arrowRight;
      }
      
      public function set arrowRight(param1:BriskImageDynaLib) : void
      {
         var _loc2_:Object = this._1741915245arrowRight;
         if(_loc2_ !== param1)
         {
            this._1741915245arrowRight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arrowRight",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get icoGroup() : MiniActionButton
      {
         return this._773045014icoGroup;
      }
      
      public function set icoGroup(param1:MiniActionButton) : void
      {
         var _loc2_:Object = this._773045014icoGroup;
         if(_loc2_ !== param1)
         {
            this._773045014icoGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"icoGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get list() : List
      {
         return this._3322014list;
      }
      
      public function set list(param1:List) : void
      {
         var _loc2_:Object = this._3322014list;
         if(_loc2_ !== param1)
         {
            this._3322014list = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"list",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchGroup() : HGroup
      {
         return this._561452617searchGroup;
      }
      
      public function set searchGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._561452617searchGroup;
         if(_loc2_ !== param1)
         {
            this._561452617searchGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchText() : SF_LocaLabel
      {
         return this._710472971searchText;
      }
      
      public function set searchText(param1:SF_LocaLabel) : void
      {
         var _loc2_:Object = this._710472971searchText;
         if(_loc2_ !== param1)
         {
            this._710472971searchText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get targetsButton() : Group
      {
         return this._1624148692targetsButton;
      }
      
      public function set targetsButton(param1:Group) : void
      {
         var _loc2_:Object = this._1624148692targetsButton;
         if(_loc2_ !== param1)
         {
            this._1624148692targetsButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetsButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txSearchInput() : SeafightTextInput
      {
         return this._256808482txSearchInput;
      }
      
      public function set txSearchInput(param1:SeafightTextInput) : void
      {
         var _loc2_:Object = this._256808482txSearchInput;
         if(_loc2_ !== param1)
         {
            this._256808482txSearchInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txSearchInput",_loc2_,param1));
            }
         }
      }
   }
}
