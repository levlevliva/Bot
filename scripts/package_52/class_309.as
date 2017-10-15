package package_52
{
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.tools.class_13;
   import package_118.class_539;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_94;
   import package_5.class_214;
   import package_5.class_43;
   
   public final class class_309 extends class_302
   {
      
      public static const const_387:Array = [1,2,5,10,25,50,100];
      
      public static const const_900:Array = [5,10,25,50,100];
       
      
      protected var var_1832:int;
      
      public function class_309()
      {
         super("actionitems","actItmBtn_",class_43.const_955,class_43.const_1034,const_387);
      }
      
      override protected function method_2337() : String
      {
         return class_47.method_22.method_20("subMenu_actItmBuy");
      }
      
      override protected function method_1277(param1:int) : String
      {
         return method_118(class_88.const_153,param1) + var_112.method_20("actItm_" + param1);
      }
      
      override protected function method_1043() : void
      {
         var _loc1_:XML = method_501(var_1043);
         this.var_1832 = parseInt(_loc1_.@packageSize);
         this.var_980 = this.var_1832 == 5?const_900:const_387;
         super.method_1043();
      }
      
      override protected function method_918() : void
      {
         var _loc1_:int = int(var_181.text) * var_62;
         if(this.var_1832 == 5)
         {
            _loc1_ = _loc1_ / 5;
         }
         var_582.htmlText = class_13.method_78("messagebox_actItmBuy_amount",new Array(var_181.text,method_211(String(_loc1_)),var_309));
      }
      
      override protected function method_2521(param1:int) : String
      {
         return class_47.method_108.method_121(class_94.const_244,param1.toString());
      }
   }
}
