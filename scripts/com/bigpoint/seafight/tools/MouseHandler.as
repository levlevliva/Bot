package com.bigpoint.seafight.tools
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.net.events.class_1444;
   import com.bigpoint.seafight.net.events.class_1446;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.EventPopupController;
   import com.bigpoint.seafight.view.popups.event.component.EventPopup;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.event.modules.common.clash.ClashRankingList;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildOverviewLogListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.OverwriteManager;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Strong;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.class_394;
   import net.bigpoint.seafight.com.module.guild.class_510;
   import net.bigpoint.seafight.com.module.guild.class_513;
   import net.bigpoint.seafight.com.module.guild.class_799;
   import net.bigpoint.seafight.com.module.guild.class_817;
   import net.bigpoint.seafight.com.module.guild.class_838;
   import net.bigpoint.seafight.com.module.ship.class_700;
   import net.bigpoint.seafight.com.module.ship.class_874;
   import package_108.class_647;
   import package_111.class_741;
   import package_111.class_774;
   import package_14.class_47;
   import package_14.class_88;
   import package_175.class_1547;
   import package_20.class_33;
   import package_30.class_337;
   import package_34.class_1526;
   import package_34.class_73;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_45.class_110;
   import package_46.class_975;
   import package_48.class_1478;
   import package_51.class_974;
   import package_72.class_1071;
   import package_97.class_409;
   import package_99.class_786;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.gridClasses.GridLayer;
   import spark.effects.animation.SimpleMotionPath;
   import spark.events.IndexChangeEvent;
   
   public final class MouseHandler extends EventDispatcher
   {
      
      private static var _stage:Stage;
      
      private static var _onStage:Boolean;
      
      private static var _mouseDown:Boolean;
      
      private static var _downTarget:DisplayObject;
       
      
      public function MouseHandler()
      {
         super();
      }
      
      public static function init(param1:Stage) : void
      {
         var stage:Stage = param1;
         if(_stage != null)
         {
            return;
         }
         _stage = stage;
         _mouseDown = false;
         _onStage = false;
         _stage.addEventListener(MouseEvent.MOUSE_DOWN,function(param1:MouseEvent):void
         {
            var event:MouseEvent = param1;
            _downTarget = event.target as DisplayObject;
            _stage.addEventListener(MouseEvent.MOUSE_UP,function(param1:MouseEvent):void
            {
               _stage.removeEventListener(MouseEvent.MOUSE_UP,arguments.callee);
               _mouseDown = false;
               _downTarget = null;
            });
            _mouseDown = true;
         });
         _stage.addEventListener(MouseEvent.MOUSE_MOVE,function(param1:MouseEvent):void
         {
            if(param1.stageX < 0 || param1.stageX > stage.stageWidth || param1.stageY < 0 || param1.stageY > stage.stageHeight)
            {
               _stage.dispatchEvent(new Event(Event.MOUSE_LEAVE));
            }
            else
            {
               _onStage = true;
            }
         });
         _stage.addEventListener(Event.MOUSE_LEAVE,function(param1:Event):void
         {
            _onStage = false;
         });
         _stage.addEventListener(Event.DEACTIVATE,function(param1:Event):void
         {
         });
      }
      
      public static function isDown() : Boolean
      {
         return _mouseDown;
      }
      
      public static function onStage() : Boolean
      {
         return _onStage;
      }
      
      public static function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         _stage.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         _stage.removeEventListener(param1,param2,param3);
      }
      
      public static function hasEventListener(param1:String) : Boolean
      {
         return _stage.hasEventListener(param1);
      }
      
      public static function dispatchEvent(param1:Event) : void
      {
         _stage.dispatchEvent(param1);
      }
      
      public static function willTrigger(param1:String) : Boolean
      {
         return _stage.willTrigger(param1);
      }
      
      public static function get downTarget() : DisplayObject
      {
         return _downTarget;
      }
      
      public static function get stage() : Stage
      {
         return _stage;
      }
      
      public static function get mouseX() : int
      {
         return _stage.mouseX;
      }
      
      public static function get mouseY() : int
      {
         return _stage.mouseY;
      }
   }
}
