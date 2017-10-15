package com.bit101.components
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.nonpersistent.GroupQueueModel;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.TeamScoreWindow;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuHeader;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.vo.CraftingMaterialItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.component.RolesList;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.colorspopup.OpenGuildColorsPopupCommand;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildSearchListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildSearchListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.shipequipment.component.SimpleStatisticItem;
   import com.bigpoint.seafight.view.popups.teamscore.AbstractArenaPopupController;
   import com.bigpoint.seafight.view.popups.teamscore.TeamScorePopupController;
   import com.bigpoint.seafight.view.popups.teamscore.component.TeamScorePopup;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScorePopupVo;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import com.greensock.TweenMax;
   import flash.display.Bitmap;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.DropShadowFilter;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_109.class_626;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_96;
   import package_17.class_54;
   import package_30.class_62;
   import package_32.class_64;
   import package_34.class_1499;
   import package_40.class_83;
   import package_41.class_84;
   import package_45.class_110;
   import package_46.class_1493;
   import package_5.class_123;
   import package_5.class_22;
   import package_51.class_148;
   import package_51.class_974;
   import package_52.class_167;
   import package_54.class_163;
   import package_54.class_319;
   import package_69.class_978;
   import package_72.class_203;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   
   public class Component extends Sprite
   {
      
      private static const logger:ILogger = Log.getLogger("Component");
      
      public static const DRAW:String = "draw";
       
      
      protected var _width:Number = 0;
      
      protected var _height:Number = 0;
      
      protected var _tag:int = -1;
      
      protected var _enabled:Boolean = true;
      
      public function Component(param1:DisplayObjectContainer = null, param2:Number = 0, param3:Number = 0)
      {
         super();
         this.move(param2,param3);
         if(param1 != null)
         {
            param1.addChild(this);
         }
         this.init();
      }
      
      public static function initStage(param1:Stage) : void
      {
         param1.align = StageAlign.TOP_LEFT;
         param1.scaleMode = StageScaleMode.NO_SCALE;
      }
      
      protected function init() : void
      {
         this.addChildren();
         this.invalidate();
      }
      
      protected function addChildren() : void
      {
      }
      
      protected final function getShadow(param1:Number, param2:Boolean = false) : DropShadowFilter
      {
         return new DropShadowFilter(param1,45,Style.DROPSHADOW,1,param1,param1,0.3,1,param2);
      }
      
      protected final function invalidate() : void
      {
         addEventListener(Event.ENTER_FRAME,this.onInvalidate);
      }
      
      public final function move(param1:Number, param2:Number) : void
      {
         this.x = Math.round(param1);
         this.y = Math.round(param2);
      }
      
      public final function setSize(param1:Number, param2:Number) : void
      {
         this._width = param1;
         this._height = param2;
         this.invalidate();
      }
      
      public function draw() : void
      {
         dispatchEvent(new Event(Component.DRAW));
      }
      
      protected final function onInvalidate(param1:Event) : void
      {
         removeEventListener(Event.ENTER_FRAME,this.onInvalidate);
         this.draw();
      }
      
      override public function set width(param1:Number) : void
      {
         this._width = param1;
         this.invalidate();
         dispatchEvent(new Event(Event.RESIZE));
      }
      
      override public function get width() : Number
      {
         return this._width;
      }
      
      override public function set height(param1:Number) : void
      {
         this._height = param1;
         this.invalidate();
         dispatchEvent(new Event(Event.RESIZE));
      }
      
      override public function get height() : Number
      {
         return this._height;
      }
      
      public function set tag(param1:int) : void
      {
         this._tag = param1;
      }
      
      public function get tag() : int
      {
         return this._tag;
      }
      
      override public function set x(param1:Number) : void
      {
         super.x = Math.round(param1);
      }
      
      override public function set y(param1:Number) : void
      {
         super.y = Math.round(param1);
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this._enabled = param1;
         mouseEnabled = mouseChildren = this._enabled;
         tabEnabled = param1;
         alpha = !!this._enabled?Number(1):Number(0.5);
      }
      
      public function get enabled() : Boolean
      {
         return this._enabled;
      }
   }
}
