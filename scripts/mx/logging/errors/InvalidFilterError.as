package mx.logging.errors
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class InvalidFilterError extends Error
   {
      
      mx_internal static const VERSION:String = "4.12.0.0";
       
      
      public function InvalidFilterError(param1:String)
      {
         super(param1);
      }
      
      public function toString() : String
      {
         return String(message);
      }
   }
}