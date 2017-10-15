package package_74
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.tools.GemTools;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.gempopup.vo.GemConfigTabVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemLevelsVo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.gems.class_719;
   import net.bigpoint.seafight.com.module.gems.class_892;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_15.class_273;
   import package_15.class_78;
   import package_165.class_952;
   import package_41.class_93;
   import package_46.class_1455;
   import package_5.class_22;
   import package_5.class_945;
   import package_80.class_1184;
   import package_80.class_1185;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public final class class_259 extends class_78
   {
       
      
      private var var_66:class_273;
      
      private var var_1490:class_236;
      
      private var var_709:class_1184;
      
      private var var_1200:class_1185;
      
      public function class_259(param1:class_236, param2:class_273, param3:int)
      {
         super();
         this.var_66 = param2;
         method_35(this.var_1490 = param1);
         method_35(this.var_1200 = param2.method_2371(param3));
      }
      
      override protected function method_1182() : Object
      {
         var _loc5_:GemItemVo = null;
         var _loc6_:class_599 = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc1_:class_719 = this.var_1200.name_8;
         if(!_loc1_)
         {
            return null;
         }
         if(!this.var_709)
         {
            _loc7_ = _loc1_.var_114;
            _loc8_ = _loc1_.var_54;
            method_35(this.var_709 = this.var_66.method_2313(_loc7_,_loc8_));
         }
         var _loc2_:Dictionary = this.var_1490.method_177();
         var _loc3_:class_892 = this.method_1443();
         if(!_loc2_ || !_loc3_)
         {
            return null;
         }
         var _loc4_:GemConfigTabVo = new GemConfigTabVo();
         for each(_loc5_ in _loc2_)
         {
            _loc4_.inventory[_loc5_.getId()] = _loc5_;
         }
         _loc2_ = _loc4_.inventory;
         for each(_loc6_ in _loc3_.var_82)
         {
            _loc9_ = _loc6_.var_97;
            _loc4_.equipped[_loc6_.var_119] = GemItemVo.create(_loc9_);
            _loc5_ = !!_loc2_.hasOwnProperty(_loc9_)?_loc2_[_loc9_] as GemItemVo:GemItemVo.create(_loc9_);
            _loc5_.plain = false;
            _loc2_[_loc9_] = _loc5_;
         }
         _loc4_.levels.levels = GemTools.getGemLevels(_loc2_);
         _loc4_.levels.optionAll = true;
         return _loc4_;
      }
      
      public final function method_3004() : class_236
      {
         return this.var_1490;
      }
      
      public final function method_177() : Dictionary
      {
         var _loc1_:GemConfigTabVo = method_38() as GemConfigTabVo;
         return !!_loc1_?_loc1_.inventory:null;
      }
      
      public final function method_766(param1:int) : void
      {
         this.var_709.method_766(param1);
      }
      
      public final function method_2351() : int
      {
         return this.var_1200.name_8 && this.var_709.name_8?int(this.var_709.name_8.var_54):0;
      }
      
      public final function method_1443() : class_892
      {
         return this.var_709.name_8;
      }
      
      public final function method_496() : Dictionary
      {
         var _loc1_:GemConfigTabVo = method_38() as GemConfigTabVo;
         return !!_loc1_?_loc1_.equipped:null;
      }
      
      public final function method_943() : GemLevelsVo
      {
         var _loc1_:GemConfigTabVo = method_38() as GemConfigTabVo;
         return !!_loc1_?_loc1_.levels:null;
      }
      
      override public function method_36() : void
      {
         if(this.var_709)
         {
            method_43(this.var_709);
            this.var_709.method_36();
         }
         method_43(this.var_1490);
         method_43(this.var_1200);
         this.var_1200.method_36();
      }
   }
}
