package com.bigpoint.seafight.view.common.components
{
   import com.bigpoint.seafight.display.utils.getGrayScaleBitmapData;
   import com.bigpoint.seafight.view.common.components.vo.BriskDynaVo;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.quest.WindowController;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.containers.Form;
   import mx.controls.Spacer;
   import mx.core.UIComponentDescriptor;
   import mx.events.FlexEvent;
   import mx.graphics.BitmapFill;
   import net.bigpoint.seafight.com.module.ship.AmsAttributeType;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_96;
   import package_170.class_979;
   import package_210.class_1474;
   import package_216.class_1575;
   import package_27.class_53;
   import package_30.class_337;
   import package_34.class_117;
   import package_41.class_84;
   import package_41.class_93;
   import package_47.class_692;
   import package_48.class_996;
   import package_5.class_1239;
   import package_5.class_22;
   import package_5.class_984;
   import package_51.class_1103;
   import package_69.class_978;
   import package_97.class_752;
   import spark.components.RichEditableText;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   
   public final class BriskBitmapFill extends BitmapFill
   {
       
      
      private var _displayDummyChanged:Boolean = false;
      
      private var _preloadDoneNotification:String;
      
      private var _bitmapSource:Bitmap;
      
      private var _smoothing:Boolean = false;
      
      private var _dynaLibName:String;
      
      private var _dynaBmpSourceName:String;
      
      private var _dynalibChaged:Boolean;
      
      private var _dynaBMPchanged:Boolean;
      
      private var _bitmapSourceIsDirty:Boolean = false;
      
      private var _dynaSwfFilename:String;
      
      private var _hasListenerForInit:Boolean;
      
      private var _traceableBMPid:String;
      
      public function BriskBitmapFill()
      {
         super();
      }
      
      override public function set source(param1:Object) : void
      {
         super.source = param1;
      }
      
      public final function onLoadComplete(param1:Event) : void
      {
         if(this._dynaBmpSourceName == this._traceableBMPid)
         {
         }
         var _loc2_:class_53 = class_53.method_21();
         _loc2_.removeEventListener(this._preloadDoneNotification,this.onLoadComplete);
         _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this._bitmapSourceIsDirty = true;
         dispatchEvent(new class_1103(class_1103.const_724));
         this.source = _loc2_.method_1848(this._dynaLibName,this._dynaBmpSourceName);
      }
      
      private final function invalidate() : void
      {
         var _loc2_:Boolean = false;
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
                     _loc1_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
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
      }
      
      private final function handleFRLSInit(param1:Event) : void
      {
         var _loc2_:class_53 = class_53.method_21();
         _loc2_.removeEventListener(Event.INIT,this.handleFRLSInit);
         this._dynaBMPchanged = true;
         this._dynalibChaged = true;
         this.invalidate();
      }
      
      private final function onError(param1:IOErrorEvent) : void
      {
         this._bitmapSource = null;
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
            this.invalidate();
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
            this.invalidate();
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
   }
}
