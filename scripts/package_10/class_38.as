package package_10
{
   import com.adobe.utils.StringUtil;
   import com.bigpoint.seafight.net.events.class_1256;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetsInventoryGroup;
   import com.bigpoint.seafight.view.popups.common.table.TableSkinInnerClass1;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import flash.display.Stage;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.guild.class_400;
   import net.bigpoint.seafight.com.module.guild.class_739;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import package_14.class_200;
   import package_14.class_47;
   import package_14.class_51;
   import package_29.class_57;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import package_71.class_201;
   import package_84.class_270;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_38
   {
      
      public static var var_968:Number = 91;
      
      private static var name_55:class_38 = null;
      
      private static var var_2296:Boolean = false;
       
      
      public const const_2080:uint = 10;
      
      public var name_89:Boolean = false;
      
      private var var_378:ByteArray;
      
      private var var_2111:Function;
      
      private var var_1612:Number = 0;
      
      private var var_483:Array;
      
      private var var_1921:Object = null;
      
      private var var_380:Stage = null;
      
      private var var_756:Number = 0;
      
      private var var_1697:Number = 0;
      
      private var var_1480:Number = Infinity;
      
      private var var_1500:Number = 0;
      
      private var var_1478:Number = 0;
      
      private var var_1698:Number = 0;
      
      private var var_1493:Number = 0;
      
      private var var_1457:Number = 0;
      
      private var var_1455:Number = 0;
      
      private var var_1468:Number = -1;
      
      private var var_1887:Number = 0;
      
      private var var_605:URLRequest;
      
      private var var_354:URLLoader;
      
      private var var_1938:Number = 0;
      
      private var var_2499:String = "application/x-compressed-json";
      
      private var var_2373:Boolean;
      
      private var var_1940:int;
      
      private var var_1052:Number = 0;
      
      public function class_38(param1:String, param2:Stage, param3:Boolean = true, param4:Function = null)
      {
         this.var_483 = [];
         this.var_605 = new URLRequest();
         super();
         if(name_55 == null)
         {
            name_55 = this;
            this.var_2373 = param3;
            this.method_2164(param1);
            this.method_2146(param2);
            this.method_2425(param4);
            this.var_378 = new ByteArray();
            this.var_605 = new URLRequest();
            this.var_605.method = URLRequestMethod.POST;
            this.var_605.contentType = "application/x-compressed-json";
            this.var_1612 = getTimer();
            this.var_1940 = getTimer();
            return;
         }
         throw new Error("EventStreamClient() error: Respect the singleton!");
      }
      
      public static function method_173(param1:String, param2:Object = null) : void
      {
         name_55.method_530(param1,param2);
      }
      
      public static function method_1392(param1:String, param2:String, param3:String = null) : void
      {
         var _loc4_:Object = new Object();
         _loc4_[class_18.const_1333] = class_177.method_90(class_51.var_21);
         _loc4_[class_18.const_919] = class_200.method_876();
         _loc4_[class_18.const_1287] = param2;
         _loc4_[class_18.const_1277] = param1;
         _loc4_[class_18.const_1531] = param3;
         method_173(class_18.const_1931,_loc4_);
      }
      
      private final function enterFrame() : void
      {
         var _loc1_:Number = getTimer();
         if(_loc1_ - this.var_1940 > 10 * 1000)
         {
            this.var_1940 = _loc1_;
            this.method_1598();
         }
         if(_loc1_ > this.var_1697 + 1000)
         {
            this.var_1697 = this.var_1697 + 1000;
            this.var_1480 = Math.min(this.var_1480,this.var_756);
            this.var_1500 = this.var_1500 + this.var_756;
            this.var_1478++;
            this.var_756 = 0;
         }
         this.var_756++;
         var _loc2_:Number = System.totalMemory;
         this.var_1698 = Math.max(this.var_1698,_loc2_);
         this.var_1493 = this.var_1493 + _loc2_;
         this.var_1457++;
         var _loc3_:Number = _loc2_ - System.freeMemory;
         if(this.var_1468 == -1)
         {
            this.var_1468 = _loc3_;
         }
         this.var_1455 = this.var_1455 + Math.abs(this.var_1468 - _loc3_);
         this.var_1468 = _loc3_;
         if(_loc1_ > this.var_1052)
         {
            this.method_530("flash_metrics",{
               "fpsMin":this.var_1480,
               "fpsAvg":Math.round(this.var_1500 / this.var_1478),
               "totalMemMax":this.var_1698,
               "totalMemAvg":Math.round(this.var_1493 / this.var_1457),
               "usedMemDelta":Math.round(this.var_1455 / ((_loc1_ - this.var_1887) / 1000)),
               "playTime":Math.round((_loc1_ - this.var_1612) / 1000)
            });
            this.var_1480 = Infinity;
            this.var_1500 = 0;
            this.var_1478 = 0;
            this.var_1698 = 0;
            this.var_1493 = 0;
            this.var_1457 = 0;
            this.var_1455 = 0;
            this.var_1887 = _loc1_;
            if(_loc1_ - this.var_1612 < 60 * 1000)
            {
               this.var_1052 = this.var_1052 + 5 * 1000;
            }
            else
            {
               this.var_1052 = this.var_1052 + 30 * 1000;
            }
         }
      }
      
      private final function method_530(param1:String, param2:Object = null) : void
      {
         var _loc3_:Object = param2 || {};
         _loc3_["event"] = param1;
         _loc3_["time"] = new Date().getTime();
         if("generator" in _loc3_)
         {
            _loc3_["generator"] = "as:" + var_968 + " " + _loc3_["generator"];
         }
         else
         {
            _loc3_["generator"] = "as:" + var_968;
         }
         if(this.name_89)
         {
            this.method_157("EventStreamClient: " + com.adobe.serialization.json.JSON.encode(_loc3_));
         }
         this.var_483.push(_loc3_);
      }
      
      private final function method_1598() : void
      {
         var request:class_201 = null;
         var url:String = null;
         try
         {
            if(this.var_354 != null)
            {
               return;
            }
            if(this.var_483.length == 0)
            {
               return;
            }
            if(this.var_1921 == null)
            {
               if(this.var_483.length > 1000)
               {
                  this.var_483.length = 0;
               }
               return;
            }
            request = new class_201(new Date().getTime(),this.var_1921,this.var_483);
            url = "http://eventstream-829-weblog-0" + (this.var_1612 % 8 + 1).toString() + ".bigpoint.net/json.php";
            this.var_378.clear();
            this.var_378.writeUTFBytes(com.adobe.serialization.json.JSON.encode(request));
            this.var_378.compress();
            this.var_605.method = URLRequestMethod.POST;
            this.var_605.contentType = this.var_2499;
            this.var_605.data = this.var_378;
            this.var_605.url = url;
            this.var_354 = new URLLoader();
            this.var_354.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.method_1033,false,0,true);
            this.var_354.addEventListener(IOErrorEvent.IO_ERROR,this.method_1583,false,0,true);
            this.var_354.addEventListener(Event.COMPLETE,this.method_1010,false,0,true);
            this.var_354.load(this.var_605);
            this.var_483.length = 0;
            return;
         }
         catch(error:Error)
         {
            method_157("EventStreamClient.flushEvents: " + error);
            return;
         }
      }
      
      private final function method_1010(param1:Event) : void
      {
         var response:Object = null;
         var event:Event = param1;
         try
         {
            response = com.adobe.serialization.json.JSON.decode(this.var_354.data);
            if(!response.success)
            {
               this.method_157("EventStreamClient.flushEvents.NOSUCCESS: " + response.message);
            }
         }
         catch(error:Error)
         {
            if(!_loc4_)
            {
               §§push();
               §§push("EventStreamClient.flushEvents.COMPLETE: ");
               if(!_loc4_)
               {
                  §§push(§§pop() + error);
               }
               §§pop().method_157(§§pop());
            }
         }
         this.method_859();
      }
      
      private final function method_1033(param1:SecurityErrorEvent) : void
      {
         this.method_157("EventStreamClient.flushEvents.SECURITY_ERROR: " + param1);
         this.method_859();
      }
      
      private final function method_1583(param1:IOErrorEvent) : void
      {
         var event:IOErrorEvent = param1;
         this.method_157("EventStreamClient.flushEvents.IO_ERROR: " + event);
         if(this.var_1938 == 0)
         {
            this.method_157("EventStreamClient.flushEvents.IO_ERROR: retrying");
            this.var_1938++;
            setTimeout(function():void
            {
               var_354.load(var_605);
            },1000);
         }
         this.method_859();
      }
      
      private final function method_859() : void
      {
         if(this.var_354 != null)
         {
            this.var_354.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.method_1033,false,0,true);
            this.var_354.addEventListener(IOErrorEvent.IO_ERROR,this.method_1583,false,0,true);
            this.var_354.addEventListener(Event.COMPLETE,this.method_1010,false,0,true);
            this.var_354 = null;
         }
      }
      
      private final function method_157(param1:String) : void
      {
         if(this.var_2111 != null)
         {
            this.var_2111(param1);
         }
      }
      
      private final function method_2321(param1:Event) : void
      {
         var _loc3_:Error = null;
         var _loc4_:ErrorEvent = null;
         var _loc2_:Object = param1["error"];
         if(_loc2_ is Error)
         {
            _loc3_ = _loc2_ as Error;
            this.method_530("flash_error",{
               "id":_loc3_.name,
               "message":_loc3_.toString(),
               "x-stacktrace":_loc3_.getStackTrace()
            });
         }
         else if(_loc2_ is ErrorEvent)
         {
            _loc4_ = _loc2_ as ErrorEvent;
            this.method_530("flash_error",{
               "id":_loc4_.errorID,
               "message":_loc4_.toString()
            });
         }
      }
      
      private final function method_2425(param1:Function) : void
      {
         this.var_2111 = param1;
      }
      
      private final function method_2164(param1:String) : void
      {
         var contextStr:String = param1;
         try
         {
            contextStr = StringUtil.replace(contextStr,"-","+");
            contextStr = StringUtil.replace(contextStr,"_","/");
            contextStr = class_202.method_948(contextStr);
            this.var_1921 = com.adobe.serialization.json.JSON.decode(contextStr);
            return;
         }
         catch(error:Error)
         {
            method_157("EventStreamClient.setClientContext: " + error);
            return;
         }
      }
      
      private final function method_2146(param1:Stage) : void
      {
         var caps:Object = null;
         var time:Number = NaN;
         var stageRef:Stage = param1;
         this.var_380 = stageRef;
         try
         {
            if(this.var_380.loaderInfo.hasOwnProperty("uncaughtErrorEvents"))
            {
               IEventDispatcher(this.var_380.loaderInfo["uncaughtErrorEvents"]).addEventListener("uncaughtError",this.method_2321,false,0,true);
            }
         }
         catch(error:Error)
         {
            method_157("EventStreamClient.setStage: uncaughtErrorEvents " + error);
         }
         try
         {
            caps = {
               "vmVersion":System.vmVersion,
               "avHardwareDisable":Capabilities.avHardwareDisable,
               "cpuArchitecture":Capabilities["cpuArchitecture"],
               "hasAccessibility":Capabilities.hasAccessibility,
               "hasAudio":Capabilities.hasAudio,
               "hasAudioEncoder":Capabilities.hasAudioEncoder,
               "hasEmbeddedVideo":Capabilities.hasEmbeddedVideo,
               "hasIME":Capabilities.hasIME,
               "hasMP3":Capabilities.hasMP3,
               "hasPrinting":Capabilities.hasPrinting,
               "hasScreenBroadcast":Capabilities.hasScreenBroadcast,
               "hasScreenPlayback":Capabilities.hasScreenPlayback,
               "hasStreamingAudio":Capabilities.hasStreamingAudio,
               "hasStreamingVideo":Capabilities.hasStreamingVideo,
               "hasTLS":Capabilities.hasTLS,
               "hasVideoEncoder":Capabilities.hasVideoEncoder,
               "isDebugger":Capabilities.isDebugger,
               "isEmbeddedInAcrobat":Capabilities.isEmbeddedInAcrobat,
               "language":Capabilities.language,
               "localFileReadDisable":Capabilities.localFileReadDisable,
               "manufacturer":Capabilities.manufacturer,
               "maxLevelIDC":Capabilities.maxLevelIDC,
               "os":Capabilities.os,
               "pixelAspectRatio":Capabilities.pixelAspectRatio,
               "playerType":Capabilities.playerType,
               "screenColor":Capabilities.screenColor,
               "screenDPI":Capabilities.screenDPI,
               "screenResolutionX":Capabilities.screenResolutionX,
               "screenResolutionY":Capabilities.screenResolutionY,
               "supports32BitProcesses":Capabilities["supports32BitProcesses"],
               "supports64BitProcesses":Capabilities["supports64BitProcesses"],
               "touchscreenType":Capabilities["touchscreenType"],
               "version":Capabilities.version,
               "frameRate":this.var_380.frameRate,
               "displayState":this.var_380.displayState,
               "quality":this.var_380.quality,
               "scaleMode":this.var_380.scaleMode,
               "wmodeGPU":this.var_380.wmodeGPU,
               "width":this.var_380.width,
               "height":this.var_380.height,
               "stageWidth":this.var_380.stageWidth,
               "stageHeight":this.var_380.stageHeight,
               "parameters":this.var_380.loaderInfo.parameters
            };
            this.method_530("flash_capabilities",caps);
         }
         catch(error:Error)
         {
            method_157("EventStreamClient.setStage: systemInfo " + error);
         }
         try
         {
            time = getTimer();
            this.var_756 = 0;
            this.var_1697 = time;
            this.var_1052 = time + 5 * 1000;
            this.var_1887 = time;
            if(this.var_2373)
            {
               this.var_380.addEventListener(Event.ENTER_FRAME,this.method_2178,false,0,true);
            }
            return;
         }
         catch(error:Error)
         {
            method_157("EventStreamClient.setStage: enterFrame " + error);
            return;
         }
      }
      
      private final function method_2178(param1:Event) : void
      {
         this.enterFrame();
      }
   }
}
