package package_3
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleDragItemDelta;
   import com.bigpoint.seafight.view.popups.common.SearchTextInput;
   import com.bigpoint.seafight.view.userInterface.class_207;
   import flash.display.BitmapData;
   import flash.utils.Dictionary;
   import mx.binding.BindingManager;
   import package_114.class_1321;
   import package_114.class_406;
   import package_14.class_47;
   import package_14.class_51;
   import package_143.class_542;
   import package_143.class_933;
   import package_210.class_1527;
   import package_22.class_36;
   import package_6.class_14;
   import spark.components.Group;
   
   public final class class_512 extends class_10
   {
       
      
      public function class_512()
      {
         super();
         method_23(class_406.name_3,this.method_1824);
      }
      
      private final function method_1824(param1:class_14) : void
      {
         var _loc2_:class_406 = param1 as class_406;
         var _loc3_:class_207 = class_47.method_24.var_12.infoIconContainer;
         var _loc4_:int = _loc2_.var_22;
         switch(_loc2_.var_1077)
         {
            case class_1321.const_401:
               _loc3_.method_1391(_loc4_,_loc2_);
               break;
            case class_1321.const_641:
               _loc3_.method_2580(_loc4_);
               break;
            default:
               Main.LOG.error(this + ": invalid action type " + _loc2_.var_1077);
         }
      }
   }
}
