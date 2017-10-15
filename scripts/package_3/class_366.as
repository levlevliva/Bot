package package_3
{
   import com.bigpoint.seafight.model.vo.class_1037;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.IDragDropMoveCommand;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemsInventoryGroup;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.target;
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.bitmapclip.BitmapClip;
   import net.bigpoint.seafight.com.module.gems.class_584;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import package_125.class_442;
   import package_125.class_497;
   import package_14.class_47;
   import package_14.class_88;
   import package_185.class_1136;
   import package_41.class_93;
   import package_43.class_105;
   import package_50.class_141;
   import package_58.class_175;
   import package_6.class_14;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_366 extends class_10
   {
       
      
      public function class_366()
      {
         super();
         this.name_16();
      }
      
      private final function name_16() : void
      {
         method_23(class_497.name_3,this.onMonsterInitMessage);
         method_23(class_442.name_3,this.method_2142);
      }
      
      private final function method_2142(param1:class_14) : void
      {
         var _loc2_:class_442 = param1 as class_442;
         var _loc3_:class_175 = class_47.method_165.method_268(_loc2_.name_4.name_4);
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.suicide(false);
         class_47.method_165.method_2027(_loc2_.name_4.name_4);
      }
      
      private final function onMonsterInitMessage(param1:class_14) : void
      {
         var _loc2_:class_497 = param1 as class_497;
         var _loc3_:class_1037 = new class_1037();
         _loc3_.name_4 = _loc2_.name_4;
         _loc3_.var_1734 = _loc2_.var_494;
         _loc3_.name_5 = _loc2_.name_5;
         _loc3_.var_2459 = _loc2_.var_34;
         _loc3_.var_61 = _loc2_.name_6.var_9;
         _loc3_.var_63 = _loc2_.name_6.var_8;
         _loc3_.var_44 = class_47.method_37.method_32(class_88.const_258,_loc2_.var_515.toString());
         _loc3_.var_101 = _loc2_.var_116;
         _loc3_.var_182 = _loc2_.var_165;
         _loc3_.var_383 = _loc2_.var_117;
         var _loc4_:class_175 = class_47.method_165.method_268(_loc3_.name_4.name_4);
         if(_loc4_ == null)
         {
            _loc4_ = class_47.method_165.method_2374(_loc3_);
         }
      }
   }
}
