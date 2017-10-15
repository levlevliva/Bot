package package_14
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.event.modules.ModuleDivider;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.greensock.TimelineMax;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderMax;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.DropShadowFilter;
   import flash.net.SharedObject;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_131.class_573;
   import package_29.class_166;
   import package_41.class_84;
   import package_41.class_93;
   import package_9.class_91;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.layouts.VerticalLayout;
   
   public final class class_61 extends EventDispatcher
   {
      
      public static const const_1457:String = "tmp";
      
      private static var name_55:class_61;
       
      
      private var var_1338:SharedObject;
      
      public function class_61(param1:Function)
      {
         super();
         if(param1 !== method_976)
         {
            throw new class_166();
         }
      }
      
      private static function method_976() : void
      {
      }
      
      public static function method_21() : class_61
      {
         if(name_55 == null)
         {
            name_55 = new class_61(method_976);
         }
         return name_55;
      }
      
      public final function method_54() : void
      {
         this.method_734.clear();
      }
      
      public function get method_3013() : Boolean
      {
         return this.method_734.data["version"] != undefined;
      }
      
      private final function method_1883() : SharedObject
      {
         var _loc1_:SharedObject = null;
         try
         {
            _loc1_ = SharedObject.getLocal(class_61.const_1457);
         }
         catch(e:Error)
         {
         }
         return _loc1_;
      }
      
      public final function method_835() : Object
      {
         return this.method_734.data;
      }
      
      public final function method_783() : void
      {
         this.method_2833();
      }
      
      private function get method_734() : SharedObject
      {
         if(this.var_1338 == null)
         {
            this.var_1338 = this.method_1883();
         }
         return this.var_1338;
      }
      
      private final function method_2833() : void
      {
         if(this.var_1338 == null)
         {
            return;
         }
         try
         {
            this.var_1338.flush();
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
   }
}
