package package_68
{
   import com.greensock.TweenMax;
   import package_20.class_109;
   import package_20.class_33;
   import package_45.class_110;
   
   public final class class_191 extends class_109
   {
      
      private static const const_1744:int = 10;
       
      
      private var var_2008:TweenMax;
      
      private var var_628:class_110;
      
      public function class_191()
      {
         super();
         this.var_628 = class_33.name_12.method_41;
      }
      
      public final function method_2239() : void
      {
         this.var_628.method_842(class_110.const_92);
         this.var_628.method_842(class_110.const_144);
         this.var_628.method_842(class_110.const_480);
         if(this.var_2008)
         {
            this.var_2008.kill();
         }
         this.var_2008 = TweenMax.delayedCall(const_1744,this.method_2578);
      }
      
      private final function method_2578() : void
      {
         this.var_628.method_905(class_110.const_92);
         this.var_628.method_905(class_110.const_144);
         this.var_628.method_905(class_110.const_480);
      }
   }
}
