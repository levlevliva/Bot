package package_52
{
   import package_55.class_1228;
   import spark.primitives.Rect;
   
   public final class class_288 extends class_152
   {
       
      
      private var var_2394:class_1228;
      
      public function class_288()
      {
         super();
      }
      
      public final function method_503(param1:XML = null) : void
      {
         method_305(param1,null,null);
         method_407(0,20);
         if(var_18.analyzer[0])
         {
            this.var_2394 = new class_1228(var_18.analyzer[0],var_85);
            addChild(this.var_2394);
         }
      }
      
      public final function method_2892(param1:Boolean) : void
      {
         method_87(class_168.const_790,param1);
      }
   }
}
