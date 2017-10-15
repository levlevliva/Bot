package com.bit101.components
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.BoardingInfoTooltipListItem;
   import com.bigpoint.seafight.view.popups.common.CurrencyItemRenderer;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.HireHelperMinigameModuleController;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.common.GuildImageDisplaySelection;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import com.bigpoint.seafight.view.popups.reputation.ReputationData;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamMembersScoreVo;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScorePopupVo;
   import com.greensock.TweenLite;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.filters.DropShadowFilter;
   import flash.geom.Point;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColor;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_127.class_528;
   import package_127.class_870;
   import package_14.class_88;
   import package_210.class_1527;
   import package_48.class_138;
   import package_5.class_123;
   import package_92.class_1278;
   import package_99.class_786;
   import spark.components.VGroup;
   
   public class Panel extends Component
   {
       
      
      protected var _mask:Sprite;
      
      protected var _background:Sprite;
      
      protected var _color:int = -1;
      
      protected var _shadow:Boolean = true;
      
      protected var _gridSize:int = 10;
      
      protected var _showGrid:Boolean = false;
      
      protected var _gridColor:uint = 13684944;
      
      protected var _bgAlpha:Number = 0;
      
      public var content:Sprite;
      
      public function Panel(param1:DisplayObjectContainer = null, param2:Number = 0, param3:Number = 0)
      {
         super(param1,param2,param3);
      }
      
      override protected function init() : void
      {
         super.init();
         setSize(100,100);
      }
      
      override protected function addChildren() : void
      {
         this._background = new Sprite();
         addChild(this._background);
         this._mask = new Sprite();
         this._mask.mouseEnabled = false;
         addChild(this._mask);
         this.content = new Sprite();
         addChild(this.content);
         this.content.mask = this._mask;
         filters = [getShadow(2,true)];
      }
      
      override public function draw() : void
      {
         super.draw();
         this._background.graphics.clear();
         this._background.graphics.lineStyle(1,0,0.1);
         if(this._color == -1)
         {
            this._background.graphics.beginFill(Style.PANEL,this._bgAlpha);
         }
         else
         {
            this._background.graphics.beginFill(this._color,this._bgAlpha);
         }
         this._background.graphics.drawRect(0,0,_width,_height - 10);
         this._background.graphics.endFill();
         this.drawGrid();
         this._mask.graphics.clear();
         this._mask.graphics.beginFill(16711680);
         this._mask.graphics.drawRect(0,0,_width,_height - 10);
         this._mask.graphics.endFill();
      }
      
      protected final function drawGrid() : void
      {
         if(!this._showGrid)
         {
            return;
         }
         this._background.graphics.lineStyle(0,this._gridColor);
         var _loc1_:int = 0;
         while(_loc1_ < _width)
         {
            this._background.graphics.moveTo(_loc1_,0);
            this._background.graphics.lineTo(_loc1_,_height);
            _loc1_ = _loc1_ + this._gridSize;
         }
         _loc1_ = 0;
         while(_loc1_ < _height)
         {
            this._background.graphics.moveTo(0,_loc1_);
            this._background.graphics.lineTo(_width,_loc1_);
            _loc1_ = _loc1_ + this._gridSize;
         }
      }
      
      public function set shadow(param1:Boolean) : void
      {
         this._shadow = param1;
         if(this._shadow)
         {
            filters = [getShadow(2,true)];
         }
         else
         {
            filters = [];
         }
      }
      
      public function get shadow() : Boolean
      {
         return this._shadow;
      }
      
      public function set color(param1:int) : void
      {
         this._color = param1;
         invalidate();
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function set gridSize(param1:int) : void
      {
         this._gridSize = param1;
         invalidate();
      }
      
      public function get gridSize() : int
      {
         return this._gridSize;
      }
      
      public function set showGrid(param1:Boolean) : void
      {
         this._showGrid = param1;
         invalidate();
      }
      
      public function get showGrid() : Boolean
      {
         return this._showGrid;
      }
      
      public function set gridColor(param1:uint) : void
      {
         this._gridColor = param1;
         invalidate();
      }
      
      public function get gridColor() : uint
      {
         return this._gridColor;
      }
      
      public function set bgAlpha(param1:Number) : void
      {
         this._bgAlpha = param1;
         invalidate();
      }
   }
}
