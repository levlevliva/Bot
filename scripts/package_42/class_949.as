package package_42
{
   import flash.geom.Point;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_167.class_972;
   import package_36.class_947;
   import package_5.class_939;
   import spark.components.Label;
   
   public final class class_949 implements class_947
   {
      
      private static const const_424:Number = Math.sqrt(class_939.const_35 * class_939.const_35 * 0.25 + class_939.const_37 * class_939.const_37 * 0.25);
      
      private static const const_1394:Number = 0.01;
      
      private static const const_1156:Number = 1.0E-4;
       
      
      private var var_902:class_99;
      
      private var var_624:Boolean;
      
      private var var_1021:class_972;
      
      private var var_1520:Point;
      
      private var var_1111:int;
      
      private var var_1253:int;
      
      private var var_1633:int;
      
      private var var_1050:int;
      
      private var var_1887:Number;
      
      public function class_949(param1:class_99)
      {
         super();
         this.var_902 = param1;
         this.method_258 = false;
      }
      
      public function method_762(param1:class_972) : void
      {
         this.var_1021 = param1;
         this.var_1633 = -1;
         this.method_258 = true;
         this.var_902.method_627(this.var_1021.method_372(0));
         this.method_793(this.var_902.name_76);
      }
      
      public function method_64(param1:Boolean = false, param2:int = 0, param3:int = 0, param4:int = 0) : void
      {
         this.method_258 = false;
         this.var_902.method_771(param2,param3);
      }
      
      public function method_34(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc10_:* = false;
         if(false == this.method_258 || !this.var_1520 || this.var_1887 < const_1156)
         {
            return;
         }
         this.var_1111 = this.var_1111 + param1;
         this.method_258 = this.var_1111 < this.var_1253;
         if(false == this.method_258)
         {
            this.var_1111 = this.var_1253;
         }
         _loc2_ = this.var_1021.method_228;
         _loc3_ = this.var_1111 / this.var_1253;
         _loc4_ = int(this.var_1050 * _loc3_) - 1;
         var _loc5_:int = _loc2_ - this.var_1050 + _loc4_;
         var _loc6_:Point = _loc4_ < 0?this.var_1520:this.var_1021.method_372(_loc5_);
         var _loc7_:int = _loc6_.x;
         var _loc8_:int = _loc6_.y;
         var _loc9_:Point = this.var_1021.method_372(_loc5_ < _loc2_ - 1?int(_loc5_ + 1):int(_loc5_));
         _loc10_ = this.var_1633 != _loc5_;
         var _loc11_:Number = !!_loc10_?Number(0):Number(const_424 * (this.var_1050 * _loc3_ + _loc2_ - this.var_1050) % const_424 / const_424);
         if(_loc10_)
         {
            this.var_902.method_627(_loc9_);
            this.var_1633 = _loc5_;
         }
         var _loc12_:Point = this.var_902.method_646();
         _loc12_.x = _loc7_ + int((_loc9_.x - _loc7_) * _loc11_);
         _loc12_.y = _loc8_ + int((_loc9_.y - _loc8_) * _loc11_);
      }
      
      public function method_793(param1:Number) : void
      {
         this.var_1887 = param1;
         if(false == this.var_624 || this.var_1887 < const_1156)
         {
            return;
         }
         this.var_1050 = this.var_1021.method_228 - (this.var_1633 + 1);
         this.var_1253 = this.var_1050 / (param1 * const_1394) * 1000;
         this.var_1520 = this.var_902.method_646().clone();
         this.var_1111 = 0;
      }
      
      public function get method_840() : Boolean
      {
         return this.var_624;
      }
      
      public function get method_258() : Boolean
      {
         return this.var_624;
      }
      
      public function set method_258(param1:Boolean) : void
      {
         this.var_624 = param1;
      }
   }
}
