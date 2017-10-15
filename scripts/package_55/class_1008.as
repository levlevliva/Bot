package package_55
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.StyleSheet;
   import package_51.class_148;
   
   public final class class_1008 extends class_1007
   {
       
      
      public function class_1008(param1:MovieClip, param2:StyleSheet, param3:XML)
      {
         super(param1,param2,param3);
      }
      
      override protected function method_1245(param1:MouseEvent) : void
      {
         var _loc2_:class_148 = new class_148(class_148.const_13);
         _loc2_.name_22 = var_401;
         dispatchEvent(_loc2_);
      }
      
      public final function method_1503(param1:Boolean) : void
      {
         if(param1 == true)
         {
            var_745.gotoAndStop(2);
         }
         else if(param1 == false)
         {
            var_745.gotoAndStop(1);
         }
         var_868 = param1;
      }
   }
}
