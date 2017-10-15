package com.soenkerohde.logging
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.XMLSocket;
   import mx.core.mx_internal;
   import mx.logging.ILogger;
   import mx.logging.LogEvent;
   import mx.logging.LogEventLevel;
   import mx.logging.targets.LineFormattedTarget;
   import mx.states.State;
   import package_26.class_1086;
   import package_5.class_939;
   
   use namespace mx_internal;
   
   public final class SOSLoggingTarget extends LineFormattedTarget
   {
       
      
      private var socket:XMLSocket;
      
      private var history:Array;
      
      public var server:String = "localhost";
      
      public var port:int = 4444;
      
      public var user_id:int = -1;
      
      public var user_name:String = "unknown";
      
      public function SOSLoggingTarget()
      {
         super();
         this.socket = new XMLSocket();
         this.history = new Array();
      }
      
      override public function logEvent(param1:LogEvent) : void
      {
         var _loc3_:Date = null;
         var _loc2_:Object = {"message":param1.message};
         if(includeDate || includeTime)
         {
            _loc3_ = new Date();
            if(includeDate)
            {
               _loc2_["date"] = Number(_loc3_.getMonth() + 1).toString() + "/" + _loc3_.getDate().toString() + "/" + _loc3_.getFullYear();
            }
            if(includeTime)
            {
               _loc2_["time"] = this.padTime(_loc3_.getHours()) + ":" + this.padTime(_loc3_.getMinutes()) + ":" + this.padTime(_loc3_.getSeconds()) + "." + this.padTime(_loc3_.getMilliseconds(),true);
            }
         }
         if(includeLevel)
         {
            _loc2_["level"] = param1.level;
         }
         if(param1.target != null)
         {
            _loc2_["category"] = !!includeCategory?ILogger(param1.target).category:"";
         }
         else
         {
            _loc2_["category"] = "";
         }
         if(this.socket.connected)
         {
            this.send(_loc2_);
         }
         else
         {
            if(!this.socket.hasEventListener("connect"))
            {
               this.socket.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
               this.socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
               this.socket.addEventListener(Event.CONNECT,this.onConnect);
            }
            this.history.push(_loc2_);
            this.socket.connect(this.server,this.port);
         }
      }
      
      private final function onIOError(param1:IOErrorEvent) : void
      {
      }
      
      private final function onSecurityError(param1:SecurityErrorEvent) : void
      {
      }
      
      private final function onConnect(param1:Event) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this.history)
         {
            this.send(_loc2_);
         }
      }
      
      private final function send(param1:Object) : void
      {
         var msg:String = null;
         var lines:Array = null;
         var commandType:String = null;
         var key:String = null;
         var xmlMessage:XML = null;
         var prefix:String = null;
         var errorLog:LogEvent = null;
         var o:Object = param1;
         try
         {
            msg = o["message"] as String;
            lines = msg.split("\n");
            commandType = lines.length == 1?"showMessage":"showFoldMessage";
            key = this.getTypeByLogLevel(o["level"]);
            xmlMessage = new XML("<" + commandType + " key=\"" + ({key}) + "\" user_id=\"" + ({this.user_id}) + "\"/>");
            if(lines.length > 1)
            {
               xmlMessage["title"] = lines[0];
               xmlMessage["message"] = msg.substr(msg.indexOf("\n") + 1,msg.length);
               if(o["date"] == null)
               {
                  xmlMessage["data"] = o["data"];
               }
               if(o["time"] == null)
               {
                  xmlMessage["time"] = o["time"];
               }
               if(o["category"] == null)
               {
                  xmlMessage["category"] = o["category"];
               }
            }
            else
            {
               prefix = "";
               if(o["date"] != null)
               {
                  prefix = prefix + (o["date"] + fieldSeparator);
               }
               if(o["time"] != null)
               {
                  prefix = prefix + (o["time"] + fieldSeparator);
               }
               if(o["category"] != null)
               {
                  prefix = prefix + (o["category"] + fieldSeparator);
               }
               xmlMessage.appendChild(prefix + msg);
            }
            this.socket.send("!SOS" + xmlMessage.toXMLString() + "\n");
            return;
         }
         catch(e:Error)
         {
            errorLog = new LogEvent("ERROR SENDING LOG",LogEventLevel.ERROR);
            logEvent(errorLog);
            return;
         }
      }
      
      private final function getTypeByLogLevel(param1:int) : String
      {
         switch(param1)
         {
            case LogEventLevel.DEBUG:
               return "DEBUG";
            case LogEventLevel.INFO:
               return "INFO";
            case LogEventLevel.WARN:
               return "WARN";
            case LogEventLevel.ERROR:
               return "ERROR";
            case LogEventLevel.FATAL:
               return "FATAL";
            default:
               return "INFO";
         }
      }
      
      private final function padTime(param1:Number, param2:Boolean = false) : String
      {
         if(param2)
         {
            if(param1 < 10)
            {
               return "00" + param1.toString();
            }
            if(param1 < 100)
            {
               return "0" + param1.toString();
            }
            return param1.toString();
         }
         return param1 > 9?param1.toString():"0" + param1.toString();
      }
      
      override mx_internal function internalLog(param1:String) : void
      {
      }
   }
}
