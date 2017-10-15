package com.bigpoint.seafight.view.userInterface.widgets.menus.components
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.tooltip.TooltipBackground;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentSailsVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.GemOverviewListSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.timer.TimerItem;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.text.StyleSheet;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexModuleFactory;
   import mx.core.IToolTip;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_670;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import package_111.class_1176;
   import package_119.class_1511;
   import package_130.class_711;
   import package_14.class_47;
   import package_14.class_96;
   import package_166.class_961;
   import package_170.class_979;
   import package_185.class_1136;
   import package_34.class_73;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_89;
   import package_45.class_110;
   import package_5.class_123;
   import package_5.class_43;
   import package_5.class_945;
   import package_69.class_1615;
   import package_69.class_978;
   import package_92.class_336;
   import package_97.class_409;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   import spark.components.gridClasses.GridLayer;
   
   public final class MenuToolTip extends Group implements IToolTip
   {
       
      
      private var _951530617content:VGroup;
      
      private var _3496420rect:TooltipBackground;
      
      private var _2900769txTooltip:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function MenuToolTip()
      {
         super();
         mx_internal::_document = this;
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.mxmlContent = [this._MenuToolTip_TooltipBackground1_i(),this._MenuToolTip_VGroup1_i()];
      }
      
      public static function empty() : MenuToolTip
      {
         var _loc1_:MenuToolTip = new MenuToolTip();
         _loc1_.removeAllElements();
         return _loc1_;
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
      
      public function get text() : String
      {
         return this.txTooltip.text;
      }
      
      public function set text(param1:String) : void
      {
         this.txTooltip.text = param1;
      }
      
      public final function setContentVisible(param1:Boolean) : void
      {
         this.rect.visible = param1;
         this.content.visible = param1;
      }
      
      private final function _MenuToolTip_TooltipBackground1_i() : TooltipBackground
      {
         var _loc1_:TooltipBackground = new TooltipBackground();
         _loc1_.initialized(this,"rect");
         this.rect = _loc1_;
         BindingManager.executeBindings(this,"rect",this.rect);
         return _loc1_;
      }
      
      private final function _MenuToolTip_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.paddingLeft = 15;
         _loc1_.paddingRight = 15;
         _loc1_.paddingTop = 15;
         _loc1_.paddingBottom = 15;
         _loc1_.mxmlContent = [this._MenuToolTip_Label1_i()];
         _loc1_.id = "content";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.content = _loc1_;
         BindingManager.executeBindings(this,"content",this.content);
         return _loc1_;
      }
      
      private final function _MenuToolTip_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.styleName = "fontwhite12";
         _loc1_.maxWidth = 500;
         _loc1_.id = "txTooltip";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.txTooltip = _loc1_;
         BindingManager.executeBindings(this,"txTooltip",this.txTooltip);
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
      public function get rect() : TooltipBackground
      {
         return this._3496420rect;
      }
      
      public function set rect(param1:TooltipBackground) : void
      {
         var _loc2_:Object = this._3496420rect;
         if(_loc2_ !== param1)
         {
            this._3496420rect = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rect",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txTooltip() : Label
      {
         return this._2900769txTooltip;
      }
      
      public function set txTooltip(param1:Label) : void
      {
         var _loc2_:Object = this._2900769txTooltip;
         if(_loc2_ !== param1)
         {
            this._2900769txTooltip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txTooltip",_loc2_,param1));
            }
         }
      }
   }
}
