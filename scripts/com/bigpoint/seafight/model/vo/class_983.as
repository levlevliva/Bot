package com.bigpoint.seafight.model.vo
{
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.colorspopup.OpenGuildColorsPopupCommand;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRelationsListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import mx.collections.ArrayList;
   import mx.events.ToolTipEvent;
   import package_104.class_989;
   import package_14.class_47;
   import package_14.class_49;
   import package_170.class_979;
   import package_34.class_1272;
   import package_34.class_1499;
   import package_41.class_103;
   import package_54.class_162;
   
   public final class class_983
   {
       
      
      public var var_77:Dictionary;
      
      public function class_983()
      {
         this.var_77 = new Dictionary();
         super();
      }
      
      public static function method_1139(... rest) : class_983
      {
         var _loc3_:class_983 = null;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc2_:class_983 = new class_983();
         for each(_loc3_ in rest)
         {
            for(_loc4_ in _loc3_.var_77)
            {
               _loc5_ = _loc4_ as int;
               _loc2_.method_337(_loc5_,_loc2_.method_156(_loc5_) + _loc3_.method_156(_loc5_));
            }
         }
         return _loc2_;
      }
      
      public function get name_39() : Number
      {
         return this.method_156(class_103.name_32);
      }
      
      public function get name_40() : Number
      {
         return this.method_156(class_103.name_36);
      }
      
      public function set name_39(param1:Number) : void
      {
         this.method_337(class_103.name_32,param1);
      }
      
      public function set name_40(param1:Number) : void
      {
         this.method_337(class_103.name_36,param1);
      }
      
      public function get method_2009() : Boolean
      {
         var _loc1_:Number = NaN;
         for each(_loc1_ in this.var_77)
         {
            if(_loc1_ > 0)
            {
               return false;
            }
         }
         return true;
      }
      
      public final function method_156(param1:int) : Number
      {
         return !!this.var_77[param1]?Number(this.var_77[param1]):Number(0);
      }
      
      public final function method_337(param1:int, param2:Number) : Number
      {
         return this.var_77[param1] = param2;
      }
   }
}
