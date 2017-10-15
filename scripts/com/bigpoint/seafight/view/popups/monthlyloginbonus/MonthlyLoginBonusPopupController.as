package com.bigpoint.seafight.view.popups.monthlyloginbonus
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.bytearray.display.ScaleBitmap;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.event.modules.EventModule;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuOverviewTab;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandMenuOverviewTabController;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.class_205;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.events.LoaderEvent;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.PerspectiveProjection;
   import flash.geom.Point;
   import flash.net.URLLoader;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IUIComponent;
   import mx.core.IVisualElement;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_737;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_111.class_696;
   import package_111.class_741;
   import package_111.class_745;
   import package_14.class_102;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_15.class_48;
   import package_152.class_801;
   import package_163.class_843;
   import package_163.class_884;
   import package_170.class_979;
   import package_214.class_1556;
   import package_23.class_42;
   import package_26.class_1354;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_48.class_996;
   import package_5.class_123;
   import package_5.class_22;
   import package_51.class_1355;
   import package_51.class_148;
   import package_54.class_1089;
   import package_54.class_162;
   import package_69.class_978;
   import package_71.class_201;
   import package_77.class_246;
   import package_89.class_1138;
   import package_89.class_1378;
   import package_9.class_76;
   import package_9.class_91;
   import package_92.class_944;
   import package_92.class_962;
   import package_97.class_752;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.core.SpriteVisualElement;
   import spark.events.IndexChangeEvent;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class MonthlyLoginBonusPopupController extends WindowController implements IWindowController
   {
       
      
      private var _query:class_246;
      
      private var _component:MonthlyLoginBonusPopup;
      
      private var _content:class_843;
      
      private var _previousContent:class_843;
      
      private var _isFirstAnimation:Boolean = true;
      
      private var _hasJustCollectedDayBonus:Boolean = false;
      
      private var _hasJustCollectedMilestone:Boolean = false;
      
      private var _collectDayAnimationRunning:Boolean;
      
      private var collectableMilestoneGlow:BitmapClip;
      
      private var collectMilestoneExplosion:BitmapClip;
      
      public function MonthlyLoginBonusPopupController(param1:String, param2:Object)
      {
         super(param1,param2);
         this._component = this.component as MonthlyLoginBonusPopup;
         this.component.btnClaim.enabled = false;
      }
      
      override public function shutdown() : void
      {
         super.shutdown();
         this._component = null;
         this._query.method_36();
         this._query = null;
      }
      
      override protected function onWindowCreationComplete(param1:FlexEvent) : void
      {
         super.onWindowCreationComplete(param1);
         this.window.addEventListener(class_979.const_5,this.onHelpButtonClick);
         this.window.refreshButton.includeInLayout = false;
         this.window.refreshButton.visible = false;
         this.window.infoButton.visible = false;
         this.component.subHeader.headerText.text = class_96.method_20(class_96.const_66,"menuheadertip");
         this.component.btnClaim.label = class_96.method_20(class_96.const_66,"btnclaim");
         this.component.month_title.text = class_96.method_20(class_96.const_66,"listtitle").replace(class_22.const_6,class_125.method_2256());
         this.component.milestone_title.text = class_96.method_20(class_96.const_66,"milestonetitle");
         this.component.txtEvent.text = class_96.method_20(class_96.const_66,"no_items");
         this.component.txtEvent.visible = false;
         delay(1000,this.showEventText);
         this.collectableMilestoneGlow = this.getEffect(this.component.collectableEffect,"milestone_reward_glow");
         this.collectMilestoneExplosion = this.getEffect(this.component.collectEffect,"milestone_reward_collect");
         this.component.btnClaim.addEventListener(MouseEvent.CLICK,this.onClaimButtonClick);
         this.component.btnClaim.enabled = false;
         this._query = class_48.name_3.method_2391;
         this._query.addEventListener(Event.CHANGE,this.updateContentData);
         this.updateContentData();
      }
      
      private final function showEventText() : void
      {
         this.component.txtEvent.visible = !this.checkEventRunning();
      }
      
      private final function updateContentData(param1:Event = null) : void
      {
         var _loc2_:class_843 = this._query.method_358();
         if(_loc2_)
         {
            this._previousContent = this._content;
            this._content = _loc2_;
            this.updateDayBonus();
            this.updateMilestones(false);
         }
      }
      
      private final function checkDayBonusContentDifference(param1:class_843, param2:class_843) : Boolean
      {
         if(!param1 || !param2)
         {
            return true;
         }
         return param1.var_332.length != param2.var_332.length;
      }
      
      private final function checkMilestoneContentDifference(param1:class_843, param2:class_843) : Boolean
      {
         if(!param1 || !param2)
         {
            return true;
         }
         return param1.var_343 != param2.var_343;
      }
      
      private final function checkEventRunning() : Boolean
      {
         return this._content && this._content.var_206.length + this._content.var_332.length > 0;
      }
      
      private final function updateDayBonus() : void
      {
         var _loc1_:ArrayList = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:MonthlyLoginBonusItemVO = null;
         var _loc5_:class_884 = null;
         if(this.checkDayBonusContentDifference(this._previousContent,this._content))
         {
            if(!this._collectDayAnimationRunning)
            {
               if(this.checkEventRunning())
               {
                  this.component.txtEvent.visible = false;
                  this.component.btnClaim.enabled = !this._content.var_1108;
                  this._component.bonusList.dataProvider = new ArrayList();
                  _loc1_ = this._component.bonusList.dataProvider as ArrayList;
                  _loc2_ = this._content.var_332.length + this._content.var_206.length;
                  _loc3_ = 0;
                  while(_loc3_ < _loc2_)
                  {
                     _loc4_ = new MonthlyLoginBonusItemVO().WithClaimed(_loc3_ < this._content.var_332.length);
                     if(_loc4_.isClaimed)
                     {
                        _loc4_.WithoutChest(this._content.var_332[_loc3_]);
                     }
                     else
                     {
                        _loc5_ = this._content.var_206[_loc3_ - this._content.var_332.length];
                        _loc4_ = _loc5_.var_206.length == 1?_loc4_.WithoutChest(_loc5_.var_206[0]):_loc4_.WithChest(_loc5_.var_206);
                     }
                     _loc4_.entryTime = !!this._isFirstAnimation?int(Math.ceil((_loc3_ + 1) / 7) * 100 + 25 + _loc3_ * 25):0;
                     _loc4_.animateCollectable = !this._content.var_1108 && _loc3_ == this._content.var_332.length;
                     _loc4_.animateCollect = this._hasJustCollectedDayBonus && _loc3_ == this._content.var_332.length - 1;
                     if(_loc4_.animateCollect)
                     {
                        this._collectDayAnimationRunning = true;
                        _loc4_.WithClaimed(true);
                        delay(MonthlyLoginBonusItem.COLLECT_DAY_ANIMATION_TIME,this.onCollectDayAnimationComplete);
                     }
                     _loc1_.addItem(_loc4_);
                     _loc3_++;
                  }
                  this._isFirstAnimation = false;
                  if(_loc1_.length)
                  {
                     this._component.bonusList.dataProvider = _loc1_;
                  }
                  this._hasJustCollectedDayBonus = false;
               }
            }
         }
      }
      
      private final function updateMilestones(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:ArrayList = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:MonthlyLoginBonusItemVO = null;
         if(this.checkMilestoneContentDifference(this._previousContent,this._content) || param1)
         {
            if(this._hasJustCollectedMilestone && this._previousContent.var_404 >= this._previousContent.var_343)
            {
               this.component.milestoneBar.setAmount(this._previousContent.var_692,this._previousContent.var_404,this._previousContent.var_343);
               this.playAnimation(this.collectMilestoneExplosion);
               this.component.milestoneBar.executeAnimation(this.updateMilestones);
               this.component.btnClaim.enabled = false;
               this.collectableMilestoneGlow.gotoAndStop(0);
               this._hasJustCollectedMilestone = false;
            }
            else
            {
               _loc2_ = this._content.var_404 >= this._content.var_343;
               this.component.txtMilestone.text = class_96.method_20(class_96.const_66,"milestones",true).replace(class_22.const_6,Math.max(0,this._content.var_343 - this._content.var_404));
               this.component.milestoneBar.setAmount(this._content.var_692,this._content.var_404,this._content.var_343);
               if(_loc2_)
               {
                  this.playAnimation(this.collectableMilestoneGlow);
               }
               this.component.btnClaim.enabled = this.component.btnClaim.enabled || _loc2_;
               this._component.milestoneList.dataProvider = new ArrayList();
               _loc3_ = this._component.milestoneList.dataProvider as ArrayList;
               _loc4_ = this._content.var_718.length;
               _loc5_ = 0;
               while(_loc5_ < _loc4_)
               {
                  _loc6_ = new MonthlyLoginBonusItemVO().WithoutChest(this._content.var_718[_loc5_]);
                  _loc6_.entryTime = 0;
                  _loc6_.greyOut = !_loc2_;
                  _loc3_.addItem(_loc6_);
                  _loc5_++;
               }
               this._component.milestoneList.dataProvider = _loc3_;
            }
         }
      }
      
      private final function playAnimation(param1:BitmapClip, param2:Boolean = false) : void
      {
         param1.gotoAndStop(0);
         param1.removeAfterPlay = param2;
         param1.playOnce();
      }
      
      private final function getEffect(param1:SpriteVisualElement, param2:String) : BitmapClip
      {
         param1.removeChildren();
         var _loc3_:SWFFinisher = getSWFFinisher(class_123.const_106);
         var _loc4_:MovieClip = _loc3_.getEmbeddedMovieClip(param2);
         var _loc5_:BitmapClip = new BitmapClip(_loc4_,_loc4_.name);
         param1.addChild(_loc5_);
         return _loc5_;
      }
      
      private final function onCollectDayAnimationComplete() : void
      {
         this._collectDayAnimationRunning = false;
      }
      
      private final function onClaimButtonClick(param1:MouseEvent) : void
      {
         this._hasJustCollectedDayBonus = !this._content.var_1108;
         this._hasJustCollectedMilestone = this._content.var_404 >= this._content.var_343;
         this._query.method_2551();
      }
      
      private final function onHelpButtonClick(param1:class_979 = null) : void
      {
         MultiPopUpManager.addSimpleOK_Popup(class_96.method_20(class_96.const_66,"helptip"));
      }
      
      public function get component() : MonthlyLoginBonusPopup
      {
         return super.viewComponent as MonthlyLoginBonusPopup;
      }
      
      public function get window() : ResizeableExtendedWindow
      {
         return this.component.owner as ResizeableExtendedWindow;
      }
      
      public function get windowSkin() : BasicResizableWindowSkin
      {
         return this.window.skin as BasicResizableWindowSkin;
      }
      
      private final function onLoadHeaderError(param1:IOErrorEvent) : void
      {
      }
      
      public function set data(param1:ContentVo) : void
      {
      }
      
      public final function setTitleData(param1:String) : void
      {
         this.windowSkin.titleString = param1;
      }
   }
}
