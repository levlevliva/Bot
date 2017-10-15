package com.bigpoint.seafight.view.userInterface.widgets.menus.popups
{
   import com.adobe.serialization.json.JSONToken;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.table.ListSkinForOnePixelLines;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MiniGameVersion;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.GuildImageDisplaySelection;
   import com.bigpoint.seafight.view.popups.teamscore.AbstractArenaPopupController;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ActionButton;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuComponent;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemLevelItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import com.greensock.TweenLite;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BevelFilter;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   import net.bigpoint.seafight.com.module.ship.class_396;
   import net.bigpoint.seafight.com.module.ship.class_531;
   import org.osflash.signals.ISlot;
   import org.osflash.signals.SlotList;
   import package_101.class_564;
   import package_103.class_361;
   import package_103.class_437;
   import package_103.class_518;
   import package_103.class_525;
   import package_118.class_725;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_87;
   import package_16.class_28;
   import package_17.class_325;
   import package_170.class_979;
   import package_184.class_1135;
   import package_185.class_1136;
   import package_23.class_42;
   import package_26.class_1088;
   import package_26.class_1102;
   import package_28.class_56;
   import package_30.class_62;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_46.class_1224;
   import package_46.class_1356;
   import package_47.class_624;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_22;
   import package_5.class_43;
   import package_5.class_984;
   import package_6.class_14;
   import package_7.class_1039;
   import package_7.class_1538;
   import package_7.class_74;
   import package_76.class_243;
   import package_9.class_404;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.effects.animation.Animation;
   import spark.filters.GlowFilter;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public class SimplePopup extends MenuComponent
   {
       
      
      private var _1127845376buttonsContainer:HGroup;
      
      private var _954925063message:Text;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      protected var buttons:Vector.<UIComponent>;
      
      protected var data:class_332;
      
      mx_internal var _SimplePopup_StylesInit_done:Boolean = false;
      
      public function SimplePopup()
      {
         super();
         mx_internal::_document = this;
         this.width = 310;
         this.height = 155;
         this._SimplePopup_HGroup1_i();
         this._SimplePopup_Text1_i();
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         mx_internal::_SimplePopup_StylesInit();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override protected function initializationComplete() : void
      {
         super.initializationComplete();
         setCloseButtonVisible(false);
         this.message.setColor(Text.GOLD);
         this.buttonsContainer.addEventListener(FlexEvent.UPDATE_COMPLETE,this.contentUpdated);
         addElement(this.message);
         addElement(this.buttonsContainer);
      }
      
      public function create(param1:class_332) : void
      {
         if(null == param1)
         {
            LOG.error("no popup data");
            return;
         }
         this.data = param1;
         this.width = this.data.var_36;
         this.height = this.data.var_31;
         this.buttons = new Vector.<UIComponent>();
         this.setTitle();
         this.setMessage();
         var _loc2_:int = this.data.var_171.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.buttons.push(this.createButton(_loc3_));
            _loc3_++;
         }
      }
      
      protected final function setTitle() : void
      {
         var _loc1_:String = null;
         var _loc3_:BitmapImage = null;
         if(this.data.var_493)
         {
            this.title = class_47.method_22.method_20(this.data.var_493);
            return;
         }
         switch(this.data.name_5)
         {
            case class_332.const_842:
               this.data.var_493 = "txerror";
               _loc1_ = "iconerror";
               break;
            case class_332.const_1250:
               this.data.var_493 = "notice";
               _loc1_ = "iconinfo";
               break;
            case class_332.const_552:
            default:
               this.data.var_493 = "txtinfo";
               _loc1_ = "iconinfo";
         }
         if(_loc1_)
         {
            _loc3_ = new BitmapImage();
            _loc3_.x = 5;
            _loc3_.y = 2;
            _loc3_.source = getSWFFinisher(class_123.const_21).getEmbeddedBitmapData(_loc1_);
            _loc3_.width = 14;
            _loc3_.height = 14;
            addIconToTitle(_loc3_);
         }
         this.title = class_47.method_22.method_20(this.data.var_493);
      }
      
      protected final function setMessage() : void
      {
         var _loc4_:String = null;
         var _loc1_:int = this.data.var_1479.length;
         var _loc2_:class_87 = class_47.method_22;
         this.message.text = "";
         this.message.width = this.width - 40;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_)
         {
            _loc4_ = this.data.var_1479[_loc3_];
            this.message.text = this.message.text + ((!!this.data.var_2290?_loc2_.method_20(_loc4_):_loc4_) + class_22.const_10);
            _loc3_++;
         }
      }
      
      protected function createButton(param1:int) : UIComponent
      {
         var _loc2_:ActionButton = new ActionButton();
         var _loc4_:int = this.data.var_171[param1];
         _loc2_.text = class_47.method_22.method_20(PopupResponseType.getTextId(_loc4_));
         _loc2_.width = 100;
         this.buttonsContainer.addElement(_loc2_);
         _loc2_.updateButtonState();
         _loc2_.name = _loc4_.toString();
         _loc2_.addEventListener(MouseEvent.CLICK,this.onClickResponse);
         return _loc2_;
      }
      
      protected final function contentUpdated(param1:Event) : void
      {
         this.message.x = (this.width - this.message.width) * 0.5;
         this.buttonsContainer.x = (this.width - this.buttonsContainer.width) * 0.5;
         this.buttonsContainer.y = this.height - 50;
      }
      
      protected function onClickResponse(param1:MouseEvent) : void
      {
         var _loc2_:int = parseInt((param1.target as UIComponent).name);
         dispatchEvent(new class_1102(class_1102.const_299,_loc2_,this.data.name_56));
         this.closeMenu();
      }
      
      override public function closeMenu(param1:CloseEvent = null) : void
      {
         var _loc4_:UIComponent = null;
         var _loc2_:int = this.buttons.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.buttons[_loc3_];
            _loc4_.removeEventListener(MouseEvent.CLICK,this.onClickResponse);
            _loc3_++;
         }
         this.buttonsContainer.removeEventListener(FlexEvent.UPDATE_COMPLETE,this.contentUpdated);
         super.closeMenu(param1);
      }
      
      private final function _SimplePopup_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.id = "buttonsContainer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.buttonsContainer = _loc1_;
         BindingManager.executeBindings(this,"buttonsContainer",this.buttonsContainer);
         return _loc1_;
      }
      
      private final function _SimplePopup_Text1_i() : Text
      {
         var _loc1_:Text = new Text();
         _loc1_.y = 20;
         _loc1_.setStyle("fontSize",10);
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "message";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.message = _loc1_;
         BindingManager.executeBindings(this,"message",this.message);
         return _loc1_;
      }
      
      mx_internal final function _SimplePopup_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         if(mx_internal::_SimplePopup_StylesInit_done)
         {
            return;
         }
         mx_internal::_SimplePopup_StylesInit_done = true;
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","modalStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".modalStyle");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.modalTransparencyColor = "0x000000";
               this.modalTransparencyBlur = "0";
            };
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonsContainer() : HGroup
      {
         return this._1127845376buttonsContainer;
      }
      
      public function set buttonsContainer(param1:HGroup) : void
      {
         var _loc2_:Object = this._1127845376buttonsContainer;
         if(_loc2_ !== param1)
         {
            this._1127845376buttonsContainer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonsContainer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get message() : Text
      {
         return this._954925063message;
      }
      
      public function set message(param1:Text) : void
      {
         var _loc2_:Object = this._954925063message;
         if(_loc2_ !== param1)
         {
            this._954925063message = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"message",_loc2_,param1));
            }
         }
      }
   }
}
