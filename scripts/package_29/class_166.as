package package_29
{
   import com.bigpoint.seafight.Main;
   
   public final class class_166 extends Error
   {
       
      
      public function class_166()
      {
         super("Singleton cannot be instantiated");
         super.name = "SingletonError";
         Main.LOG.error(getStackTrace());
      }
   }
}
