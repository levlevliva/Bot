package package_52
{
   import com.bigpoint.seafight.tools.class_13;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_94;
   import package_5.class_43;
   
   public final class class_314 extends class_302
   {
      
      private static const const_387:Array = [100,200,500,1000,5000,10000,25000,50000];
       
      
      public function class_314()
      {
         super("ammunition","ballBtn_",class_43.const_1189,class_43.const_942,const_387);
      }
      
      override protected function method_1277(param1:int) : String
      {
         return method_118(class_88.const_50,param1) + class_1087.method_367(param1);
      }
      
      override protected function method_2337() : String
      {
         return class_47.method_22.method_20("messagebox_cannonBallsBuy_title");
      }
      
      override protected function method_918() : void
      {
         var_582.htmlText = class_13.method_78("messagebox_BallBuy_info",new Array(var_181.text,method_211(String(int(var_181.text) * var_62 / 100)),var_309));
      }
      
      override protected function method_2521(param1:int) : String
      {
         return class_47.method_108.method_121(class_94.const_50,param1.toString());
      }
      
      override protected function method_1494(param1:int) : Boolean
      {
         var _loc2_:int = param1 * var_62 / 100;
         return !!var_1433?_loc2_ > var_1307:_loc2_ > var_1221;
      }
   }
}
