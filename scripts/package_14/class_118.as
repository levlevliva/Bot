package package_14
{
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.model.vo.class_317;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.component.tooltips.BoardingInfoTooltipListItemSubItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IDraggableAmountItem;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotAmountItemVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.ISlotDragDropTarget;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.HRule;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IUIComponent;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_114.class_551;
   import package_166.class_970;
   import package_170.class_979;
   import package_174.class_1373;
   import package_26.class_1354;
   import package_49.class_137;
   import package_5.class_22;
   import package_50.class_141;
   import package_54.class_158;
   import package_69.class_978;
   import package_92.class_1278;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public final class class_118
   {
       
      
      public function class_118()
      {
         super();
      }
      
      public static function method_436(param1:int, param2:int) : Array
      {
         var _loc3_:Array = method_1474(param1,param2);
         var _loc4_:String = String.fromCharCode(65 + Math.floor(_loc3_[1] / 26));
         var _loc5_:String = String.fromCharCode(65 + Math.floor(_loc3_[1] % 26));
         var _loc6_:String = "" + _loc3_[0];
         return [_loc6_,_loc4_ + _loc5_];
      }
      
      public static function method_2349(param1:int, param2:int) : String
      {
         var _loc3_:Array = method_436(param1,param2);
         return _loc3_[0] + _loc3_[1];
      }
      
      public static function method_1474(param1:Number, param2:Number) : Array
      {
         var _loc3_:Array = new Array();
         _loc3_[0] = Math.round((param1 + param2) / 10);
         _loc3_[1] = Math.round((param1 - param2) / 10);
         return _loc3_;
      }
      
      private static function method_1306(param1:String) : int
      {
         if(param1 == null || param1.length != 2)
         {
            return 0;
         }
         var _loc2_:String = param1.toUpperCase();
         if(_loc2_ == "AA")
         {
            _loc2_ = "AB";
         }
         if(_loc2_ == "CI")
         {
            _loc2_ = "CH";
         }
         var _loc3_:int = _loc2_.charCodeAt(0);
         var _loc4_:int = _loc2_.charCodeAt(1);
         var _loc5_:int = Math.min(25,Math.max(0,_loc3_ - 65)) * 26 + Math.min(25,Math.max(0,_loc4_ - 65));
         return _loc5_;
      }
      
      public static function method_2381(param1:String, param2:String) : Array
      {
         var _loc3_:int = parseInt(param1);
         if(_loc3_ < 1)
         {
            _loc3_ = 1;
         }
         else if(_loc3_ >= 60)
         {
            _loc3_ = 59;
         }
         var _loc4_:int = method_1306(param2);
         return method_1008(_loc3_,_loc4_);
      }
      
      public static function method_1008(param1:int, param2:int) : Array
      {
         return [Math.round((param1 + param2) / 2 * 10),Math.round((param1 - param2) / 2 * 10)];
      }
      
      public static function method_1336(param1:int, param2:int) : String
      {
         var _loc3_:String = "" + param1;
         var _loc4_:int = param2 - _loc3_.length;
         var _loc5_:* = "";
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            _loc5_ = _loc5_ + "0";
            _loc6_++;
         }
         _loc3_ = _loc5_ + _loc3_;
         return _loc3_;
      }
   }
}
