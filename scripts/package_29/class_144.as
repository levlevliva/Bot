package package_29
{
   import flash.events.ErrorEvent;
   import flash.text.TextField;
   import package_10.class_18;
   import package_10.class_38;
   
   public final class class_144
   {
      
      public static const const_2212:String = "str ";
      
      public static const const_1719:String = "obj ";
      
      public static const const_2542:String = "evt ";
      
      public static const const_1655:String = "inf ";
       
      
      public function class_144()
      {
         super();
      }
      
      public static function method_2986(param1:Error, param2:int, param3:String = "") : void
      {
         class_38.method_173(class_18.const_451,{
            "val":param2,
            "msg":""
         });
      }
      
      public static function method_881(param1:ErrorEvent, param2:int, param3:String = "") : void
      {
         class_38.method_173(class_18.const_451,{
            "val":param2,
            "msg":""
         });
      }
      
      public static function method_341(param1:String, param2:int) : void
      {
         class_38.method_173(class_18.const_451,{
            "val":param2,
            "msg":""
         });
      }
      
      public static function method_865(param1:String, param2:int) : void
      {
         class_38.method_173(class_18.const_451,{
            "val":param2,
            "msg":param1
         });
      }
      
      public static function method_1300(param1:Error, param2:int, param3:String = "") : void
      {
         class_38.method_173(class_18.const_451,{
            "val":param2,
            "msg":const_1719 + const_1655 + param3 + " " + param1.errorID + " " + param1.message + " " + param1.message + " " + param1.getStackTrace()
         });
      }
   }
}
