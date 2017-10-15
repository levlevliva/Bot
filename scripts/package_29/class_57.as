package package_29
{
   import mx.logging.ILogger;
   import mx.logging.Log;
   import package_5.class_22;
   
   public final class class_57 extends Error
   {
      
      public static const const_3:ILogger = Log.getLogger("Error");
       
      
      public function class_57(param1:Object, param2:Object = null)
      {
         super("Invalid value \'" + param1 + "\'" + (!!param2?class_22.const_83 + param2:""),5002);
         super.name = "InvalidValueError";
         const_3.error(super.name + class_22.const_197 + class_22.const_83 + message);
      }
   }
}
