package package_26
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_286;
   import package_14.class_47;
   import package_16.class_28;
   import package_39.class_1366;
   import package_40.class_334;
   import package_42.class_98;
   import package_5.class_123;
   import package_9.class_586;
   import package_99.class_786;
   
   public final class class_960 extends Event
   {
      
      public static const const_279:String = "HITPOINTS_UPDATED_EVENT";
       
      
      private var var_2409:class_98;
      
      public function class_960(param1:class_98)
      {
         super(const_279);
         this.var_2409 = param1;
      }
      
      public function get name_87() : class_98
      {
         return this.var_2409;
      }
   }
}
