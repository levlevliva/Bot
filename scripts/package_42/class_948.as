package package_42
{
   import flash.geom.Point;
   import mx.binding.BindingManager;
   import package_167.class_972;
   import package_36.class_947;
   import package_5.class_939;
   import spark.effects.Rotate3D;
   
   public final class class_948 implements class_947
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
      
      private var var_938:Point;
      
      private var var_570:Point;
      
      private var var_956:Point;
      
      public function class_948(param1:class_99)
      {
         super();
         this.var_902 = param1;
         this.var_624 = false;
      }
      
      public function method_762(param1:class_972) : void
      {
         this.var_1021 = param1;
         this.var_1633 = -1;
         this.var_624 = true;
         this.var_902.method_627(this.var_1021.method_372(0));
         this.method_793(this.var_902.name_76);
      }
      
      private final function method_496(param1:Point, param2:Point) : Number
      {
         var _loc3_:Number = param1.x - param2.x;
         var _loc4_:Number = param1.y - param2.y;
         var _loc5_:Number = Math.atan2(_loc4_,_loc3_) * 180 / Math.PI;
         return Math.round(_loc5_);
      }
      
      public final function method_2405(param1:int, param2:Boolean = false) : Point
      {
         var _loc3_:Point = new Point(0,0);
         var _loc8_:Number = !!param2?Number(1):Number(0.125);
         var _loc9_:Number = !!param2?Number(0.125):Number(1);
         if(145 == param1)
         {
            _loc3_.x = _loc3_.x - class_939.const_35 * _loc8_;
            _loc3_.y = _loc3_.y + class_939.const_37 * _loc9_;
            return _loc3_;
         }
         if(35 == param1)
         {
            _loc3_.x = _loc3_.x + class_939.const_35 * _loc8_;
            _loc3_.y = _loc3_.y + class_939.const_37 * _loc9_;
            return _loc3_;
         }
         if(-145 == param1)
         {
            _loc3_.x = _loc3_.x - class_939.const_35 * _loc8_;
            _loc3_.y = _loc3_.y - class_939.const_37 * _loc9_;
            return _loc3_;
         }
         if(-35 == param1)
         {
            _loc3_.x = _loc3_.x + class_939.const_35 * _loc8_;
            _loc3_.y = _loc3_.y - class_939.const_37 * _loc9_;
            return _loc3_;
         }
         return _loc3_;
      }
      
      public function method_64(param1:Boolean = false, param2:int = 0, param3:int = 0, param4:int = 0) : void
      {
         this.var_624 = false;
         this.var_902.method_771(param2,param3);
      }
      
      public function method_34(param1:int) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc14_:Point = null;
         var _loc18_:Number = NaN;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = false;
         var _loc21_:int = 0;
         var _loc22_:Point = null;
         if(false == this.var_624 || !this.var_1520 || this.var_1887 < const_1156)
         {
            return;
         }
         this.var_1111 = this.var_1111 + param1;
         this.var_624 = this.var_1111 < this.var_1253;
         if(false == this.var_624)
         {
            this.var_1111 = this.var_1253;
         }
         _loc2_ = this.var_1111 / this.var_1253;
         _loc3_ = this.var_1021.method_228;
         _loc4_ = int(this.var_1050 * _loc2_) - 1;
         _loc5_ = _loc3_ - this.var_1050 + _loc4_;
         var _loc6_:* = this.var_1633 != _loc5_;
         var _loc7_:Point = _loc4_ < 0?this.var_1520:this.var_1021.method_372(_loc5_);
         var _loc8_:int = _loc7_.x;
         var _loc9_:int = _loc7_.y;
         if(!this.var_938)
         {
            this.var_938 = new Point(_loc8_,_loc9_);
         }
         var _loc10_:Point = new Point(_loc8_,_loc9_);
         var _loc11_:int = _loc3_ - 1 - _loc5_;
         var _loc12_:int = _loc11_ >= 2 && _loc5_ == -1?0:int(_loc5_);
         var _loc13_:Boolean = _loc12_ % 2 != 1?true:false;
         this.var_956 = this.var_1021.method_372(_loc5_ < _loc3_ - 1?int(_loc5_ + 1):int(_loc5_)).clone();
         if(_loc6_ || _loc5_ == -1)
         {
            if(!this.var_570)
            {
               this.var_570 = _loc10_;
            }
            this.var_938 = _loc4_ < 0?this.var_1520:this.var_570.clone();
         }
         if(_loc13_ && _loc11_ >= 2)
         {
            _loc14_ = this.var_1021.method_372(_loc5_ + 2).clone();
            _loc18_ = this.method_496(_loc10_,_loc14_);
            _loc19_ = _loc18_ == 0 || _loc18_ == 90 || _loc18_ == -90 || _loc18_ == 180;
            if(_loc10_ != _loc14_ && _loc19_)
            {
               _loc20_ = _loc18_ == 90 || _loc18_ == -90?true:false;
               _loc21_ = this.method_496(_loc10_,this.var_956);
               _loc22_ = this.method_2405(_loc21_,_loc20_);
               this.var_570 = this.var_956;
               this.var_570 = this.var_570.add(_loc22_);
            }
            else
            {
               this.var_570 = this.var_956;
            }
         }
         if(!_loc14_)
         {
            this.var_570 = this.var_956;
         }
         var _loc15_:Number = !!_loc6_?Number(0):Number(const_424 * (this.var_1050 * _loc2_ + _loc3_ - this.var_1050) % const_424 / const_424);
         if(_loc6_)
         {
            this.var_902.method_627(this.var_570);
            this.var_1633 = _loc5_;
         }
         var _loc16_:Point = this.var_902.method_1608();
         _loc16_.x = _loc8_ + int((this.var_956.x - _loc8_) * _loc15_);
         _loc16_.y = _loc9_ + int((this.var_956.y - _loc9_) * _loc15_);
         var _loc17_:Point = this.var_902.method_646();
         _loc17_.x = this.var_938.x + int((this.var_570.x - this.var_938.x) * _loc15_);
         _loc17_.y = this.var_938.y + int((this.var_570.y - this.var_938.y) * _loc15_);
      }
      
      public function method_793(param1:Number) : void
      {
         this.var_1887 = param1;
         if(false == this.var_624 || this.var_1887 < const_1156)
         {
            return;
         }
         this.var_1050 = this.var_1021.method_228 - (this.var_1633 + 1);
         this.var_1520 = this.var_902.method_646().clone();
         this.var_1253 = this.var_1050 / (param1 * const_1394) * 1000;
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
