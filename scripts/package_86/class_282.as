package package_86
{
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.class_1302;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.ThinWindowBorder;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.tabs.target;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.states.AddItems;
   import mx.states.SetStyle;
   import mx.states.State;
   import package_14.class_47;
   import package_15.class_273;
   import package_15.class_78;
   import package_152.class_801;
   import package_194.class_1219;
   import package_194.class_1226;
   import package_202.class_1301;
   import package_214.class_1559;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_49.class_880;
   import spark.components.VGroup;
   import spark.filters.GlowFilter;
   import spark.primitives.Ellipse;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_282 extends class_78
   {
       
      
      private var var_66:class_273;
      
      private var var_1484:class_1219;
      
      public function class_282(param1:class_273)
      {
         super();
         this.var_66 = param1;
         this.var_1484 = this.var_66.method_1748();
      }
      
      override protected function method_1182() : Object
      {
         return this.var_1484;
      }
      
      public final function method_1770(param1:int) : class_880
      {
         var _loc2_:* = !this.var_1484.method_2390(param1);
         var _loc3_:class_1226 = this.var_1484.method_457(param1);
         if(_loc2_)
         {
            method_35(_loc3_);
         }
         return !!_loc3_.name_8?_loc3_.name_8.var_339:null;
      }
   }
}
