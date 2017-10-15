package package_56
{
   import com.bigpoint.seafight.model.vo.class_1265;
   import com.bigpoint.seafight.net.events.class_1255;
   import com.bigpoint.seafight.net.events.class_1256;
   import com.bigpoint.seafight.net.events.class_1258;
   import com.bigpoint.seafight.net.events.class_1266;
   import com.bigpoint.seafight.view.popups.common.table.TableSkinInnerClass1;
   import flash.events.IEventDispatcher;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.events.PropertyChangeEvent;
   import net.bigpoint.seafight.com.module.guild.class_400;
   import net.bigpoint.seafight.com.module.guild.class_474;
   import net.bigpoint.seafight.com.module.guild.class_489;
   import net.bigpoint.seafight.com.module.guild.class_524;
   import net.bigpoint.seafight.com.module.guild.class_678;
   import net.bigpoint.seafight.com.module.guild.class_758;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_130.class_480;
   import package_152.class_852;
   import package_3.class_10;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import spark.primitives.Rect;
   
   public final class class_520 extends class_10
   {
      
      private static var name_55:class_520;
       
      
      private var var_1641:int;
      
      public function class_520()
      {
         super();
         method_23(class_524.name_3,this.method_1733);
         method_23(class_489.name_3,this.method_1907);
         method_23(class_400.name_3,this.method_2748);
         method_23(class_474.name_3,this.method_2358);
         method_23(class_480.name_3,this.method_2136);
      }
      
      public static function get name_3() : class_520
      {
         if(null == name_55)
         {
            name_55 = new class_520();
         }
         return name_55;
      }
      
      private final function method_1733(param1:class_14) : void
      {
         var _loc4_:class_1265 = null;
         var _loc5_:class_758 = null;
         var _loc6_:class_678 = null;
         var _loc2_:class_524 = param1 as class_524;
         var _loc3_:Vector.<class_1265> = new Vector.<class_1265>();
         this.var_1641 = _loc2_.name_30;
         for each(_loc5_ in _loc2_.var_863)
         {
            _loc4_ = new class_1265();
            _loc4_.name_4 = _loc5_.var_310;
            _loc4_.name_6 = _loc5_.name_6;
            _loc4_.name_30 = this.var_1641;
            _loc4_.var_1209 = _loc5_.var_654;
            _loc3_.push(_loc4_);
         }
         for each(_loc6_ in _loc2_.var_821)
         {
            _loc4_ = new class_1265();
            _loc4_.name_4 = new class_84();
            _loc4_.name_4.name_4 = -1;
            _loc4_.var_61 = _loc6_.var_155.var_9;
            _loc4_.var_63 = _loc6_.var_155.var_8;
            _loc4_.name_10 = _loc6_.name_10;
            _loc4_.var_1209 = _loc6_.var_654;
            _loc4_.name_6 = _loc6_.name_6;
            _loc4_.name_30 = this.var_1641;
            _loc3_.push(_loc4_);
         }
         dispatchEvent(new class_1255(class_1255.const_1069,_loc3_,_loc2_,this.var_1641));
      }
      
      private final function method_1907(param1:class_14) : void
      {
         var _loc2_:class_489 = param1 as class_489;
         var _loc3_:class_1266 = new class_1266(class_1266.const_4);
         _loc3_.name_72 = _loc2_.name_6;
         _loc3_.name_10 = _loc2_.var_474;
         _loc3_.name_14 = 0;
         dispatchEvent(_loc3_);
      }
      
      private final function method_2748(param1:class_14) : void
      {
         var _loc2_:class_400 = param1 as class_400;
         var _loc3_:class_1256 = new class_1256(class_1256.const_1247);
         _loc3_.name_103 = _loc2_.var_164.var_9;
         _loc3_.name_102 = _loc2_.var_164.var_8;
         _loc3_.name_25 = _loc2_.name_25;
         dispatchEvent(_loc3_);
      }
      
      private final function method_2358(param1:class_14) : void
      {
         dispatchEvent(new class_1256(class_1256.const_1042));
      }
      
      private final function method_2136(param1:class_14) : void
      {
         var _loc2_:class_480 = param1 as class_480;
         var _loc3_:class_1258 = new class_1258(class_1258.const_1056);
         _loc3_.name_72 = _loc2_.name_6 - 1;
         _loc3_.method_604 = _loc2_.name_60;
         _loc3_.method_344 = int(_loc2_.var_1547);
         _loc3_.name_10 = _loc2_.name_10;
         dispatchEvent(_loc3_);
      }
   }
}
