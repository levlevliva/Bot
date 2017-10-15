package package_29
{
   import com.bigpoint.seafight.Main;
   
   public final class class_565 extends Error
   {
       
      
      public function class_565(param1:Object = null)
      {
         super("Override required for method " + param1,5003);
         super.name = "RequireOverrideError";
         Main.LOG.error(getStackTrace());
      }
   }
}
