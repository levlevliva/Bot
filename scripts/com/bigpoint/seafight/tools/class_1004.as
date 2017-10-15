package com.bigpoint.seafight.tools
{
   import com.bigpoint.seafight.model.vo.class_317;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.component.RolesList;
   import com.bigpoint.seafight.view.userInterface.class_19;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.CollectionEventKind;
   import mx.logging.Log;
   import package_11.class_20;
   import package_136.class_926;
   import package_14.class_47;
   import package_15.class_273;
   import package_56.class_368;
   import package_95.class_341;
   import package_98.class_346;
   import package_98.class_777;
   import spark.components.DataGroup;
   import spark.components.Label;
   
   public final class class_1004
   {
       
      
      public function class_1004()
      {
         super();
      }
      
      public static function method_1039(param1:DisplayObject) : void
      {
         var _loc2_:uint = 0;
         if(param1.parent != null)
         {
            _loc2_ = param1.parent.numChildren - 1;
            param1.parent.setChildIndex(param1,_loc2_);
         }
      }
   }
}
