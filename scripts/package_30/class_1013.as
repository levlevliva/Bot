package package_30
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.CheckBoxGroup;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import package_163.class_884;
   import package_49.class_137;
   import spark.components.gridClasses.GridColumn;
   
   public final class class_1013 extends class_337
   {
       
      
      private var var_2309:Function;
      
      private var var_43:Array;
      
      private var var_2388:Object;
      
      public function class_1013(param1:Function, param2:Array, param3:Object = null)
      {
         super();
         this.var_2309 = param1;
         this.var_43 = param2;
         this.var_2388 = param3;
      }
      
      override public function method_1458() : void
      {
         this.var_2309.apply(this.var_2388,this.var_43);
      }
   }
}
