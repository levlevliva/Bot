package mx.binding
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class BindingManager
   {
      
      mx_internal static const VERSION:String = "4.12.0.0";
      
      static var debugDestinationStrings:Object = {};
       
      
      public function BindingManager()
      {
         super();
      }
      
      public static function addBinding(param1:Object, param2:String, param3:Binding) : void
      {
         if(!param1._bindingsByDestination)
         {
            param1._bindingsByDestination = {};
            param1._bindingsBeginWithWord = {};
         }
         param1._bindingsByDestination[param2] = param3;
         param1._bindingsBeginWithWord[getFirstWord(param2)] = true;
      }
      
      public static function setEnabled(param1:Object, param2:Boolean) : void
      {
         var _loc3_:Array = null;
         var _loc4_:uint = 0;
         var _loc5_:Binding = null;
         if(param1 is IBindingClient && param1._bindings)
         {
            _loc3_ = param1._bindings as Array;
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc5_ = _loc3_[_loc4_];
               _loc5_.isEnabled = param2;
               _loc4_++;
            }
         }
      }
      
      public static function executeBindings(param1:Object, param2:String, param3:Object) : void
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         if(!param2 || param2 == "")
         {
            return;
         }
         if(param1 && (param1 is IBindingClient || param1.hasOwnProperty("_bindingsByDestination")) && param1._bindingsByDestination && param1._bindingsBeginWithWord[getFirstWord(param2)])
         {
            for(_loc4_ in param1._bindingsByDestination)
            {
               if(_loc4_.charAt(0) == param2.charAt(0))
               {
                  _loc5_ = param2.length;
                  if(_loc5_ < _loc4_.length && _loc4_.indexOf(param2) == 0 && (_loc4_.charAt(_loc5_) == "." || _loc4_.charAt(_loc5_) == "[") || _loc4_ == param2)
                  {
                     param1._bindingsByDestination[_loc4_].execute(param3);
                  }
               }
            }
         }
      }
      
      public static function enableBindings(param1:Object, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(!param2 || param2 == "")
         {
            return;
         }
         if(param1 && (param1 is IBindingClient || param1.hasOwnProperty("_bindingsByDestination")) && param1._bindingsByDestination && param1._bindingsBeginWithWord[getFirstWord(param2)])
         {
            for(_loc4_ in param1._bindingsByDestination)
            {
               if(_loc4_.charAt(0) == param2.charAt(0))
               {
                  if(_loc4_.indexOf(param2 + ".") == 0 || _loc4_.indexOf(param2 + "[") == 0 || _loc4_ == param2)
                  {
                     param1._bindingsByDestination[_loc4_].isEnabled = param3;
                  }
               }
            }
         }
      }
      
      private static function getFirstWord(param1:String) : String
      {
         var _loc2_:int = param1.indexOf(".");
         var _loc3_:int = param1.indexOf("[");
         if(_loc2_ == _loc3_)
         {
            return param1;
         }
         var _loc4_:int = Math.min(_loc2_,_loc3_);
         if(_loc4_ == -1)
         {
            _loc4_ = Math.max(_loc2_,_loc3_);
         }
         return param1.substr(0,_loc4_);
      }
      
      public static function debugBinding(param1:String) : void
      {
         debugDestinationStrings[param1] = true;
      }
   }
}
