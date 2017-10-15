package package_52
{
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gemcraftmenu.EpicWinPopupVo;
   import com.greensock.TweenMax;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_94;
   import package_190.class_1168;
   import package_5.class_43;
   import package_89.class_1378;
   import spark.components.Group;
   import spark.primitives.BitmapImage;
   
   public final class class_312 extends class_302
   {
      
      private static const const_387:Array = [1,10,100,500,1000,5000,10000];
       
      
      public function class_312()
      {
         super("harpoons","harpBtn_",class_43.const_974,class_43.const_999,const_387);
      }
      
      override protected function method_1277(param1:int) : String
      {
         return method_118(class_88.const_65,param1) + class_1085.method_367(param1);
      }
      
      override protected function method_2337() : String
      {
         return class_47.method_22.method_20("subMenu_harpoonBuy");
      }
      
      override protected function method_918() : void
      {
         var_582.htmlText = class_13.method_78("messagebox_harpoonBuy_amount",new Array(var_181.text,method_211(String(int(var_181.text) * var_62)),var_309));
      }
      
      override protected function method_2521(param1:int) : String
      {
         return class_47.method_108.method_121(class_94.const_65,param1.toString());
      }
   }
}
