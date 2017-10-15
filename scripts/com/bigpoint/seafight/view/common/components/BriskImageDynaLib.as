package com.bigpoint.seafight.view.common.components
{
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.view.common.components.vo.BriskDynaVo;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardsTabListItem;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.UIComponent;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.as3toolbox.bitmapclip.initCollections;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.CheckTypes;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import net.bigpoint.seafight.com.module.ship.class_1119;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_111.class_425;
   import package_111.class_466;
   import package_111.class_796;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_87;
   import package_16.class_28;
   import package_166.class_1502;
   import package_171.class_1270;
   import package_27.class_53;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1493;
   import package_46.class_1501;
   import package_5.class_43;
   import package_51.class_1103;
   import package_69.class_978;
   import package_9.class_17;
   import package_9.class_91;
   import package_92.class_1278;
   import package_92.class_944;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   import spark.primitives.Ellipse;
   import spark.primitives.Rect;
   
   public final class BriskImageDynaLib extends UIComponent
   {
       
      
      private var _preloadingDisplayDummy:DisplayObject = null;
      
      private var _displayDummyChanged:Boolean = false;
      
      private var _preloadDoneNotification:String;
      
      private var _bitmapSource:Bitmap;
      
      private var _maintainAspectRation:Boolean = false;
      
      private var _smoothing:Boolean = false;
      
      private var _dynaLibName:String;
      
      private var _dynaBmpSourceName:String;
      
      private var _dynalibChaged:Boolean;
      
      private var _dynaBMPchanged:Boolean;
      
      private var _aspectRatioIsDirty:Boolean = true;
      
      private var _bitmapSourceIsDirty:Boolean = false;
      
      private var _dynaSwfFilename:String;
      
      private var _hasListenerForInit:Boolean;
      
      private var _traceableBMPid:String;
      
      public function BriskImageDynaLib()
      {
         super();
      }
      
      private final function createDummy() : void
      {
         if(this._preloadingDisplayDummy == null)
         {
            this._preloadingDisplayDummy = new Bitmap(new BitmapData(1,1));
         }
         if(width == 0 || height == 0)
         {
         }
         this._preloadingDisplayDummy.x = width / 2 - this._preloadingDisplayDummy.width / 2;
         this._preloadingDisplayDummy.y = height / 2 - this._preloadingDisplayDummy.height / 2;
         addChild(this._preloadingDisplayDummy);
      }
      
      public final function onLoadComplete(param1:Event) : void
      {
         if(this._dynaBmpSourceName == this._traceableBMPid)
         {
         }
         var _loc2_:class_53 = class_53.method_21();
         this._smoothing = true;
         this._bitmapSource = _loc2_.method_2294(this._dynaLibName,this._dynaBmpSourceName,this._smoothing);
         if(this._preloadingDisplayDummy)
         {
            if(this._preloadingDisplayDummy.parent)
            {
               removeChild(this._preloadingDisplayDummy);
            }
         }
         if(_loc2_.hasEventListener(this._preloadDoneNotification))
         {
            _loc2_.removeEventListener(this._preloadDoneNotification,this.onLoadComplete);
         }
         while(this.numChildren)
         {
            removeChildAt(0);
         }
         addChild(this._bitmapSource);
         this._bitmapSourceIsDirty = true;
         invalidateSize();
         invalidateDisplayList();
         dispatchEvent(new class_1103(class_1103.const_724));
      }
      
      override protected function commitProperties() : void
      {
         var _loc2_:Boolean = false;
         super.commitProperties();
         var _loc1_:class_53 = class_53.method_21();
         if(_loc1_.method_160)
         {
            if(this._dynaBMPchanged || this._dynalibChaged)
            {
               if(this._dynaBmpSourceName && this._dynaLibName && this._dynaBmpSourceName.length && this._dynaLibName.length)
               {
                  if(this._dynaBmpSourceName == this._traceableBMPid)
                  {
                  }
                  this._dynaBMPchanged = false;
                  this._dynalibChaged = false;
                  this._preloadDoneNotification = this._dynaLibName + this._dynaBmpSourceName + "_complete";
                  _loc2_ = false;
                  if(this._dynaSwfFilename != null)
                  {
                     _loc2_ = _loc1_.method_195([this._dynaSwfFilename],this._preloadDoneNotification);
                  }
                  else
                  {
                     _loc2_ = _loc1_.method_195([this._dynaLibName],this._preloadDoneNotification);
                  }
                  if(_loc2_)
                  {
                     _loc1_.addEventListener(this._preloadDoneNotification,this.onLoadComplete);
                     this.createDummy();
                     this._displayDummyChanged = true;
                  }
                  else
                  {
                     this.onLoadComplete(null);
                  }
               }
            }
         }
         else if(!this._hasListenerForInit)
         {
            _loc1_.addEventListener(Event.INIT,this.handleFRLSInit);
            this._hasListenerForInit = true;
         }
         invalidateDisplayList();
      }
      
      private final function handleFRLSInit(param1:Event) : void
      {
         var _loc2_:class_53 = class_53.method_21();
         _loc2_.removeEventListener(Event.INIT,this.handleFRLSInit);
         this._dynaBMPchanged = true;
         this._dynalibChaged = true;
         invalidateProperties();
      }
      
      public function set preloadingDisplayDummy(param1:DisplayObject) : void
      {
         if(param1 != this._preloadingDisplayDummy)
         {
            this._preloadingDisplayDummy = param1;
            this._displayDummyChanged = true;
            invalidateProperties();
         }
      }
      
      public function set briskDynaVo(param1:BriskDynaVo) : void
      {
         this.dynaSWFFileName = param1.dynaSwfName;
         this.dynaLibName = param1.dynaLibName;
         this.dynaBmpSourceName = param1.dynaBmpName;
      }
      
      public function set dynaSWFFileName(param1:String) : void
      {
         this._dynaSwfFilename = param1;
      }
      
      public function get dynaLibName() : String
      {
         return this._dynaLibName;
      }
      
      public function set dynaLibName(param1:String) : void
      {
         if(param1 != this._dynaLibName)
         {
            this._dynalibChaged = true;
            this._dynaLibName = param1;
            invalidateProperties();
         }
      }
      
      public function get dynaBmpSourceName() : String
      {
         return this._dynaBmpSourceName;
      }
      
      public function set dynaBmpSourceName(param1:String) : void
      {
         if(param1 != this._dynaBmpSourceName)
         {
            this._dynaBMPchanged = true;
            this._dynaBmpSourceName = param1;
            invalidateProperties();
         }
      }
      
      public function get maintainAspectRation() : Boolean
      {
         return this._maintainAspectRation;
      }
      
      public function set maintainAspectRation(param1:Boolean) : void
      {
         if(this._maintainAspectRation != param1)
         {
            this._maintainAspectRation = param1;
            this._aspectRatioIsDirty = true;
            invalidateDisplayList();
         }
      }
      
      public function get smoothing() : Boolean
      {
         return this._smoothing;
      }
      
      public function set smoothing(param1:Boolean) : void
      {
         this._smoothing = param1;
      }
      
      public function get traceableBMPid() : String
      {
         return this._traceableBMPid;
      }
      
      public function set traceableBMPid(param1:String) : void
      {
         this._traceableBMPid = param1;
      }
      
      override protected function measure() : void
      {
         super.measure();
         if(this._bitmapSource)
         {
            if(this.measuredWidth == 0)
            {
               this.measuredWidth = this._bitmapSource.width;
            }
            if(this.measuredHeight == 0)
            {
               this.measuredHeight = this._bitmapSource.height;
            }
         }
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         if(this._bitmapSource)
         {
            if(this._maintainAspectRation)
            {
               this._bitmapSource.width = param1;
               this._bitmapSource.scaleY = this._bitmapSource.scaleX;
               if(this._bitmapSource.height > param2)
               {
                  this._bitmapSource.height = param2;
                  this._bitmapSource.scaleX = this._bitmapSource.scaleY;
               }
               this._bitmapSource.x = 0.5 * (param1 - this._bitmapSource.width);
               this._bitmapSource.y = 0.5 * (param2 - this._bitmapSource.height);
            }
            else
            {
               this._bitmapSource.width = param1;
               this._bitmapSource.height = param2;
            }
            dispatchEvent(new class_1103(class_1103.const_805,false,true));
         }
      }
   }
}
