package package_46
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.component.EventModuleFactory;
   import com.bigpoint.seafight.view.popups.event.modules.IEventModule;
   import com.bigpoint.seafight.view.popups.event.modules.faction.getFactionTeamName;
   import com.bigpoint.seafight.view.popups.event.vo.EventVO;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModuleVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import package_123.class_1032;
   import package_123.class_837;
   import package_18.class_392;
   import package_18.class_530;
   import package_18.class_571;
   import package_18.class_620;
   import package_18.class_855;
   import package_49.class_137;
   import package_6.class_14;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.filters.GlowFilter;
   
   public final class class_975 extends class_113
   {
      
      public static const const_348:int = method_40();
      
      public static const const_445:int = method_40();
      
      private static var name_12:class_975;
       
      
      private var var_1061:Dictionary;
      
      public function class_975()
      {
         super();
         this.var_1061 = new Dictionary();
      }
      
      public static function get name_3() : class_975
      {
         if(name_12 == null)
         {
            name_12 = new class_975();
         }
         return name_12;
      }
      
      public final function method_2063(param1:class_392) : void
      {
         this.method_1064(param1);
         method_34(const_348);
      }
      
      public final function method_1734(param1:class_530) : void
      {
         this.method_1064(param1);
         method_34(const_445);
      }
      
      private final function method_1064(param1:class_392) : void
      {
         var _loc5_:class_620 = null;
         var _loc6_:Vector.<class_855> = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:EventVO = null;
         var _loc2_:Vector.<class_620> = param1.var_856;
         if(null == _loc2_ || _loc2_.length <= 0)
         {
            Main.LOG.warn(this + ": empty events list in " + param1);
            return;
         }
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc2_[_loc4_];
            _loc6_ = _loc5_.var_763;
            _loc7_ = _loc5_.var_1366;
            _loc8_ = _loc5_.var_20;
            _loc9_ = this.var_1061[_loc7_] as EventVO;
            if(_loc9_ == null)
            {
               _loc9_ = new EventVO(_loc8_,_loc5_.var_1366);
            }
            this.method_2406(_loc9_,_loc6_);
            this.var_1061[_loc7_] = _loc9_;
            _loc4_++;
         }
      }
      
      private final function method_2406(param1:EventVO, param2:Vector.<class_855>) : void
      {
         var _loc5_:class_855 = null;
         var _loc6_:class_571 = null;
         var _loc7_:Boolean = false;
         var _loc8_:IEventModule = null;
         var _loc9_:IEventModule = null;
         var _loc3_:int = param2.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param2[_loc4_];
            _loc6_ = _loc5_.name_5;
            _loc7_ = false;
            for each(_loc8_ in param1.modules)
            {
               if(_loc8_.getModuleId() != _loc6_.name_5 || _loc8_.getUniqueId() != _loc6_.var_305)
               {
                  continue;
               }
               Main.LOG.warn(this + ": module \'" + _loc6_.name_5 + "\' with unique-id \'" + _loc6_.var_305 + "\' for event \'" + _loc5_.var_86 + "\' already exists");
               _loc7_ = true;
               break;
            }
            if(!_loc7_)
            {
               _loc9_ = EventModuleFactory.create(_loc6_.name_5);
               _loc9_.init(param1.eventId,_loc5_.var_86,_loc6_.name_5,_loc6_.var_305,_loc5_.var_476);
               _loc9_.setMainEventType(param1.mainEventType);
               param1.modules.push(_loc9_);
            }
            _loc4_++;
         }
      }
      
      public final function method_425() : Vector.<EventVO>
      {
         var _loc2_:EventVO = null;
         var _loc1_:Vector.<EventVO> = new Vector.<EventVO>();
         for each(_loc2_ in this.var_1061)
         {
            if(_loc2_.modules.length > 0)
            {
               _loc1_.push(_loc2_);
            }
            else
            {
               Main.LOG.warn(this + ": no modules for main event type" + _loc2_.mainEventType);
            }
         }
         return _loc1_;
      }
      
      public final function method_54() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.var_1061)
         {
            delete this.var_1061[_loc1_];
         }
      }
   }
}
