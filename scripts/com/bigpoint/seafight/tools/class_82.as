package com.bigpoint.seafight.tools
{
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleSlotVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.messageuserpopup.vo.MessageUserPopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenMessageUserWindow;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.seafight.com.module.useraction.class_1479;
   import package_104.class_448;
   import package_118.class_1445;
   import package_118.class_539;
   import package_14.class_47;
   import package_14.class_87;
   import package_17.class_322;
   import package_17.class_54;
   import package_34.class_1499;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1356;
   import package_54.class_163;
   import package_6.class_14;
   import package_69.class_978;
   import package_99.class_853;
   import package_99.class_889;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.gridClasses.GridColumn;
   import spark.events.TextOperationEvent;
   import spark.primitives.Rect;
   
   public final class class_82
   {
       
      
      private var var_1733:Array;
      
      private var var_1580:Vector.<class_84>;
      
      public function class_82()
      {
         super();
         this.var_1580 = new Vector.<class_84>();
         this.var_1733 = [];
      }
      
      public final function method_511(param1:class_84, param2:Object) : void
      {
         var _loc3_:Array = this.method_1427(param1.var_6);
         if(!_loc3_[param1.name_4])
         {
            this.var_1580.push(param1);
         }
         _loc3_[param1.name_4] = param2;
      }
      
      public final function method_124(param1:class_84) : Object
      {
         var _loc2_:Array = this.method_1427(param1.var_6);
         return _loc2_[param1.name_4];
      }
      
      private final function method_1427(param1:int) : Array
      {
         var _loc2_:Array = this.var_1733[param1];
         if(!_loc2_)
         {
            _loc2_ = this.var_1733[param1] = [];
         }
         return _loc2_;
      }
      
      public final function method_54() : void
      {
         this.var_1733.length = 0;
         this.var_1580.length = 0;
      }
      
      public function get name_82() : Vector.<class_84>
      {
         return this.var_1580;
      }
   }
}
