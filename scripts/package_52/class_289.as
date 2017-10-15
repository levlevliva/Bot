package package_52
{
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import package_17.class_54;
   import package_51.class_148;
   import package_72.class_203;
   import spark.components.RichText;
   
   public final class class_289 extends class_152
   {
      
      private static const const_1859:int = 500;
       
      
      private var var_1559:Timer;
      
      public function class_289()
      {
         super();
         this.var_1559 = new Timer(const_1859,1);
         this.var_1559.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_2395);
      }
      
      public final function method_503(param1:XML = null) : void
      {
         method_305(param1,null,this.method_2502);
         method_407(0,20);
      }
      
      private final function method_2502(param1:class_148) : void
      {
         var _loc2_:Number = Number(param1.name_22.name_7 / 100);
         switch(param1.name_22.name_5)
         {
            case "effects":
               if(this.method_1132())
               {
                  class_203.name_12.method_516(_loc2_);
               }
               this.var_1559.stop();
               this.var_1559.start();
               break;
            case "ambient":
               if(this.method_1219())
               {
                  class_203.name_12.method_517(_loc2_);
                  break;
               }
         }
      }
      
      private final function method_2395(param1:TimerEvent) : void
      {
      }
      
      public final function method_2893(param1:Boolean) : void
      {
         TextField(method_2562["optLoadingSound"]).visible = param1;
      }
      
      public final function method_1993(param1:Boolean) : void
      {
         class_203.name_12.method_516(!!param1?Number(this.method_1283()):Number(0));
         method_87(class_54.const_622,param1);
      }
      
      public final function method_2283(param1:Boolean) : void
      {
         class_203.name_12.method_517(!!param1?Number(this.method_1320()):Number(0));
         method_87(class_54.const_479,param1);
      }
      
      public final function method_1132() : Boolean
      {
         return method_73(class_54.const_622);
      }
      
      public final function method_1219() : Boolean
      {
         return method_73(class_54.const_479);
      }
      
      public final function method_2209(param1:int) : void
      {
         method_176(class_168.const_992).method_174(param1);
      }
      
      public final function method_1876(param1:int) : void
      {
         method_176(class_168.const_1122).method_174(param1);
      }
      
      public final function method_1191() : int
      {
         return method_176(class_168.const_992).method_217().value;
      }
      
      public final function method_1086() : int
      {
         return method_176(class_168.const_1122).method_217().value;
      }
      
      public final function method_1283() : Number
      {
         return this.method_1191() / 100;
      }
      
      public final function method_1320() : Number
      {
         return this.method_1086() / 100;
      }
   }
}
