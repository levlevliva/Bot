package package_52
{
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_317;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.greensock.events.TweenEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.StyleSheet;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_94;
   import package_5.class_214;
   import package_5.class_43;
   import package_54.class_319;
   import package_56.class_368;
   
   public final class class_306 extends class_167
   {
      
      private static const const_2:String = "actItm_";
       
      
      public function class_306()
      {
         super();
      }
      
      override public function init(param1:XML, param2:StyleSheet, param3:SWFFinisher, param4:UserInterface) : void
      {
         super.init(param1,param2,param3,param4);
         class_368.name_3.addEventListener(class_223.const_581,this.method_2297);
         var_37 = class_43.const_1020;
         var_46 = class_43.const_1041;
      }
      
      public final function method_34() : void
      {
         this.method_1630();
      }
      
      private final function method_2297(param1:class_223) : void
      {
         var _loc5_:class_319 = null;
         var _loc6_:class_317 = null;
         var _loc7_:int = 0;
         var _loc2_:int = param1.name_7;
         var _loc3_:int = var_100.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = var_100[_loc4_];
            if(_loc5_.method_58().name_7 == _loc2_)
            {
               _loc6_ = class_368.name_9[_loc2_] as class_317;
               _loc7_ = _loc6_.var_10;
               _loc5_.method_255(!!_loc6_.method_396?-1:int(_loc7_));
               _loc5_.name_26 = (_loc7_ > 0 || _loc6_.var_353) && _loc5_.method_58().var_895;
               _loc5_.visible = _loc5_.name_26;
               if(false == _loc5_.visible)
               {
                  method_91();
               }
               return;
            }
            _loc4_++;
         }
      }
      
      override protected function method_1630() : void
      {
         var _loc4_:class_319 = null;
         var _loc5_:int = 0;
         var _loc6_:class_317 = null;
         var _loc7_:int = 0;
         var _loc8_:Boolean = false;
         var _loc1_:Array = class_368.name_9;
         var _loc2_:int = var_100.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = var_100[_loc3_];
            _loc5_ = _loc4_.method_58().name_7;
            _loc6_ = _loc1_[_loc5_] as class_317;
            _loc7_ = _loc6_ != null?int(_loc6_.var_10):0;
            _loc4_.method_255(_loc6_ && _loc6_.method_396?-1:int(_loc7_));
            if(_loc4_.var_1128 == null)
            {
               _loc4_.var_1128 = const_2 + _loc5_;
               _loc4_.method_289(method_118(class_88.const_153,_loc5_) + var_112.method_20(_loc4_.var_1128));
            }
            _loc8_ = !!_loc6_?Boolean(_loc6_.var_353):false;
            _loc4_.name_26 = (_loc7_ > 0 || _loc8_) && _loc4_.method_58().var_895;
            _loc4_.visible = _loc4_.name_26;
            _loc3_++;
         }
         method_91();
      }
      
      override protected function method_275(param1:XML) : void
      {
         super.method_275(param1);
         var_629[class_206.const_218 + "_" + param1.@id] = class_214.const_23;
      }
      
      override protected function method_2521(param1:int) : String
      {
         return class_47.method_108.method_121(class_94.const_244,param1.toString());
      }
      
      override public function method_189(param1:MouseEvent) : void
      {
         super.method_189(param1);
         class_47.method_24.var_12.actionsBar.method_69(class_150.const_128).method_70(false);
      }
   }
}
