package package_62
{
   import flash.utils.Dictionary;
   import package_2.class_9;
   import package_20.class_109;
   
   public final class class_185 extends class_109
   {
       
      
      public var var_2048:Dictionary;
      
      public function class_185()
      {
         this.var_2048 = new Dictionary();
         super();
      }
      
      public final function name_49(param1:*, param2:*) : void
      {
         this.var_2048[param1] = param2;
      }
      
      public final function method_164(param1:Class) : class_9
      {
         var _loc2_:class_9 = this.var_2048[param1] as class_9;
         return _loc2_;
      }
   }
}
