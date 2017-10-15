package package_75
{
   import com.bigpoint.seafight.tools.class_1020;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.event.modules.common.BulletText;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemsInventoryGroup;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.GuildIslandMenuOverviewTabVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.vo.LeagueMenuRewardsTabVo;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import mx.graphics.LinearGradient;
   import package_11.class_130;
   import package_11.class_131;
   import package_11.class_20;
   import package_111.class_859;
   import package_121.class_841;
   import package_14.class_47;
   import package_14.class_94;
   import package_15.class_273;
   import package_152.class_664;
   import package_154.class_677;
   import package_16.class_28;
   import package_171.class_1322;
   import package_198.class_1202;
   import package_198.class_1204;
   import package_198.class_1206;
   import package_198.class_1207;
   import package_198.class_1208;
   import package_198.class_1211;
   import package_198.class_1214;
   import package_198.class_1218;
   import package_20.class_33;
   import package_206.class_1569;
   import package_28.class_56;
   import package_47.class_124;
   import package_47.class_128;
   import package_47.class_129;
   import package_47.class_134;
   import package_47.class_135;
   import package_47.class_575;
   import package_47.class_643;
   import package_47.class_657;
   import package_47.class_757;
   import package_47.class_834;
   import package_47.class_881;
   import package_47.class_882;
   import package_47.class_930;
   import package_47.class_935;
   import package_48.class_138;
   import package_51.class_148;
   import package_67.class_192;
   import package_90.class_316;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VScrollBar;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_277 extends EventDispatcher
   {
       
      
      private var var_2069:class_1204;
      
      private var var_1194:class_1218;
      
      private var var_1556:class_1207;
      
      private var var_2116:class_1206;
      
      private var var_2120:class_1202;
      
      private var var_1811:class_1211;
      
      private var var_1909:class_1208;
      
      private var var_1862:class_1214;
      
      private var var_1664:Object;
      
      private var var_300:int;
      
      private var var_562:Vector.<int>;
      
      private var var_125:class_28;
      
      private var var_933:Array;
      
      private var var_1372:Vector.<class_930>;
      
      public function class_277(param1:class_273, param2:class_28)
      {
         super();
         this.var_125 = param2;
         this.var_125.addEventListener(class_56.const_51,this.method_1311);
         this.var_1664 = {};
         this.var_300 = -1;
         this.var_562 = new Vector.<int>();
         this.var_2069 = param1.var_2177;
         this.var_2069.addEventListener(Event.CHANGE,this.method_1672);
         this.var_1194 = param1.var_2380;
         this.var_1194.addEventListener(Event.CHANGE,this.method_2296);
         this.var_1556 = param1.var_2192;
         this.var_1556.addEventListener(Event.CHANGE,this.method_2149);
         this.var_2116 = param1.var_2367;
         this.var_2116.addEventListener(Event.CHANGE,this.method_2268);
         this.var_2120 = param1.var_2158;
         this.var_2120.addEventListener(Event.CHANGE,this.method_1922);
         this.var_1811 = param1.var_2252;
         this.var_1811.addEventListener(Event.CHANGE,this.method_2664);
         this.var_1909 = param1.var_2328;
         this.var_1909.addEventListener(Event.CHANGE,this.method_2523);
         this.var_1862 = param1.var_2301;
         this.var_1862.addEventListener(Event.CHANGE,this.method_2422);
         this.method_1307();
      }
      
      private final function method_1307() : void
      {
         this.var_933 = new Array();
         this.var_933[0] = new Array();
         this.var_933[1] = new Array();
      }
      
      private final function method_1311(param1:class_56) : void
      {
         class_33.name_12.method_465.method_724();
      }
      
      public final function method_2820() : void
      {
         var _loc2_:class_130 = null;
         var _loc1_:* = this.var_300 == -1;
         if(!_loc1_)
         {
            _loc2_ = this.method_199(this.var_300);
            _loc1_ = _loc2_.var_144 == null;
         }
         if(_loc1_)
         {
            this.var_1556.name_8;
         }
      }
      
      public final function method_1608() : String
      {
         var _loc1_:String = null;
         var _loc2_:class_130 = null;
         var _loc3_:int = 0;
         if(this.var_300 != -1)
         {
            _loc1_ = "";
            _loc2_ = this.method_199(this.var_300);
            for each(_loc3_ in this.var_562)
            {
               _loc1_ = _loc1_ + (class_20.name_3.method_1357(_loc2_,_loc3_,false) + "\n");
            }
            return _loc1_;
         }
         return class_47.method_22.method_28("noActiveQuest");
      }
      
      public final function method_2455() : class_130
      {
         if(this.var_300 != -1)
         {
            return this.method_199(this.var_300);
         }
         return null;
      }
      
      public final function method_1440() : void
      {
         this.var_1194.method_54();
         this.var_1194.name_8;
      }
      
      public final function method_1018(param1:int, param2:Boolean) : Array
      {
         var _loc6_:class_930 = null;
         var _loc7_:class_130 = null;
         var _loc3_:int = param1 + class_135.const_1493 * int(param2);
         var _loc4_:Array = this.var_933[0][_loc3_];
         if(_loc4_)
         {
            return _loc4_;
         }
         var _loc5_:Array = new Array();
         for each(_loc6_ in this.var_1372)
         {
            _loc7_ = this.method_199(_loc6_.name_7);
            if(!(!param2 && _loc7_.name_5 == class_135.const_219))
            {
               if((param1 == class_135.const_140 || _loc7_.name_5 == param1) && _loc7_.name_17 != class_128.const_1204)
               {
                  _loc5_.push(_loc7_);
               }
            }
         }
         _loc5_.sort(this.method_1156);
         this.var_933[0][_loc3_] = _loc5_;
         return _loc5_;
      }
      
      public final function method_2875() : class_130
      {
         var _loc1_:Array = this.method_1018(class_135.const_219,true);
         if(_loc1_.length == 1)
         {
            return _loc1_[0];
         }
         return null;
      }
      
      public final function method_2931(param1:Boolean, param2:Boolean) : Array
      {
         var _loc6_:class_930 = null;
         var _loc7_:class_130 = null;
         var _loc3_:int = int(param1) + 2 * int(param2);
         var _loc4_:Array = this.var_933[1][_loc3_];
         if(_loc4_)
         {
            return _loc4_;
         }
         var _loc5_:Array = new Array();
         for each(_loc6_ in this.var_1372)
         {
            _loc7_ = this.method_199(_loc6_.name_7);
            if(!(!param2 && _loc7_.name_5 == class_135.const_219))
            {
               if(param1 && (_loc7_.name_17 == class_128.const_276 || _loc7_.name_17 == class_128.const_78) || !param1 && _loc7_.name_17 == class_128.const_412)
               {
                  _loc5_.push(_loc7_);
               }
            }
         }
         _loc5_.sort(this.method_1156);
         this.var_933[1][_loc3_] = _loc5_;
         return _loc5_;
      }
      
      private final function method_1156(param1:class_130, param2:class_130) : int
      {
         if(param1.name_7 > param2.name_7)
         {
            return 1;
         }
         if(param1.name_7 < param2.name_7)
         {
            return -1;
         }
         return 0;
      }
      
      public final function method_2624(param1:int) : void
      {
         this.var_125.method_31(new class_935(class_935.const_1909,param1));
      }
      
      public final function method_1924(param1:int) : void
      {
         this.var_125.method_31(new class_935(class_935.const_1556,param1));
      }
      
      public final function method_2293(param1:int) : void
      {
         var _loc2_:class_130 = this.method_199(param1);
         _loc2_.var_90 = null;
         _loc2_.var_419 = null;
         _loc2_.var_144 = null;
         this.var_125.method_31(new class_935(class_935.const_1330,param1));
         this.var_300 = -1;
         this.var_562.length = 0;
         this.method_311(null);
      }
      
      public final function method_1749(param1:int) : void
      {
         this.var_125.method_31(new class_935(class_935.const_1903,param1));
      }
      
      public final function method_2040(param1:int) : void
      {
         this.var_125.method_31(new class_935(class_935.const_1381,param1));
      }
      
      private final function method_199(param1:int) : class_130
      {
         var _loc2_:class_130 = this.var_1664[param1];
         if(_loc2_ == null)
         {
            _loc2_ = this.var_1664[param1] = new class_130(param1);
         }
         return _loc2_;
      }
      
      private final function method_579(param1:int, param2:Vector.<class_129>) : void
      {
         var _loc3_:class_129 = null;
         this.var_300 = param1;
         this.var_562.length = 0;
         for each(_loc3_ in param2)
         {
            if(_loc3_.name_17 == class_124.const_379)
            {
               this.var_562.push(_loc3_.name_7);
               this.method_311(_loc3_);
            }
         }
      }
      
      private final function method_1672(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc4_:class_130 = null;
         var _loc2_:class_757 = this.var_2069.name_8;
         if(_loc2_)
         {
            _loc3_ = _loc2_.var_38;
            _loc4_ = this.method_199(_loc3_);
            _loc4_.var_419 = _loc2_.var_419;
            _loc4_.var_90 = _loc2_.var_90;
            _loc4_.var_144 = _loc2_.var_144;
            _loc4_.var_325 = _loc2_.var_325;
            this.method_1375(_loc4_,_loc2_.var_230);
            this.dispatchEvent(param1);
         }
      }
      
      private final function method_1375(param1:class_130, param2:int) : void
      {
         var _loc3_:Vector.<String> = null;
         var _loc4_:int = 0;
         var _loc5_:class_129 = null;
         if(param1.var_325)
         {
            param1.var_230 = param2;
            _loc3_ = new Vector.<String>(1);
            _loc3_[0] = param2.toString();
            _loc4_ = class_124.const_379;
            for each(_loc5_ in param1.var_90)
            {
               if(_loc5_.name_17 != class_124.const_62)
               {
                  _loc4_ = class_124.const_903;
                  break;
               }
            }
            param1.var_90.push(new class_129(param1.var_90.length + 1,class_131.const_1173,_loc3_,_loc4_));
         }
      }
      
      private final function method_2296(param1:Event) : void
      {
         var _loc2_:class_930 = null;
         var _loc4_:int = 0;
         var _loc5_:class_130 = null;
         this.method_1307();
         this.method_579(-1,null);
         this.var_1372 = this.var_1194.name_8;
         for each(_loc2_ in this.var_1372)
         {
            _loc4_ = _loc2_.name_7;
            _loc5_ = this.method_199(_loc4_);
            _loc5_.name_17 = _loc2_.name_17;
            _loc5_.name_10 = _loc2_.name_10;
            _loc5_.name_5 = _loc2_.name_5;
            if(_loc5_.name_17 == class_128.const_78 || _loc5_.name_17 == class_128.const_185)
            {
               this.method_579(_loc4_,_loc5_.var_90);
            }
         }
         this.dispatchEvent(param1);
         if(!this.var_125.name_99)
         {
            return;
         }
         var _loc3_:class_192 = class_33.name_12.method_337;
         _loc3_.name_64.dirtyList = true;
         _loc3_.method_2296(this.var_1372.length);
      }
      
      private final function method_2149(param1:Event) : void
      {
         var _loc3_:class_130 = null;
         var _loc2_:class_834 = this.var_1556.name_8;
         if(_loc2_)
         {
            _loc3_ = this.method_199(_loc2_.var_38);
            _loc3_.name_17 = class_128.const_78;
            _loc3_.var_90 = _loc2_.var_90;
            _loc3_.var_325 = _loc2_.var_325;
            this.method_1375(_loc3_,_loc2_.var_230);
            this.method_579(_loc2_.var_38,_loc3_.var_90);
            this.dispatchEvent(param1);
         }
      }
      
      private final function method_1922(param1:Event) : void
      {
         var _loc3_:class_130 = null;
         var _loc4_:class_129 = null;
         var _loc5_:class_129 = null;
         var _loc2_:class_882 = this.var_2120.name_8;
         if(_loc2_)
         {
            _loc3_ = this.method_199(_loc2_.name_7);
            _loc4_ = _loc2_.var_1115;
            if(_loc4_)
            {
               _loc3_.method_123(_loc4_);
               if(_loc2_.name_7 == this.var_300)
               {
                  if(_loc4_.name_17 == class_124.const_903)
                  {
                     class_1020.method_1224(this.var_562,_loc4_.name_7);
                  }
                  else if(_loc4_.name_17 == class_124.const_379)
                  {
                     if(this.var_562.indexOf(_loc4_.name_7) == -1)
                     {
                        this.var_562.push(_loc4_.name_7);
                        this.method_311(_loc4_);
                     }
                  }
                  else if(_loc4_.name_17 == class_124.const_62)
                  {
                     class_1020.method_1224(this.var_562,_loc4_.name_7);
                     if(_loc3_.var_325 && this.var_562.length == 0)
                     {
                        _loc5_ = _loc3_.method_413(_loc3_.var_90.length);
                        _loc5_.name_17 = class_124.const_379;
                        this.var_562.push(_loc5_.name_7);
                        this.method_311(_loc5_);
                     }
                     else
                     {
                        this.method_311(_loc4_);
                     }
                  }
               }
               this.dispatchEvent(param1);
            }
         }
      }
      
      private final function method_2664(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc4_:class_130 = null;
         var _loc2_:class_881 = this.var_1811.name_8;
         if(_loc2_)
         {
            _loc3_ = _loc2_.var_38;
            _loc4_ = this.method_199(_loc3_);
            _loc4_.name_17 = _loc2_.name_17;
            if(_loc3_ != this.var_300 && _loc2_.name_17 == class_128.const_78)
            {
               this.method_579(_loc3_,_loc4_.var_90);
            }
            else if(_loc3_ == this.var_300 && _loc2_.name_17 != class_128.const_78)
            {
               this.var_300 = -1;
               this.method_311(null);
            }
            this.dispatchEvent(param1);
         }
      }
      
      private final function method_2268(param1:Event) : void
      {
         var _loc3_:class_130 = null;
         var _loc2_:class_643 = this.var_2116.name_8;
         if(_loc2_)
         {
            _loc3_ = this.method_199(_loc2_.name_7);
            _loc3_.var_62 = _loc2_.var_62;
            this.dispatchEvent(param1);
         }
      }
      
      private final function method_2422(param1:Event) : void
      {
         var _loc3_:class_130 = null;
         var _loc2_:class_575 = this.var_1862.name_8;
         if(_loc2_)
         {
            _loc3_ = this.method_199(_loc2_.name_7);
            if(_loc2_.name_7 == this.var_300)
            {
               this.var_300 = -1;
               this.method_311(null);
            }
            delete this.var_1664[_loc2_.name_7];
            this.dispatchEvent(param1);
            if(_loc3_.name_5 == class_135.const_219)
            {
               this.method_1440();
            }
         }
      }
      
      private final function method_2523(param1:Event) : void
      {
         var _loc2_:class_657 = this.var_1909.name_8;
         if(_loc2_)
         {
            if(_loc2_.name_7 == this.var_300)
            {
               this.var_300 = -1;
               this.method_311(null);
            }
            class_47.method_24.var_12.instantMsgBox.update(class_47.method_22.method_28("questfailure"));
            this.dispatchEvent(param1);
         }
      }
      
      private final function method_311(param1:class_129) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(param1 && (param1.name_5 == class_134.const_560 || param1.name_5 == class_134.const_556) && param1.name_17 != class_124.const_62)
         {
            _loc2_ = parseInt(param1.name_18[0]);
            _loc3_ = parseInt(param1.name_18[1]);
            _loc4_ = parseInt(param1.name_18[2]);
            class_33.name_12.method_465.method_1912(_loc4_,_loc2_,_loc3_);
         }
         else if(param1 && param1.name_17 == class_124.const_62)
         {
            _loc5_ = parseInt(param1.name_18[0]);
            _loc6_ = parseInt(param1.name_18[1]);
            class_33.name_12.method_465.method_1638(_loc5_,_loc6_);
         }
         else
         {
            class_33.name_12.method_465.method_724();
         }
      }
   }
}
