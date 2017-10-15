package package_52
{
   import com.bigpoint.seafight.tools.class_13;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_94;
   import package_152.class_852;
   import package_5.class_43;
   
   public final class class_327 extends class_302
   {
      
      private static const const_387:Array = [1,2,5,10,25,50,100];
       
      
      public function class_327()
      {
         super("fireworks","actItmBtn_",class_43.const_1221,class_43.const_1164,const_387);
      }
      
      override protected function method_1277(param1:int) : String
      {
         return method_118(class_88.const_153,param1) + var_112.method_20("actItm_" + param1);
      }
      
      override protected function method_2337() : String
      {
         return class_47.method_22.method_20("subMenu_actItmBuy");
      }
      
      override protected function method_918() : void
      {
         var_582.htmlText = class_13.method_78("messagebox_fireworkBuy_amount",new Array(var_181.text,method_211(String(int(var_181.text) * var_62)),var_309));
      }
      
      override protected function method_2521(param1:int) : String
      {
         return class_47.method_108.method_121(class_94.const_244,param1.toString());
      }
   }
}
