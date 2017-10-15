package package_14
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.vo.class_1048;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoThumbBtnSkin;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.common.AmsValuePair;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.StatisticItemVo;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.AddItems;
   import mx.states.SetStyle;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import package_104.class_641;
   import package_111.class_741;
   import package_111.class_774;
   import package_139.class_532;
   import package_177.class_1049;
   import package_177.class_1107;
   import package_177.class_1108;
   import package_177.class_1109;
   import package_177.class_1110;
   import package_177.class_1111;
   import package_34.class_117;
   import package_34.class_1526;
   import package_42.class_1106;
   import package_5.class_1047;
   import package_6.class_14;
   import package_7.class_15;
   import spark.components.Button;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.gridClasses.GridLayer;
   import spark.primitives.Rect;
   
   public final class class_227
   {
       
      
      private var var_597:Dictionary;
      
      private var var_2042:Vector.<class_1106>;
      
      public function class_227()
      {
         this.var_597 = new Dictionary();
         this.var_2042 = new Vector.<class_1106>();
         super();
         class_58.method_21().method_82("init item manager");
      }
      
      public final function method_491() : void
      {
         var _loc1_:class_1049 = null;
         for each(_loc1_ in this.var_597)
         {
            _loc1_.suicide(false);
         }
         this.var_597 = new Dictionary();
      }
      
      public final function method_790(param1:class_1048) : class_1049
      {
         var _loc2_:class_1049 = null;
         var _loc3_:String = null;
         var _loc4_:class_1049 = null;
         switch(param1.var_586)
         {
            case class_1047.const_335:
               _loc2_ = new class_1111(param1);
               break;
            case class_1047.const_483:
            case class_1047.const_1370:
               param1.var_240 = !!param1.name_78?int(class_209.const_794):int(class_209.const_76);
               _loc2_ = new class_1049(param1,2);
               break;
            case class_1047.const_339:
               _loc2_ = new class_1049(param1,3);
               break;
            case class_1047.const_256:
               _loc2_ = new class_1108(param1);
               break;
            case class_1047.const_485:
            case class_1047.const_1146:
            case class_1047.const_1271:
               param1.var_240 = !!param1.name_78?int(class_209.const_794):int(class_209.const_76);
               _loc2_ = new class_1049(param1);
               break;
            case class_1047.const_466:
            case class_1047.const_498:
               _loc2_ = new class_1110(param1);
               break;
            case class_1047.const_425:
               param1.var_240 = class_209.const_76;
               _loc2_ = new class_1109(param1);
               break;
            case class_1047.const_1727:
               _loc2_ = new class_1107(param1);
               break;
            default:
               _loc2_ = new class_1049(param1);
         }
         if(param1.name_4)
         {
            this.var_597[param1.name_4.name_4] = _loc2_;
         }
         else
         {
            _loc3_ = param1.var_61 + "x" + param1.var_63;
            _loc4_ = this.var_597[_loc3_];
            if(_loc4_)
            {
               _loc4_.suicide(false);
            }
            this.var_597[_loc3_] = _loc2_;
         }
         return _loc2_;
      }
      
      public final function method_2480(param1:int) : void
      {
         delete this.var_597[param1];
      }
      
      public final function method_2006(param1:String) : void
      {
         delete this.var_597[param1];
      }
      
      public final function method_321(param1:int) : class_1049
      {
         return this.var_597[param1];
      }
      
      public final function method_1137() : Dictionary
      {
         return this.var_597;
      }
      
      public function get method_2617() : Vector.<class_1106>
      {
         return this.var_2042;
      }
      
      public function set method_2617(param1:Vector.<class_1106>) : void
      {
         this.var_2042 = param1;
      }
   }
}
