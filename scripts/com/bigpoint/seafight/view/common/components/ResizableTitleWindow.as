package com.bigpoint.seafight.view.common.components
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.common.skins.windowbuttonbar.WindowButtonBarSkinInnerClass2;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.event.modules.eventstatistics.StatisticItemFactory;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameHelperItemRendererVo;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.controller.GemPopupCraftingTabController;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.UIComponent;
   import mx.events.CloseEvent;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.events.SandboxMouseEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_111.class_741;
   import package_111.class_774;
   import package_131.class_573;
   import package_14.class_47;
   import package_166.class_965;
   import package_170.class_979;
   import package_171.class_1275;
   import package_19.class_32;
   import package_26.class_52;
   import package_34.class_1526;
   import package_41.class_84;
   import package_41.class_93;
   import package_42.class_98;
   import package_46.class_1224;
   import package_47.class_930;
   import package_49.class_880;
   import package_5.class_123;
   import package_6.class_14;
   import package_72.class_203;
   import package_92.class_336;
   import package_92.class_944;
   import package_95.class_341;
   import package_97.class_986;
   import package_99.class_493;
   import package_99.class_786;
   import package_99.class_911;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.TitleWindow;
   import spark.components.gridClasses.GridLayer;
   import spark.effects.animation.Animation;
   import spark.effects.animation.SimpleMotionPath;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.BitmapImage;
   
   public class ResizableTitleWindow extends TitleWindow
   {
       
      
      private var _locked:Boolean = false;
      
      private var _lockedCoords:Point;
      
      private var _closeOnMapSwitch:Boolean = true;
      
      private var clickOffset:Point;
      
      [SkinPart(required="false")]
      public var resizeHandle:UIComponent;
      
      [SkinPart(required="false")]
      public var disabledLayer:UIComponent;
      
      private var prevWidth:Number;
      
      private var prevHeight:Number;
      
      public function ResizableTitleWindow()
      {
         super();
         this.minWidth = 150;
         this.minHeight = 150;
         this._lockedCoords = new Point();
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.resizeHandle)
         {
            this.resizeHandle.addEventListener(MouseEvent.MOUSE_DOWN,this.resizeHandle_mouseDownHandler);
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         if(param2 == this.resizeHandle)
         {
            this.resizeHandle.removeEventListener(MouseEvent.MOUSE_DOWN,this.resizeHandle_mouseDownHandler);
         }
         super.partRemoved(param1,param2);
      }
      
      override public function move(param1:Number, param2:Number) : void
      {
         if(this.locked)
         {
            param1 = this._lockedCoords.x;
            param2 = this._lockedCoords.y;
         }
         var _loc3_:Number = stage.stageWidth - this.width;
         var _loc4_:Number = stage.stageHeight - this.height;
         param1 = Math.max(0,Math.min(_loc3_,param1));
         param2 = Math.max(0,Math.min(_loc4_,param2));
         super.move(param1,param2);
      }
      
      public function set activateBlock(param1:Boolean) : void
      {
         if(this.disabledLayer)
         {
            this.disabledLayer.visible = param1;
            this.disabledLayer.enabled = param1;
         }
      }
      
      protected final function resizeHandle_mouseDownHandler(param1:MouseEvent) : void
      {
         var _loc2_:DisplayObject = null;
         if(enabled && isPopUp && !this.clickOffset)
         {
            this.clickOffset = new Point(param1.stageX,param1.stageY);
            this.prevWidth = width;
            this.prevHeight = height;
            _loc2_ = systemManager.getSandboxRoot();
            _loc2_.addEventListener(MouseEvent.MOUSE_MOVE,this.resizeHandle_mouseMoveHandler,true);
            _loc2_.addEventListener(MouseEvent.MOUSE_UP,this.resizeHandle_mouseUpHandler,true);
            _loc2_.addEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,this.resizeHandle_mouseUpHandler);
         }
      }
      
      protected final function resizeHandle_mouseMoveHandler(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         if(!this.clickOffset)
         {
            return;
         }
         var _loc2_:int = this.prevWidth + (param1.stageX - this.clickOffset.x);
         var _loc3_:int = this.prevHeight + (param1.stageY - this.clickOffset.y);
         if(minWidth && _loc2_ >= minWidth)
         {
            width = this.prevWidth + (param1.stageX - this.clickOffset.x);
         }
         if(minHeight && _loc3_ >= minHeight)
         {
            height = this.prevHeight + (param1.stageY - this.clickOffset.y);
         }
         param1.updateAfterEvent();
      }
      
      protected final function resizeHandle_mouseUpHandler(param1:Event) : void
      {
         this.clickOffset = null;
         this.prevWidth = NaN;
         this.prevHeight = NaN;
         var _loc2_:DisplayObject = systemManager.getSandboxRoot();
         _loc2_.removeEventListener(MouseEvent.MOUSE_MOVE,this.resizeHandle_mouseMoveHandler,true);
         _loc2_.removeEventListener(MouseEvent.MOUSE_UP,this.resizeHandle_mouseUpHandler,true);
         _loc2_.removeEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,this.resizeHandle_mouseUpHandler);
         this.dispatchEvent(new Event("windowResizeEnd"));
      }
      
      public final function setTitle(param1:String) : void
      {
         super.title = param1;
      }
      
      override public function set title(param1:String) : void
      {
         super.title = !!param1?param1.toLocaleUpperCase():param1;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this._locked = param1;
         this._lockedCoords.x = this.x;
         this._lockedCoords.y = this.y;
      }
      
      public function get locked() : Boolean
      {
         return this._locked;
      }
      
      public function get lockable() : Boolean
      {
         return false;
      }
      
      public function get closeOnMapSwitch() : Boolean
      {
         return this._closeOnMapSwitch;
      }
      
      public function set closeOnMapSwitch(param1:Boolean) : void
      {
         this._closeOnMapSwitch = param1;
      }
      
      public final function closeMenu(param1:CloseEvent = null) : void
      {
         class_203.name_21(SoundEffectType.MENU_CLOSE);
         if(!param1)
         {
            dispatchEvent(new CloseEvent(CloseEvent.CLOSE));
         }
      }
   }
}
