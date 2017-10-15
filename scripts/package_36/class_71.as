package package_36
{
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.IGemsInventory;
   import com.bigpoint.seafight.view.popups.mateysmenu.vo.PlayerProfileViewVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenSpyWindow;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import package_15.class_48;
   import package_170.class_979;
   import package_41.class_84;
   import package_75.class_240;
   import spark.components.Group;
   import spark.effects.easing.Power;
   
   public final class class_71 extends EventDispatcher
   {
      
      private static var name_55:class_71;
       
      
      private var var_1952:Object;
      
      private var var_1238:class_240;
      
      public function class_71()
      {
         super();
         this.var_1952 = {};
         this.var_1238 = class_48.name_3.var_2417;
         this.var_1238.addEventListener(Event.CHANGE,this.method_902);
      }
      
      public static function get name_3() : class_71
      {
         if(name_55 == null)
         {
            name_55 = new class_71();
         }
         return name_55;
      }
      
      public final function method_217(param1:class_84) : int
      {
         var _loc2_:Object = this.method_1077(param1.var_6);
         return _loc2_[param1.name_4];
      }
      
      private final function method_1077(param1:int) : Object
      {
         var _loc2_:Object = this.var_1952[param1] as Object;
         if(_loc2_ == null)
         {
            this.var_1952[param1] = _loc2_ = {};
         }
         return _loc2_;
      }
      
      private final function method_902(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:class_84 = null;
         var _loc4_:Object = null;
         if(this.var_1238.name_8)
         {
            _loc2_ = this.var_1238.name_8.name_17;
            _loc3_ = this.var_1238.name_8.name_4;
            _loc4_ = this.method_1077(_loc3_.var_6);
            _loc4_[_loc3_.name_4] = _loc2_;
            this.dispatchEvent(param1);
         }
      }
   }
}
