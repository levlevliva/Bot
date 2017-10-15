package package_74
{
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.gems.class_816;
   import net.bigpoint.seafight.com.module.gems.class_883;
   import package_14.class_47;
   import package_15.class_273;
   import package_15.class_78;
   import package_167.class_972;
   import package_41.class_84;
   import package_80.class_1139;
   import spark.components.Group;
   
   public final class class_236 extends class_78
   {
       
      
      private var var_2275:class_1139;
      
      public function class_236(param1:class_273, param2:int)
      {
         super();
         method_35(this.var_2275 = param1.method_2106(param2));
      }
      
      override protected function method_1182() : Object
      {
         var _loc3_:GemItemVo = null;
         var _loc5_:class_883 = null;
         var _loc6_:int = 0;
         var _loc1_:class_816 = this.var_2275.name_8;
         if(_loc1_ == null)
         {
            return null;
         }
         var _loc2_:Dictionary = new Dictionary();
         var _loc4_:Vector.<class_883> = _loc1_.var_82;
         for each(_loc5_ in _loc4_)
         {
            _loc6_ = _loc5_.var_13;
            _loc3_ = !!_loc2_.hasOwnProperty(_loc6_)?_loc2_[_loc6_] as GemItemVo:_loc2_[_loc6_] = GemItemVo.create(_loc6_);
            _loc3_.plain = false;
            _loc3_.amount = _loc5_.var_10;
            _loc2_[_loc6_] = _loc3_;
         }
         return _loc2_;
      }
      
      public final function method_177() : Dictionary
      {
         return method_38() as Dictionary;
      }
      
      public final function method_929(param1:int) : GemItemVo
      {
         var _loc2_:Dictionary = this.method_177();
         return !!_loc2_?_loc2_[param1] as GemItemVo:null;
      }
   }
}
