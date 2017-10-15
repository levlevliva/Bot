package package_74
{
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.class_932;
   import package_124.class_673;
   import package_15.class_273;
   import package_15.class_78;
   import package_41.class_93;
   import package_80.class_1180;
   import spark.components.DataGroup;
   
   public final class class_256 extends class_78
   {
       
      
      private var var_354:class_1180;
      
      public function class_256(param1:class_273)
      {
         super();
         method_35(this.var_354 = param1.method_1124());
      }
      
      override protected function method_1182() : Object
      {
         return this.var_354;
      }
      
      public function get method_544() : class_932
      {
         return !!this.var_354?this.var_354.name_8:null;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_354);
         this.var_354.method_36();
         this.var_354 = null;
      }
   }
}
