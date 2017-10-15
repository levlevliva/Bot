package package_5
{
   import flash.events.EventDispatcher;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import package_14.class_47;
   import package_26.class_142;
   
   public final class class_41 extends EventDispatcher
   {
      
      public static const const_3:ILogger = Log.getLogger("GameState");
      
      public static const const_2826:int = -1;
      
      public static const const_1899:int = 0;
      
      public static const const_770:int = 1;
      
      public static const const_459:int = 2;
      
      public static const const_103:int = 3;
      
      public static const const_449:int = 4;
      
      private static var name_55:class_41;
       
      
      private var var_844:int = 0;
      
      public function class_41()
      {
         super();
      }
      
      public static function get name_3() : class_41
      {
         if(!name_55)
         {
            name_55 = new class_41();
         }
         return name_55;
      }
      
      public function set name_17(param1:int) : void
      {
         var _loc2_:int = this.var_844;
         if(_loc2_ == param1)
         {
            return;
         }
         this.var_844 = param1;
         switch(this.var_844)
         {
            case class_41.const_103:
               class_47.method_739.method_1684();
               break;
            default:
               if(class_47.method_739)
               {
                  class_47.method_739.method_1678();
                  break;
               }
         }
         const_3.info("state changed from " + _loc2_ + " to: " + this.var_844);
         dispatchEvent(new class_142(_loc2_,param1));
      }
      
      public function get name_17() : int
      {
         return this.var_844;
      }
   }
}
