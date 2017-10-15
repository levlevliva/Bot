package net.bigpoint.as3toolbox.bitmapclip
{
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetStatsComponentVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetsInventoryVo;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.table.ColumnDivider;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.event.modules.common.vo.RankItemGeneralVO;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameHelperItemRenderer;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuAscendTabVo;
   import com.bigpoint.seafight.view.popups.lootpopup.component.target;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.GemType;
   import net.bigpoint.seafight.com.module.gems.class_883;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import package_14.class_47;
   import package_14.class_88;
   import package_154.class_619;
   import package_171.class_1058;
   import package_206.class_1567;
   import package_23.class_42;
   import package_29.class_565;
   import package_29.class_57;
   import package_36.class_100;
   import package_39.class_973;
   import package_46.class_1455;
   import package_48.class_1534;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_984;
   import package_69.class_978;
   import package_97.class_752;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public class BitmapClip extends Sprite
   {
      
      public static const PLAYBACK_FORWARD:uint = 0;
      
      public static const PLAYBACK_YOYO:uint = 1;
      
      public static const PLAYBACK_BACKWARD:uint = 2;
      
      protected static var cache:Array = [];
      
      private static var cacheIDCounter:Array = [];
       
      
      protected var bitmapDataPlayList:Array;
      
      protected var _frame:int;
      
      protected var _fps:int = 25;
      
      protected var _cacheID:String;
      
      private var _movieClip:MovieClip;
      
      protected var _mcBounds:Rectangle;
      
      protected var _removeAfterPlay:Boolean;
      
      protected var pos:Point;
      
      protected var currentTime:int;
      
      protected var _bitmap:Bitmap;
      
      private var frameTime:int;
      
      protected var _startFrame:int;
      
      protected var _endFrame:int;
      
      var _autoDeleteCache:Boolean;
      
      var remove:Boolean;
      
      protected var frames:int = 1;
      
      protected var _colorTransform:ColorTransform;
      
      protected var maxFrames:int;
      
      private var playNotation:Boolean;
      
      private var _forward:Boolean = true;
      
      private var _playbackMode:uint = 0;
      
      private var _playOnce:Boolean;
      
      public function BitmapClip(param1:MovieClip, param2:String, param3:int = 25, param4:Boolean = false, param5:Boolean = false, param6:int = 1, param7:int = -1, param8:ColorTransform = null)
      {
         this.bitmapDataPlayList = [];
         this.pos = new Point();
         this._bitmap = new Bitmap();
         super();
         this._movieClip = param1;
         this._cacheID = param2;
         this.fps = param3;
         this._removeAfterPlay = param4;
         this._autoDeleteCache = param5;
         this._startFrame = param6;
         this._endFrame = param7;
         this._colorTransform = param8;
         this.addChild(this._bitmap);
         this.mouseEnabled = false;
         this.mouseChildren = false;
         if(this._movieClip != null)
         {
            this.maxFrames = this._movieClip.framesLoaded;
            this.init();
         }
         this.addEventListener(Event.ADDED_TO_STAGE,this.handleAddedToStage,false,0,true);
      }
      
      protected static function addBitmapData(param1:String, param2:BCBitmapData) : void
      {
         cache[param1] = param2;
      }
      
      protected static function search(param1:String) : Boolean
      {
         if(cache[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function clearCache() : void
      {
         cache = [];
      }
      
      public function get playbackMode() : uint
      {
         return this._playbackMode;
      }
      
      public function set playbackMode(param1:uint) : void
      {
         this._playbackMode = param1;
         switch(this._playbackMode)
         {
            case PLAYBACK_FORWARD:
               this._forward = true;
               break;
            case PLAYBACK_BACKWARD:
               this._forward = false;
               this._frame = this.bitmapDataPlayList.length - 1;
         }
         this.updateFrame();
      }
      
      private final function handleAddedToStage(param1:Event) : void
      {
         AnimationManager.initStage(this.stage);
         this.removeEventListener(Event.ADDED_TO_STAGE,this.handleAddedToStage);
         if(this.playNotation)
         {
            this.playNotation = false;
            this.play();
         }
      }
      
      private final function init() : void
      {
         if(this._movieClip == null)
         {
            throw new Error("BitmapClip needs a valid movieClip Object!");
         }
         if(this.conditionsOk())
         {
            if(this._autoDeleteCache)
            {
               this.registerCacheID();
            }
            this.flattenDisplayObject(this._movieClip,this._cacheID);
         }
      }
      
      public final function clone() : Object
      {
         var _loc1_:BitmapClip = new BitmapClip(this._movieClip,this._cacheID,this._fps,this._removeAfterPlay,this._autoDeleteCache,this._startFrame,this._endFrame);
         _loc1_.mouseEnabled = this.mouseEnabled;
         _loc1_.mouseChildren = this.mouseChildren;
         _loc1_.playbackMode = this.playbackMode;
         return _loc1_;
      }
      
      protected final function handleRemovedFromStageListener(param1:Event) : void
      {
         this.stop();
      }
      
      private final function flattenDisplayObject(param1:MovieClip, param2:String = null) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:BCBitmapData = null;
         var _loc9_:Matrix = null;
         if(param1 is MovieClip)
         {
            if(this._endFrame != -1)
            {
               if(this._endFrame < this._startFrame)
               {
                  throw new Error("endframe is smaller than starframe!");
               }
               this.frames = this._endFrame;
            }
            else
            {
               this.frames = MovieClip(param1).totalFrames;
            }
            MovieClip(param1).gotoAndStop(this._startFrame);
         }
         var _loc3_:int = this._startFrame - 1;
         while(_loc3_ < this.frames)
         {
            if(search(param2 + "_" + _loc3_))
            {
               this.bitmapDataPlayList[_loc3_] = cache[param2 + "_" + _loc3_];
            }
            else
            {
               if(_loc3_ > 0)
               {
                  MovieClip(param1).gotoAndStop(_loc3_ + 1);
               }
               this._mcBounds = param1.getBounds(param1);
               _loc4_ = Math.ceil(this._mcBounds.width);
               _loc5_ = Math.ceil(this._mcBounds.height);
               _loc6_ = Math.ceil(this._mcBounds.x);
               _loc7_ = Math.ceil(this._mcBounds.y);
               _loc8_ = new BCBitmapData(_loc4_,_loc5_,true,0);
               _loc9_ = new Matrix();
               _loc9_.translate(-_loc6_,-_loc7_);
               _loc8_.draw(param1,_loc9_,this._colorTransform);
               _loc8_.offset.x = _loc6_;
               _loc8_.offset.y = _loc7_;
               this.bitmapDataPlayList[_loc3_] = _loc8_;
               if(param2 != null)
               {
                  addBitmapData(param2 + "_" + _loc3_,_loc8_);
               }
            }
            _loc3_++;
         }
         this._frame = this._startFrame - 1;
         this.updateFrame();
      }
      
      public function get framesLoaded() : int
      {
         return this.bitmapDataPlayList.length;
      }
      
      protected function updateFrame() : void
      {
         var _loc1_:BCBitmapData = this.bitmapDataPlayList[this._frame];
         if(_loc1_ != null)
         {
            this._bitmap.x = _loc1_.offset.x;
            this._bitmap.y = _loc1_.offset.y;
            super.x = this.pos.x;
            super.y = this.pos.y;
            this._bitmap.bitmapData = _loc1_;
         }
      }
      
      override public function get numChildren() : int
      {
         return super.numChildren - 1;
      }
      
      override public function getChildAt(param1:int) : DisplayObject
      {
         return super.getChildAt(param1 + 1);
      }
      
      override public function getChildIndex(param1:DisplayObject) : int
      {
         return super.getChildIndex(param1) - 1;
      }
      
      public final function gotoAndStop(param1:int) : void
      {
         this.stop();
         this._frame = param1 - 1;
         if(this._frame > this.bitmapDataPlayList.length - 1)
         {
            throw new Error("frameIndex is not valid! 1");
         }
         this.updateFrame();
      }
      
      public final function gotoAndPlay(param1:int) : void
      {
         this._frame = param1 - 1;
         if(this._frame > this.bitmapDataPlayList.length - 1)
         {
            throw new Error("frameIndex is not valid! 2");
         }
         this.play();
      }
      
      public function set frame(param1:int) : void
      {
         this.gotoAndStop(param1);
      }
      
      public function get frame() : int
      {
         return this._frame + 1;
      }
      
      private final function nextFrame() : void
      {
         if(this._forward)
         {
            this._frame = this._frame + 1;
            if(this._frame > this.bitmapDataPlayList.length - 1)
            {
               if(this._playbackMode == PLAYBACK_FORWARD && this._removeAfterPlay)
               {
                  this.stop();
                  if(parent != null)
                  {
                     parent.removeChild(this);
                  }
                  return;
               }
               if(this._playbackMode == PLAYBACK_YOYO)
               {
                  this._frame = this.bitmapDataPlayList.length - 2;
                  this._forward = false;
               }
               else if(this._playOnce)
               {
                  this.remove = true;
               }
               else
               {
                  this._frame = this._startFrame - 1;
               }
            }
         }
         else
         {
            this._frame = this._frame - 1;
            if(this._frame < this._startFrame - 1)
            {
               if(this._removeAfterPlay)
               {
                  this.stop();
                  if(parent != null)
                  {
                     parent.removeChild(this);
                  }
                  return;
               }
               if(this._playbackMode == PLAYBACK_YOYO)
               {
                  this._frame = this._startFrame;
                  this._forward = true;
               }
               else if(this._playOnce)
               {
                  this.remove = true;
               }
               else
               {
                  this._frame = this.bitmapDataPlayList.length - 1;
               }
            }
         }
         this.updateFrame();
      }
      
      public final function play() : void
      {
         if(parent != null)
         {
            this.remove = false;
            if(this.bitmapDataPlayList.length > 0)
            {
               if(!this.hasEventListener(Event.REMOVED_FROM_STAGE))
               {
                  this.addEventListener(Event.REMOVED_FROM_STAGE,this.handleRemovedFromStageListener);
               }
               AnimationManager.addClip(this);
               AnimationManager.addEnterFrameHandler();
            }
         }
         else
         {
            this.playNotation = true;
         }
      }
      
      public final function playOnce() : void
      {
         this._playOnce = true;
         this.play();
      }
      
      public final function stop() : void
      {
         this.removeEventListener(Event.REMOVED_FROM_STAGE,this.handleRemovedFromStageListener);
         this.remove = true;
      }
      
      final function update(param1:int) : void
      {
         this.currentTime = this.currentTime + param1;
         while(this.currentTime > this.frameTime)
         {
            this.currentTime = this.currentTime - this.frameTime;
            this.nextFrame();
         }
      }
      
      override public function set x(param1:Number) : void
      {
         this.pos.x = param1;
         this.updateFrame();
      }
      
      override public function set y(param1:Number) : void
      {
         this.pos.y = param1;
         this.updateFrame();
      }
      
      override public function get x() : Number
      {
         return this.pos.x;
      }
      
      override public function get y() : Number
      {
         return this.pos.y;
      }
      
      public function get cacheID() : String
      {
         return this._cacheID;
      }
      
      final function unregisterCacheID() : void
      {
         if(cacheIDCounter[this._cacheID])
         {
            cacheIDCounter[this._cacheID]--;
            if(cacheIDCounter[this._cacheID] == 0)
            {
               this.deleteClipCache();
            }
         }
      }
      
      protected final function registerCacheID() : void
      {
         if(!cacheIDCounter[this._cacheID])
         {
            cacheIDCounter[this._cacheID] = 0;
         }
         cacheIDCounter[this._cacheID]++;
      }
      
      private final function deleteClipCache() : void
      {
         var _loc2_:String = null;
         delete cacheIDCounter[this._cacheID];
         var _loc1_:int = this._startFrame - 1;
         while(_loc1_ < this.frames)
         {
            _loc2_ = this.cacheID + "_" + _loc1_;
            (cache[_loc2_] as BCBitmapData).dispose();
            delete cache[_loc2_];
            _loc1_++;
         }
      }
      
      public function set fps(param1:int) : void
      {
         this._fps = param1;
         this.frameTime = 1000 / this._fps;
      }
      
      public function get fps() : int
      {
         return this._fps;
      }
      
      public function set removeAfterPlay(param1:Boolean) : void
      {
         this._removeAfterPlay = param1;
      }
      
      public function get removeAfterPlay() : Boolean
      {
         return this._removeAfterPlay;
      }
      
      protected final function conditionsOk() : Boolean
      {
         if(this._endFrame > this.maxFrames)
         {
            throw new Error("endFrame exceeds total frames of the movieclip!");
         }
         if(this._startFrame < 1)
         {
            throw new Error("startFrame must be 1 or higher!");
         }
         if(this._cacheID == null || this._cacheID.length == 0)
         {
            throw new Error("BitmapClip needs a valid cacheID");
         }
         return true;
      }
   }
}
