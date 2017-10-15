package com.greensock.plugins
{
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import com.greensock.TweenLite;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import mx.collections.ArrayList;
   import net.bigpoint.seafight.com.module.guild.class_383;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.guild.class_871;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_845;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_121.class_841;
   import package_16.class_28;
   import package_190.class_1181;
   import package_41.class_89;
   import package_6.class_14;
   import package_7.class_1039;
   import spark.components.HGroup;
   
   public final class VisiblePlugin extends TweenPlugin
   {
      
      public static const API:Number = 1.0;
       
      
      protected var _target:Object;
      
      protected var _tween:TweenLite;
      
      protected var _visible:Boolean;
      
      protected var _initVal:Boolean;
      
      protected var _progress:int;
      
      public function VisiblePlugin()
      {
         super();
         this.propName = "visible";
         this.overwriteProps = ["visible"];
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         this._target = param1;
         this._tween = param3;
         this._progress = !!this._tween.vars.runBackwards?0:1;
         this._initVal = this._target.visible;
         this._visible = Boolean(param2);
         return true;
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         this._target.visible = (param1 == 1 || param1 == 0) && this._tween.cachedTime / this._tween.cachedDuration == this._progress?this._visible:this._initVal;
      }
   }
}
