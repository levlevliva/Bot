package mx.core
{
   use namespace mx_internal;
   
   public class DeferredInstanceFromFunction implements ITransientDeferredInstance
   {
      
      mx_internal static const VERSION:String = "4.12.0.0";
       
      
      private var generator:Function;
      
      private var instance:Object = null;
      
      private var destructor:Function;
      
      public function DeferredInstanceFromFunction(param1:Function, param2:Function = null)
      {
         super();
         this.generator = param1;
         this.destructor = param2;
      }
      
      public function getInstance() : Object
      {
         if(!this.instance)
         {
            this.instance = this.generator();
         }
         return this.instance;
      }
      
      public function reset() : void
      {
         this.instance = null;
         if(this.destructor != null)
         {
            this.destructor();
         }
      }
   }
}