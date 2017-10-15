package com.greensock.loading
{
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingInfoTooltipListItemSubItemVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingInfoTooltipListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.greensock.loading.core.LoaderItem;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import package_110.class_903;
   import package_14.class_49;
   import package_156.class_654;
   import package_167.class_1024;
   import package_34.class_107;
   import package_41.class_84;
   import package_5.class_43;
   import package_50.complete;
   import package_50.duration;
   import package_50.elapse;
   import package_50.intensity;
   import package_50.irender;
   import package_50.layer;
   import package_50.mrender;
   import package_50.scale;
   import package_50.shake;
   import package_50.timer;
   import package_88.class_1014;
   import package_91.class_686;
   import package_92.class_995;
   import package_92.class_997;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.RichText;
   import spark.events.IndexChangeEvent;
   
   public class DataLoader extends LoaderItem
   {
      
      private static var _classActivated:Boolean = _activateClass("DataLoader",DataLoader,"txt,js");
       
      
      protected var _loader:URLLoader;
      
      public function DataLoader(param1:*, param2:Object = null)
      {
         super(param1,param2);
         _type = "DataLoader";
         this._loader = new URLLoader(null);
         if("format" in this.vars)
         {
            this._loader.dataFormat = String(this.vars.format);
         }
         this._loader.addEventListener(ProgressEvent.PROGRESS,_progressHandler,false,0,true);
         this._loader.addEventListener(Event.COMPLETE,this._receiveDataHandler,false,0,true);
         this._loader.addEventListener("ioError",_failHandler,false,0,true);
         this._loader.addEventListener("securityError",_failHandler,false,0,true);
         this._loader.addEventListener("httpStatus",_httpStatusHandler,false,0,true);
      }
      
      override protected function _load() : void
      {
         _prepRequest();
         this._loader.load(_request);
      }
      
      override protected function _dump(param1:int = 0, param2:int = 0, param3:Boolean = false) : void
      {
         if(_status == LoaderStatus.LOADING)
         {
            try
            {
               this._loader.close();
            }
            catch(error:Error)
            {
            }
         }
         super._dump(param1,param2,param3);
      }
      
      protected function _receiveDataHandler(param1:Event) : void
      {
         _content = this._loader.data;
         super._completeHandler(param1);
      }
   }
}
