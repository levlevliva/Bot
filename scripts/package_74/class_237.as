package package_74
{
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import package_105.class_369;
   import package_14.class_200;
   import package_14.class_47;
   import package_15.class_273;
   import package_171.class_981;
   import package_26.class_1319;
   import package_41.class_84;
   import package_5.class_945;
   import package_57.class_171;
   import spark.components.Group;
   import spark.components.Label;
   
   public final class class_237
   {
       
      
      private var var_66:class_273;
      
      private var var_1803:Dictionary;
      
      public function class_237(param1:class_273)
      {
         super();
         this.var_66 = param1;
         this.var_1803 = new Dictionary();
      }
      
      public final function method_470(param1:int) : class_253
      {
         var _loc2_:class_253 = this.var_1803[param1] as class_253;
         if(_loc2_)
         {
            return _loc2_;
         }
         this.var_1803[param1] = _loc2_ = new class_253(this.var_66,param1);
         return _loc2_;
      }
   }
}
