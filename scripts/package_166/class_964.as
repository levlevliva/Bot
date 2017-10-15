package package_166
{
   import com.bigpoint.seafight.tools.getDyna;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.greensock.loading.LoaderStatus;
   import com.greensock.loading.core.LoaderCore;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.system.ApplicationDomain;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.IFlexDisplayObject;
   import package_14.class_47;
   import package_171.class_1057;
   import package_27.class_53;
   import package_41.class_84;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   
   public final class class_964 extends class_963
   {
       
      
      private var var_1603:String;
      
      private var var_2313:Boolean = false;
      
      public function class_964(param1:String)
      {
         this.var_1603 = param1;
         super();
      }
      
      override protected function method_1398() : void
      {
         var _loc1_:ApplicationDomain = class_53.method_21().method_348(this.var_1603);
         if(_loc1_ == null)
         {
            if(!this.var_2313)
            {
               getDyna(this.var_1603,this.method_1398);
            }
            this.var_2313 = true;
            return;
         }
         if(var_174 && this.parent)
         {
            this.parent.removeChild(var_174);
         }
         var _loc2_:Class = _loc1_.getDefinition(this.var_1603) as Class;
         var_174 = new _loc2_() as Sprite;
         method_34();
         var_174.alpha = var_1062;
         var_174.cacheAsBitmap = true;
         this.addChild(var_174);
      }
   }
}
