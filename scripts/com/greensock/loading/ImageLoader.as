package com.greensock.loading
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.core.DisplayObjectLoader;
   import com.greensock.loading.core.LoaderItem;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_602;
   import package_14.class_47;
   import package_26.class_1086;
   import package_53.class_1100;
   import spark.components.Group;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   public final class ImageLoader extends DisplayObjectLoader
   {
      
      private static var _classActivated:Boolean = _activateClass("ImageLoader",ImageLoader,"jpg,jpeg,png,gif,bmp");
       
      
      public function ImageLoader(param1:*, param2:Object = null)
      {
         super(param1,param2);
         _type = "ImageLoader";
      }
      
      override protected function _load() : void
      {
         var _loc1_:Array = null;
         var _loc2_:LoaderItem = null;
         var _loc3_:int = 0;
         if(this.vars.noCache != true)
         {
            _loc1_ = _globalRootLoader.getChildren(true,true);
            _loc3_ = _loc1_.length;
            while(--_loc3_ > -1)
            {
               _loc2_ = _loc1_[_loc3_];
               if(_loc2_.url == _url && _loc2_ != this && _loc2_.status == LoaderStatus.COMPLETED && _loc2_ is ImageLoader && ImageLoader(_loc2_).rawContent is Bitmap)
               {
                  _closeStream();
                  _content = new Bitmap(ImageLoader(_loc2_).rawContent.bitmapData,"auto",Boolean(this.vars.smoothing != false));
                  Object(_sprite).rawContent = _content as DisplayObject;
                  _initted = true;
                  _progressHandler(new ProgressEvent(ProgressEvent.PROGRESS,false,false,_loc2_.bytesLoaded,_loc2_.bytesTotal));
                  dispatchEvent(new LoaderEvent(LoaderEvent.INIT,this));
                  _completeHandler(null);
                  return;
               }
            }
         }
         super._load();
      }
      
      override protected function _initHandler(param1:Event) : void
      {
         _determineScriptAccess();
         if(!_scriptAccessDenied)
         {
            _content = Bitmap(_loader.content);
            _content.smoothing = Boolean(this.vars.smoothing != false);
         }
         else
         {
            _content = _loader;
         }
         super._initHandler(param1);
      }
   }
}
