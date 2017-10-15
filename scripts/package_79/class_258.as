package package_79
{
   import com.bigpoint.seafight.model.vo.class_1048;
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.GrayActionButton;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.mateysmenu.component.itemrenderers.MateyIdItemRenderer;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.socketing.InvalidTargetReason;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import org.osflash.signals.ISlot;
   import org.osflash.signals.SlotList;
   import package_14.class_47;
   import package_15.class_273;
   import package_15.class_78;
   import package_177.class_1049;
   import package_177.class_1107;
   import package_177.class_1108;
   import package_177.class_1109;
   import package_177.class_1110;
   import package_177.class_1111;
   import package_194.class_1183;
   import package_20.class_33;
   import package_205.class_1353;
   import package_210.class_1527;
   import package_46.class_1356;
   import package_49.class_137;
   import package_5.class_1047;
   import package_5.class_939;
   import package_51.class_1355;
   import package_72.class_1442;
   import package_8.class_1315;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Rect;
   
   public final class class_258 extends class_78
   {
       
      
      private var var_892:class_1183;
      
      private var var_1921:int;
      
      public function class_258(param1:class_273, param2:int)
      {
         super();
         this.var_892 = param1.method_1787(param2);
         this.var_1921 = param2;
         method_35(this.var_892);
      }
      
      override protected function method_1182() : Object
      {
         return this.var_892.name_8.name_9;
      }
      
      public function get method_1360() : int
      {
         return this.var_892.name_8.name_7;
      }
      
      public function get method_1366() : Vector.<class_137>
      {
         if(!this.var_892.name_8)
         {
            return new Vector.<class_137>();
         }
         return this.var_892.name_8.name_9;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_892);
         this.var_892.method_36();
      }
   }
}
