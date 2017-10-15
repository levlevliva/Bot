package package_43
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.VRule;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowBoosterItem;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.table.ListSkinForOnePixelLines;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.spymenu.vo.SpyUserStatsItemRendererVo;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.events.CloseEvent;
   import net.bigpoint.seafight.com.module.ship.class_782;
   import package_11.class_130;
   import package_14.class_47;
   import package_15.class_273;
   import package_15.class_78;
   import package_180.class_1074;
   import package_180.class_1076;
   import package_180.class_1077;
   import package_180.class_1078;
   import package_187.class_1182;
   import package_190.class_1181;
   import package_41.class_84;
   import package_42.class_98;
   import package_47.class_128;
   import package_47.class_135;
   import package_47.class_930;
   import package_72.class_1071;
   import package_72.class_1075;
   import package_8.class_1079;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   
   public final class class_257 extends class_78
   {
       
      
      private var var_1080:class_1182;
      
      public function class_257(param1:class_273, param2:class_84, param3:int)
      {
         super();
         this.var_1080 = param1.method_1625(param2,param3);
         method_35(this.var_1080);
      }
      
      override protected function method_1182() : Object
      {
         var _loc2_:Vector.<class_782> = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:class_782 = null;
         var _loc6_:SpyUserStatsItemRendererVo = null;
         var _loc1_:Array = [];
         if(this.var_1080.name_8)
         {
            _loc2_ = this.var_1080.name_8.var_735;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = _loc2_[_loc4_];
               _loc6_ = new SpyUserStatsItemRendererVo(_loc5_.name_5,class_1181.method_202(_loc5_.name_19,_loc5_.var_109,_loc5_.name_5));
               _loc1_.push(_loc6_);
               _loc4_++;
            }
         }
         return _loc1_;
      }
      
      public function get name_8() : Array
      {
         return method_38() as Array;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_1080);
         this.var_1080.method_36();
      }
   }
}
