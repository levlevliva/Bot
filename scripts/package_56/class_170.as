package package_56
{
   import com.bigpoint.seafight.net.events.class_1021;
   import com.bigpoint.seafight.tools.class_1020;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.ImageFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.JSONFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.StringFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.XMLFinisher;
   import package_170.class_979;
   import package_26.class_1354;
   import spark.components.Group;
   import spark.events.IndexChangeEvent;
   
   public final class class_170 extends EventDispatcher
   {
      
      private static var name_55:class_170;
       
      
      public function class_170()
      {
         super();
      }
      
      public static function method_188(param1:String, param2:Array = null) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc3_:class_1021 = new class_1021(class_1021.var_1578);
         _loc3_.var_2293 = param1;
         if(param2)
         {
            _loc3_.name_18 = param2;
         }
         name_55.dispatchEvent(_loc3_);
      }
      
      public static function method_2968(param1:String, param2:Vector.<String> = null) : void
      {
         method_188(param1,class_1020.method_915(param2));
      }
      
      public static function get name_3() : class_170
      {
         if(null == name_55)
         {
            name_55 = new class_170();
         }
         return name_55;
      }
   }
}
