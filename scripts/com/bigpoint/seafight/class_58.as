package com.bigpoint.seafight
{
   import com.bigpoint.seafight.model.inventory.vo.buff.DefaultBuff_VO;
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.model.vo.class_1092;
   import com.bigpoint.seafight.model.vo.class_1525;
   import com.bigpoint.seafight.model.vo.class_980;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.ResizeableExtendedWindow;
   import com.bigpoint.seafight.view.popups.boarding.skins.CommonEquipmentListSkin;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.TextFormat;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.IUIComponent;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_593;
   import net.bigpoint.seafight.com.module.gems.class_772;
   import package_10.class_18;
   import package_10.class_38;
   import package_104.class_448;
   import package_118.class_1445;
   import package_118.class_539;
   import package_121.class_841;
   import package_128.class_716;
   import package_14.class_47;
   import package_14.class_51;
   import package_141.class_536;
   import package_141.class_804;
   import package_26.class_1086;
   import package_26.class_1102;
   import package_26.class_142;
   import package_26.class_1523;
   import package_29.class_166;
   import package_41.class_103;
   import package_41.class_84;
   import package_49.class_137;
   import package_5.class_41;
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
   import package_6.class_14;
   import package_72.class_1080;
   import package_92.class_995;
   import package_92.class_997;
   import package_97.class_752;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_58 extends EventDispatcher
   {
      
      private static const const_1464:int = 2397965;
      
      private static const const_516:Number = 1;
      
      private static const const_1614:int = 365;
      
      private static const const_1463:int = -125;
      
      private static const const_2676:int = 15;
      
      private static var var_1864:TextFormat = new TextFormat(null,null,16711680,true);
      
      private static var var_1932:TextFormat;
      
      private static var name_55:class_58;
       
      
      private var var_1351:Sprite;
      
      private var var_224:LoadingSkull;
      
      private var var_566:Sprite;
      
      private var var_1323:Boolean = false;
      
      private var var_2346:Number;
      
      private var var_819:Bitmap;
      
      private var var_1272:int = 0;
      
      private var var_1586:String = "";
      
      private var var_1873:Number;
      
      private var var_1030:Timer;
      
      private var var_1476:Boolean = false;
      
      public var var_2425:Boolean = true;
      
      private var var_1187:int = -10;
      
      public function class_58(param1:Function)
      {
         super();
         if(param1 !== method_976)
         {
            throw new class_166();
         }
         this.var_2346 = Number(const_1463) / 100;
         this.var_819 = new Bitmap(new BitmapData(500,const_1614,false,4294967295));
         this.var_566 = new Sprite();
         this.var_566.graphics.beginFill(0,1);
         this.var_566.graphics.drawRect(-1000,-1000,2800,2600);
         this.var_566.alpha = 0;
         this.var_224 = new LoadingSkull();
         this.var_224._loadingText.visible = true;
         this.var_224._tip.visible = false;
         var_1932 = this.var_224._loadingText.defaultTextFormat;
         this.method_759 = 0;
         class_41.name_3.addEventListener(class_142.const_116,this.method_1387);
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_58
      {
         if(name_55 == null)
         {
            name_55 = new class_58(method_976);
         }
         return name_55;
      }
      
      public final function method_182(param1:int, param2:int) : void
      {
         this.var_566.graphics.clear();
         this.var_566.graphics.beginFill(0,1);
         this.var_566.graphics.drawRect(0,0,param1,param2);
         this.method_438();
      }
      
      public final function method_1766() : void
      {
         if(class_51.var_129 == "ko")
         {
            this.var_224._skull.visible = false;
            this.var_224._tip.visible = false;
         }
      }
      
      public final function method_830(param1:int = 15, param2:Boolean = false) : void
      {
         if(class_51.var_1159 == null)
         {
            return;
         }
         if(param1 < 1)
         {
            this.loadTippInternal(param2);
            return;
         }
         TweenLite.to(this,param1,{"onComplete":this.loadTippInternal});
      }
      
      private final function loadTippInternal(param1:Boolean = false) : void
      {
         if(class_51.var_1159 == null || !param1 && !this.var_1323)
         {
            return;
         }
         var _loc2_:URLRequest = class_24.method_434(class_51.var_1159,"&",true,true);
         var _loc3_:URLLoader = new URLLoader();
         _loc3_.addEventListener(Event.COMPLETE,this.method_2308);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.method_2003);
         _loc3_.load(_loc2_);
      }
      
      private final function method_2308(param1:Event) : void
      {
         if(class_51.var_129 == "ko")
         {
            return;
         }
         this.var_224._tip.visible = true;
         this.var_224._tip.text = String(URLLoader(param1.target).data);
         this.method_830();
      }
      
      private final function method_2003(param1:IOErrorEvent) : void
      {
         Main.LOG.error("ERROR LOADING TIPP " + param1.text);
      }
      
      private final function method_1387(param1:class_142) : void
      {
         switch(class_41.name_3.name_17)
         {
            case class_41.const_770:
               this.show();
               break;
            default:
               this.hide();
         }
      }
      
      public final function method_1929(param1:Sprite) : void
      {
         this.var_1351 = param1;
      }
      
      private final function show() : void
      {
         if(this.var_1323)
         {
            return;
         }
         this.var_1323 = true;
         this.method_438();
         this.var_1351.addChild(this.var_566);
         this.var_1351.addChild(this.var_224);
         TweenLite.to(this.var_224,const_516,{"alpha":1});
         TweenLite.to(this.var_566,const_516 * 2,{"alpha":0.7});
         this.method_830();
      }
      
      public final function method_438() : void
      {
         this.var_224.x = class_51.var_39 / 2;
         this.var_224.y = class_51.var_40 / 2;
      }
      
      public function set method_759(param1:int) : void
      {
         var _loc2_:int = int(param1) + this.var_1187;
         if(_loc2_ >= 0 && this.var_1187 != -100)
         {
            TweenMax.delayedCall(2,this.track,[Math.abs(this.var_1187).toString()]);
            this.var_1187 = this.var_1187 - 10;
         }
         if(param1 > 100)
         {
            param1 = 100;
         }
         this.var_1272 = param1;
         this.var_819.y = this.var_2346 * this.var_1272;
         this.method_1250();
      }
      
      private final function track(param1:String) : void
      {
         class_38.method_173(class_18.const_1217,{"val":param1});
      }
      
      public function get method_759() : int
      {
         return this.var_1272;
      }
      
      private final function hide() : void
      {
         if(!this.var_1323)
         {
            return;
         }
         this.var_1323 = false;
         TweenLite.to(this.var_224,const_516,{"alpha":0});
         TweenLite.to(this.var_566,const_516,{
            "alpha":0,
            "onComplete":this.method_1702
         });
      }
      
      private final function method_1702() : void
      {
         try
         {
            this.var_1351.removeChild(this.var_566);
            this.var_224.destroy();
            this.var_1351.removeChild(this.var_224);
            dispatchEvent(new Event("removed"));
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      public final function method_82(param1:String, param2:Boolean = false) : void
      {
         if(this.var_1476)
         {
            return;
         }
         if(param2)
         {
            this.var_1476 = param2;
            this.var_1586 = param1;
            this.var_224._loadingText.defaultTextFormat = var_1864;
            this.var_224._loadingText.text = this.var_1586;
            return;
         }
         this.var_1586 = param1;
         this.method_1250();
      }
      
      public final function method_77() : void
      {
         this.var_1476 = false;
         this.var_224._loadingText.defaultTextFormat = var_1932;
         this.var_224._loadingText.text = "";
      }
      
      private final function method_1250() : void
      {
         if(this.var_1476)
         {
            return;
         }
         this.var_224._loadingText.text = (!!this.var_2425?this.var_1272 + "% - ":"") + this.var_1586;
      }
      
      public function set method_542(param1:Number) : void
      {
         this.var_1873 = param1;
         this.refreshLoadedBytesPercent();
      }
      
      private final function refreshLoadedBytesPercent() : void
      {
         this.method_759 = this.var_1873 / const_1464 * 100;
      }
      
      public function set method_3008(param1:int) : void
      {
         this.method_542 = this.method_542 + param1;
      }
      
      public function get method_542() : Number
      {
         return this.var_1873;
      }
      
      public final function method_2587(param1:int, param2:Function) : void
      {
         this.method_750();
         this.var_1030 = new Timer(param1);
         this.var_1030.addEventListener(TimerEvent.TIMER,param2);
         this.var_1030.start();
      }
      
      public final function method_750() : void
      {
         if(this.var_1030 == null)
         {
            return;
         }
         this.var_1030.stop();
         this.var_1030 = null;
      }
   }
}

import flash.display.Bitmap;
import flash.display.DisplayObject;
import flash.display.Sprite;
import flash.text.TextField;
import flash.text.TextFormat;
import flash.text.TextFormatAlign;
import package_89.class_331;

class LoadingSkull extends Sprite
{
    
   
   public var _loadingText:TextField;
   
   public var _tip:TextField;
   
   public var _skull:Bitmap;
   
   public var _animation:class_331;
   
   function LoadingSkull()
   {
      super();
      this._loadingText = new TextField();
      this._loadingText.defaultTextFormat = new TextFormat("Verdana",10,12361024,null,null,null,null,null,TextFormatAlign.CENTER);
      this._tip = new TextField();
      this._tip.defaultTextFormat = new TextFormat("Verdana",15,13349178,null,null,null,null,null,TextFormatAlign.CENTER);
      this._tip.multiline = true;
      this._tip.wordWrap = true;
      this.setProps(this._loadingText,-300,235,600,35);
      this.setProps(this._tip,-225,100,450,130);
      addChild(this._loadingText);
      addChild(this._tip);
      this._animation = new class_331("preloader","preloader",true,true,true);
      this._animation.method_68();
      addChild(this._animation);
   }
   
   public function destroy() : void
   {
      if(this._loadingText && this._loadingText.parent)
      {
         removeChild(this._loadingText);
      }
      if(this._tip && this._tip.parent)
      {
         removeChild(this._tip);
      }
      if(this._animation && this._animation.parent)
      {
         removeChild(this._animation);
      }
   }
   
   private function setProps(param1:DisplayObject, param2:int, param3:int, param4:int, param5:int) : void
   {
      param1.x = param2;
      param1.y = param3;
      param1.width = param4;
      param1.height = param5;
   }
}
