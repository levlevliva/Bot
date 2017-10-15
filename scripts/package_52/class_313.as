package package_52
{
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_317;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import flash.events.MouseEvent;
   import flash.text.StyleSheet;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_14.class_88;
   import package_14.class_94;
   import package_17.class_151;
   import package_5.class_214;
   import package_5.class_43;
   import package_51.class_1005;
   import package_54.class_319;
   import package_56.class_368;
   import package_90.class_316;
   
   public final class class_313 extends class_167
   {
       
      
      public function class_313()
      {
         super();
      }
      
      override public function init(param1:XML, param2:StyleSheet, param3:SWFFinisher, param4:UserInterface) : void
      {
         super.init(param1,param2,param3,param4);
         class_368.name_3.addEventListener(class_223.const_860,this.method_1076);
         class_368.name_3.addEventListener(class_223.const_581,this.method_2297);
         var_37 = class_43.const_1005;
         var_46 = class_43.const_1061;
      }
      
      private final function method_1076(param1:class_223) : void
      {
         this.method_1630();
      }
      
      private final function method_2297(param1:class_223) : void
      {
         var _loc5_:class_319 = null;
         var _loc6_:class_316 = null;
         var _loc7_:int = 0;
         var _loc2_:int = param1.name_7;
         var _loc3_:int = var_100.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = var_100[_loc4_];
            if(_loc5_.method_58().name_7 == _loc2_)
            {
               _loc6_ = class_368.name_9[_loc2_] as class_316;
               _loc7_ = _loc6_.var_10;
               _loc5_.method_255(_loc7_);
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
      
      override protected function method_275(param1:XML) : void
      {
         super.method_275(param1);
         var _loc2_:int = param1.@id;
         var_629[class_206.const_26 + "_" + _loc2_] = class_214.const_26;
         var_629[class_206.const_218 + "_" + _loc2_] = class_214.const_26;
      }
      
      override protected function method_1630() : void
      {
         var _loc4_:class_319 = null;
         var _loc5_:int = 0;
         var _loc6_:class_316 = null;
         var _loc7_:int = 0;
         var _loc1_:Array = class_368.name_9;
         var _loc2_:int = var_100.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = var_100[_loc3_] as class_319;
            _loc5_ = _loc4_.method_58().name_7;
            _loc6_ = _loc1_[_loc5_] as class_316;
            _loc7_ = _loc6_ != null?int(_loc6_.var_10):0;
            _loc4_.method_255(_loc7_);
            _loc4_.method_289(method_118(class_88.const_153,_loc5_) + var_112.method_20("actItm_" + _loc5_));
            _loc4_.name_26 = _loc7_ > 0;
            _loc3_++;
         }
         method_91();
      }
      
      private final function getButton(param1:int) : class_319
      {
         var _loc2_:class_319 = null;
         for each(_loc2_ in var_100)
         {
            if(_loc2_.method_58().name_7 == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public final function method_1518(param1:Boolean, param2:int = -1) : void
      {
         var _loc6_:int = 0;
         var _loc7_:class_319 = null;
         var _loc3_:Boolean = class_151.method_764(param2);
         var _loc4_:* = param2 == class_317.const_732;
         var _loc5_:* = param2 == class_317.const_905;
         if(!_loc3_ && !_loc4_ && !_loc5_)
         {
            return;
         }
         if(param2 == -1)
         {
            _loc6_ = 0;
            while(_loc6_ < var_100.length)
            {
               _loc7_ = var_100[_loc6_] as class_319;
               if(!_loc7_.method_350)
               {
                  if(_loc7_.name_26 != param1)
                  {
                     _loc7_.method_123(param1);
                     _loc7_.name_26 = param1;
                  }
               }
               _loc6_++;
            }
            return;
         }
         if(this.getButton(param2).name_26 == param1)
         {
            return;
         }
         this.getButton(param2).name_26 = param1;
      }
      
      public final function method_2972(param1:String, param2:int, param3:int) : int
      {
         var _loc6_:class_319 = null;
         var _loc7_:class_320 = null;
         var _loc4_:int = var_100.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = var_100[_loc5_] as class_319;
            _loc7_ = _loc6_.method_58();
            if(_loc7_.name_7 == param2)
            {
               if(_loc7_.name_5 == param1)
               {
                  if(param3 == -1)
                  {
                     param3 = _loc6_.var_1529;
                  }
                  _loc6_.method_2081().method_66(param3);
                  _loc6_.addEventListener(class_1005.const_506,class_151.method_21().method_2323);
               }
            }
            _loc5_++;
         }
         return param3;
      }
      
      override protected function method_2521(param1:int) : String
      {
         return class_47.method_108.method_121(class_94.const_244,param1.toString());
      }
      
      override public function method_189(param1:MouseEvent) : void
      {
         super.method_189(param1);
         class_47.method_24.var_12.actionsBar.method_69(class_150.const_124).method_70(false);
      }
   }
}
