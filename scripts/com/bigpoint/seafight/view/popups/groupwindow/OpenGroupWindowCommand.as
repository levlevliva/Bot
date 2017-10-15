package com.bigpoint.seafight.view.popups.groupwindow
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.dragging.DragDropEvent;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.MinimizeLockWindow;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.SimpleThinResizableWindowSkin;
   import com.bigpoint.services.statelessCommands.IStatelessCMD;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.ToolTipEvent;
   import package_10.class_18;
   import package_10.class_38;
   import package_14.class_47;
   import package_140.class_985;
   import package_20.class_33;
   import package_32.class_64;
   import package_46.class_1224;
   import package_5.class_123;
   import package_51.class_974;
   import package_54.class_163;
   import package_55.class_1007;
   import package_69.class_978;
   import spark.components.HGroup;
   import spark.components.TitleWindow;
   
   public final class OpenGroupWindowCommand implements IStatelessCMD
   {
      
      private static const ID:String = "GroupWindow";
       
      
      public function OpenGroupWindowCommand()
      {
         super();
      }
      
      public function execute(param1:Object = null) : void
      {
         var _loc2_:TitleWindow = class_33.name_12.method_41.method_45(ID);
         if(_loc2_)
         {
            return;
         }
         class_38.method_173(class_18.const_898,{"val":class_985.const_642});
         var _loc3_:class_332 = new class_332(class_332.const_12);
         _loc3_.var_27 = GroupWindow;
         _loc3_.var_51 = MinimizeLockWindow;
         _loc3_.var_74 = SimpleThinResizableWindowSkin;
         _loc3_.var_28 = GroupWindowController;
         _loc3_.var_72 = false;
         _loc3_.var_67 = ID;
         CentralEventUnit.dispatchEvent(new class_974(class_974.const_7,_loc3_));
      }
   }
}
