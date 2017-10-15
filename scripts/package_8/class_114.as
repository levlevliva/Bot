package package_8
{
   import com.bigpoint.seafight.model.vo.class_1372;
   import com.bigpoint.seafight.model.vo.class_983;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.calendar.component.target;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.event.modules.common.RankingList;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ToolTipEvent;
   import net.bigpoint.seafight.com.module.event.class_616;
   import net.bigpoint.seafight.com.module.gems.class_593;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.gems.class_772;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import package_121.class_424;
   import package_121.class_841;
   import package_136.class_926;
   import package_14.class_225;
   import package_14.class_47;
   import package_14.class_96;
   import package_15.class_48;
   import package_158.class_703;
   import package_158.class_728;
   import package_2.class_9;
   import package_20.class_982;
   import package_34.class_107;
   import package_34.class_1499;
   import package_36.class_100;
   import package_41.class_93;
   import package_43.class_106;
   import package_46.*;
   import package_49.class_140;
   import package_5.class_123;
   import package_5.class_133;
   import package_5.class_22;
   import package_5.class_43;
   import package_52.class_168;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.ToggleButton;
   import spark.components.VGroup;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_114 extends class_113
   {
      
      public static const const_920:int = method_40();
      
      public static const const_624:int = method_40();
      
      private static var name_12:class_114;
       
      
      private var var_491:class_106;
      
      private var var_2426:Vector.<class_841>;
      
      private var var_2035:Vector.<class_616>;
      
      public function class_114()
      {
         super();
         this.var_491 = class_48.name_3.var_491;
      }
      
      public static function get name_3() : class_114
      {
         if(name_12 == null)
         {
            name_12 = new class_114();
         }
         return name_12;
      }
      
      public final function method_2506(param1:class_106) : void
      {
         class_225.name_36 = param1.name_8.gold;
         class_225.name_32 = param1.name_8.real;
         class_225.var_2500 = param1.name_8.mojos;
         class_225.name_84 = param1.name_8.crowns;
         method_34(const_920);
      }
      
      public final function method_1875(param1:class_424) : void
      {
         this.var_2426 = param1.var_77;
         this.var_2035 = param1.var_751;
         method_34(const_624);
      }
      
      public final function method_2385() : Vector.<class_841>
      {
         return this.var_2426;
      }
      
      public final function method_2669() : Vector.<class_616>
      {
         return this.var_2035;
      }
      
      public final function method_2944(param1:int) : int
      {
         var _loc2_:class_616 = null;
         for each(_loc2_ in this.var_2035)
         {
            if(_loc2_.var_542 == param1)
            {
               return _loc2_.var_10;
            }
         }
         return 0;
      }
      
      public final function method_196(param1:int) : Number
      {
         return this.var_491.name_8.getCurrencyAmount(param1);
      }
      
      public final function name_70(param1:class_983) : Boolean
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         for(_loc2_ in param1.var_77)
         {
            _loc3_ = _loc2_ as int;
            if(this.var_491.name_8.getCurrencyAmount(_loc3_) < param1.method_156(_loc3_))
            {
               return false;
            }
         }
         return true;
      }
   }
}
