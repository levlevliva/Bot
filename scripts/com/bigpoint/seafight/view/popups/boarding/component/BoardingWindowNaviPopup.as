package com.bigpoint.seafight.view.popups.boarding.component
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1525;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.MateysWindow;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.vo.GroupMapPlayerListItemRendererVo;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.MateysWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.mateysmenu.controllers.MateysWindowNaviController;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.MateysWindowNaviPopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.TweenLite;
   import flash.display.Sprite;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import mx.events.ToolTipEvent;
   import net.bigpoint.seafight.com.module.guild.class_476;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import package_101.class_1549;
   import package_14.class_1002;
   import package_14.class_47;
   import package_17.class_54;
   import package_178.class_1060;
   import package_20.class_33;
   import package_212.class_1537;
   import package_26.class_1102;
   import package_26.class_1523;
   import package_44.class_108;
   import package_45.class_110;
   import package_46.class_1224;
   import package_5.class_123;
   import package_51.class_974;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   
   public final class BoardingWindowNaviPopup extends Group
   {
       
      
      private var _951530617content:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function BoardingWindowNaviPopup()
      {
         super();
         mx_internal::_document = this;
         this.left = 4;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mxmlContent = [this._BoardingWindowNaviPopup_VGroup1_c()];
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
      
      private final function _BoardingWindowNaviPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.paddingBottom = 5;
         _loc1_.paddingRight = 4;
         _loc1_.mxmlContent = [this._BoardingWindowNaviPopup_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _BoardingWindowNaviPopup_Group2_i() : Group
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
