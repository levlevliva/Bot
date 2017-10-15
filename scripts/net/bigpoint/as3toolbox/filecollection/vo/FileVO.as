package net.bigpoint.as3toolbox.filecollection.vo
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import flash.net.XMLSocket;
   import mx.binding.BindingManager;
   import mx.graphics.GradientEntry;
   import spark.components.Grid;
   
   public final class FileVO
   {
       
      
      public var id:String;
      
      public var location:LocationVO;
      
      public var name:String;
      
      public var type:String;
      
      public var loaded:Boolean;
      
      public var data;
      
      public var fileNode:XML;
      
      public var params:Object;
      
      public var numTries:int = 0;
      
      public var callbackComplete:Object;
      
      public var callbackError:Object;
      
      public var hash:String;
      
      public function FileVO(param1:String, param2:LocationVO, param3:String, param4:String, param5:String, param6:XML)
      {
         super();
         this.initCollections();
         this.loaded = false;
         this.id = param1;
         this.location = param2;
         this.name = param3;
         this.type = param4;
         this.extractParams(param6);
      }
      
      public final function getFileName(param1:Boolean = false) : String
      {
         var _loc2_:String = this.location.path + this.name + "." + this.type;
         if(param1 && this.hash != null)
         {
            _loc2_ = _loc2_ + ("?__cv=" + this.hash);
         }
         return _loc2_;
      }
      
      private final function initCollections() : void
      {
         this.callbackComplete = new Vector.<Function>();
         this.callbackError = new Vector.<Function>();
      }
      
      private final function extractParams(param1:XML) : void
      {
         var _loc2_:XML = null;
         this.params = new Object();
         for each(_loc2_ in param1.param)
         {
            this.params[String(_loc2_.@name)] = String(_loc2_.@value);
         }
      }
   }
}
