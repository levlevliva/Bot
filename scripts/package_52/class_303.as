package package_52
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import flash.text.StyleSheet;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_14.class_88;
   import package_5.class_43;
   
   public final class class_303 extends class_302
   {
       
      
      public function class_303()
      {
         super("inventory","invItmBtn_",class_43.const_1567,class_43.const_1641,class_309.const_387);
      }
      
      override protected function method_2337() : String
      {
         return class_47.method_22.method_20("subMenu_actItmBuy");
      }
      
      override protected function method_1277(param1:int) : String
      {
         return method_118(class_88.const_45,param1) + var_112.method_20("invItm_" + param1);
      }
      
      override protected function method_918() : void
      {
         var_582.htmlText = class_13.method_78("messagebox_actItmBuy_amount",new Array(var_181.text,method_211(String(int(var_181.text) * var_62)),var_309));
      }
   }
}
