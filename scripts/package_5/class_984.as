package package_5
{
   import package_41.class_1365;
   
   public final class class_984
   {
      
      public static const const_9:String = ".jpg";
      
      public static const const_256:String = ".gif";
      
      public static const const_39:String = ".png";
      
      public static const const_2372:String = ".xml";
       
      
      public function class_984()
      {
         super();
      }
      
      public static function method_2882(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case const_9:
               return class_1365.const_9;
            case const_256:
               return class_1365.const_256;
            case const_39:
               return class_1365.const_39;
            default:
               return class_1365.const_8;
         }
      }
   }
}
