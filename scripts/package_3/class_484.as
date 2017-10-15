package package_3
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_15.class_273;
   import package_17.class_1318;
   import package_54.class_1089;
   import package_6.class_14;
   import package_9.class_347;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public final class class_484 extends class_10
   {
       
      
      public function class_484()
      {
         super();
         this.name_16();
      }
      
      private final function name_16() : void
      {
         method_23(class_347.name_3,this.method_2174);
         class_1318.name_16();
      }
      
      private final function method_2174(param1:class_14) : void
      {
         var m:class_347 = null;
         var bossControl:class_1318 = null;
         var module:class_14 = param1;
         m = module as class_347;
         var time:int = m.var_588 / 1000;
         if(m.name_5 == class_347.const_1844)
         {
            class_1318.name_3.method_1155(time,class_1318.const_1870);
            return;
         }
         bossControl = class_1318.name_3;
         bossControl.addEventListener(class_1318.const_665,function(param1:Event):void
         {
            bossControl.removeEventListener(class_1318.const_665,arguments["callee"]);
            bossControl.method_2477();
         });
         var btn:class_1089 = class_47.method_24.var_12.globalActionBtnContainer.method_109("leavemap");
         btn.visible = false;
         bossControl.method_1155(time,class_1318.const_1849);
      }
   }
}
