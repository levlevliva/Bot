package com.bigpoint.seafight.tools
{
   import flash.events.Event;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_5.class_123;
   
   public function getSWFFinisher(param1:int, param2:Function = null, ... rest) : SWFFinisher
   {
      var fileCollection:FileCollection = null;
      var hasCallback:Boolean = false;
      var type:int = param1;
      var callback:Function = param2;
      var logger:ILogger = Log.getLogger("getSWFFinisher");
      fileCollection = class_123.method_1695(type);
      var finisherName:String = class_123.method_27(type);
      var swfFinisher:SWFFinisher = fileCollection.getFinisher(finisherName) as SWFFinisher;
      hasCallback = callback != null;
      if(swfFinisher == null && fileCollection != null)
      {
         fileCollection.addEventListener(FileCollectionFileLoadEvent.FILE_LOADED,function(param1:Event):void
         {
            fileCollection.removeEventListener(FileCollectionFileLoadEvent.FILE_LOADED,arguments["callee"]);
            if(hasCallback)
            {
               callback.apply(script461,rest);
            }
         });
         if(!fileCollection.hasLoader(finisherName) && !(fileCollection.loadLinear && fileCollection.isInLinearLoadList(finisherName)))
         {
            logger.info("Load finisher: " + finisherName);
            fileCollection.load(finisherName);
         }
      }
      else if(fileCollection.isLoaded(finisherName) == false)
      {
         return null;
      }
      return swfFinisher;
   }
}
