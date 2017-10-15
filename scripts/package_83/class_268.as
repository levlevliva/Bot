package package_83
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import flash.utils.IDataInput;
   import net.bigpoint.seafight.com.module.useraction.class_415;
   import package_14.class_47;
   import package_14.class_94;
   import package_15.class_273;
   import package_15.class_78;
   import package_192.class_1196;
   
   public final class class_268 extends class_78
   {
       
      
      private var var_1078:class_1196;
      
      public function class_268(param1:class_273, param2:Vector.<int>)
      {
         super();
         method_35(this.var_1078 = param1.method_2344(param2));
      }
      
      override protected function method_1182() : Object
      {
         return this.var_1078.name_8;
      }
      
      public function get name_52() : int
      {
         return this.var_1078.name_8.var_1011;
      }
      
      public function get name_22() : int
      {
         var _loc1_:class_415 = this.var_1078.name_8;
         return !!_loc1_?int(_loc1_.var_334):-1;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_1078);
         this.var_1078.method_36();
      }
   }
}
