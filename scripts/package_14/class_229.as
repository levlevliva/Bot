package package_14
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.model.vo.class_1037;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.greensock.events.LoaderEvent;
   import flash.events.Event;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.containers.Form;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.ship.class_396;
   import package_111.class_742;
   import package_125.class_1113;
   import package_34.class_117;
   import package_41.class_84;
   import package_58.class_1114;
   import package_58.class_1115;
   import package_58.class_1116;
   import package_58.class_1117;
   import package_58.class_175;
   import package_6.class_14;
   import package_7.class_15;
   import spark.components.Group;
   import spark.components.Label;
   
   public final class class_229
   {
      
      private static const const_80:ILogger = Log.getLogger("MonsterManager");
       
      
      private var var_578:Object;
      
      public function class_229()
      {
         this.var_578 = new Object();
         super();
         const_80.info("CONSTRUCTING");
         class_58.method_21().method_82("init monster manager");
      }
      
      public final function method_491() : void
      {
         var _loc1_:class_175 = null;
         for each(_loc1_ in this.var_578)
         {
            _loc1_.suicide(false);
            delete this.var_578[_loc1_.method_104().name_4];
         }
         this.var_578 = new Object();
      }
      
      public final function method_2374(param1:class_1037) : class_175
      {
         var _loc2_:class_175 = null;
         var _loc3_:int = param1.name_5;
         switch(_loc3_)
         {
            case class_1113.const_1358:
               _loc2_ = new class_1117(param1);
               break;
            case class_1113.const_1282:
               _loc2_ = new class_1116(param1);
               break;
            case class_1113.const_408:
               param1.var_44 = class_47.method_37.method_32(class_88.const_258,"26");
               _loc2_ = new class_1115(param1);
               break;
            case class_1113.const_1630:
               _loc2_ = new class_1114(param1,2);
               break;
            default:
               _loc2_ = new class_175(param1);
         }
         this.var_578[param1.name_4.name_4] = _loc2_;
         return _loc2_;
      }
      
      public final function method_2027(param1:int) : void
      {
         delete this.var_578[param1];
      }
      
      public final function method_268(param1:int) : class_175
      {
         return this.var_578[param1] as class_175;
      }
      
      public final function method_886() : Object
      {
         return this.var_578;
      }
      
      public final function method_1367() : Array
      {
         var _loc2_:class_175 = null;
         var _loc1_:Array = new Array();
         for each(_loc2_ in this.var_578)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public final function method_2213() : Array
      {
         var _loc2_:class_175 = null;
         var _loc1_:Array = new Array();
         for each(_loc2_ in this.var_578)
         {
            if(_loc2_.method_1516(_loc2_.method_2221(),_loc2_.method_2503()))
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}
