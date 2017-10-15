package package_92
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.puzzlepopup.component.PuzzlePopupPieceItemRenderer;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.greensock.loading.LoaderStatus;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.class_806;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.guild.class_906;
   import package_124.class_673;
   import package_14.class_47;
   import package_156.class_1508;
   import package_156.class_674;
   import package_16.class_28;
   import package_17.class_990;
   import package_170.class_979;
   import package_171.*;
   import package_174.class_1375;
   import package_211.class_1369;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_42.class_1034;
   import package_47.class_129;
   import package_49.class_137;
   import package_6.class_14;
   import package_93.class_987;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.RichText;
   import spark.components.VGroup;
   import spark.effects.animation.SimpleMotionPath;
   
   public final class class_997 extends Sprite
   {
      
      public static const const_3:ILogger = Log.getLogger("MapTilesRenderer");
      
      public static const const_1574:int = 19;
      
      public static const const_1282:int = 18;
       
      
      private var var_284:Sprite;
      
      private var var_937:Sprite;
      
      protected var var_1674:class_990;
      
      protected var var_529:int;
      
      protected var var_376:int;
      
      protected var var_2434:int;
      
      protected var var_2417:int;
      
      protected var var_970:Vector.<class_1368>;
      
      protected var var_633:Number;
      
      public function class_997(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         this.var_529 = param3;
         this.var_376 = param4;
         this.var_2434 = param1;
         this.var_2417 = param2;
         this.mouseEnabled = false;
         this.mouseChildren = false;
         this.var_284 = new Sprite();
         this.var_284.mouseChildren = false;
         this.var_284.mouseEnabled = false;
         this.var_937 = new Sprite();
         this.var_284.addChild(this.var_937);
         this.addChild(this.var_284);
      }
      
      public final function method_34(param1:int, param2:int) : void
      {
         this.var_284.x = param1;
         this.var_284.y = param2;
      }
      
      public final function method_54() : void
      {
         while(this.var_937.numChildren > 0)
         {
            this.var_937.removeChildAt(0);
         }
         this.var_970 = null;
      }
      
      public final function method_400() : void
      {
         var _loc1_:BitmapData = null;
         var _loc10_:int = 0;
         var _loc11_:class_1368 = null;
         var _loc12_:class_1369 = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = this.var_2434 * this.var_633;
         var _loc5_:int = this.var_2417 * this.var_633;
         var _loc6_:* = this.var_970 == null;
         var _loc7_:int = 0;
         if(_loc6_)
         {
            this.var_970 = new Vector.<class_1368>();
         }
         var _loc8_:class_1368 = this.var_1674.method_738();
         var _loc9_:int = 0;
         while(_loc9_ < this.var_529)
         {
            _loc10_ = 0;
            while(_loc10_ < this.var_376)
            {
               _loc11_ = null;
               if(_loc6_)
               {
                  _loc12_ = this.var_1674.method_256(_loc10_,_loc9_);
                  _loc1_ = _loc12_ && _loc12_.var_1138?_loc12_.var_1138:_loc8_.bitmapData;
                  if(_loc1_ != null)
                  {
                     _loc11_ = !!_loc12_?new class_1368(_loc1_,_loc12_.name_7,_loc12_.var_9,_loc12_.var_8):new class_1368(_loc8_.bitmapData,_loc8_.name_7,0,0);
                  }
                  this.var_970.push(_loc11_);
                  if(_loc11_ != null)
                  {
                     this.var_937.addChild(_loc11_);
                  }
               }
               else
               {
                  _loc11_ = this.var_970[_loc7_];
               }
               if(_loc11_ != null)
               {
                  _loc11_.x = _loc2_;
                  _loc11_.y = _loc3_;
                  _loc11_.width = _loc4_;
                  _loc11_.height = _loc5_;
               }
               _loc7_++;
               _loc2_ = _loc2_ + _loc4_;
               _loc10_++;
            }
            _loc2_ = 0;
            _loc3_ = _loc3_ + _loc5_;
            _loc9_++;
         }
      }
      
      public final function method_182() : Boolean
      {
         var _loc2_:class_1368 = null;
         var _loc3_:class_1369 = null;
         var _loc1_:Boolean = false;
         for each(_loc2_ in this.var_970)
         {
            if(!(null == _loc2_ || _loc2_.name_7 < 0))
            {
               _loc3_ = this.var_1674.method_256(_loc2_.method_2626(),_loc2_.method_2835());
               if(null != _loc3_)
               {
                  if(_loc3_.var_1138 == null)
                  {
                     return _loc1_;
                  }
                  if(_loc3_.name_7 != _loc2_.name_7)
                  {
                     _loc2_.method_34(_loc3_.var_1138,_loc3_.name_7);
                     _loc1_ = true;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function set method_1688(param1:int) : void
      {
         this.var_376 = param1;
      }
      
      public function set name_74(param1:int) : void
      {
         this.var_529 = param1;
      }
      
      public function set method_1595(param1:class_990) : void
      {
         this.var_1674 = param1;
      }
      
      public function set method_117(param1:Number) : void
      {
         this.var_633 = param1;
         if(this.var_970)
         {
            this.method_400();
         }
      }
      
      public function get method_1731() : int
      {
         return -this.var_284.x;
      }
      
      public function get method_1905() : int
      {
         return -this.var_284.y;
      }
   }
}
