package package_50
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import mx.binding.BindingManager;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import package_14.class_47;
   import package_5.class_214;
   import spark.components.Group;
   import spark.primitives.Graphic;
   
   public final class class_998 extends Sprite
   {
      
      private static const const_3:ILogger = Log.getLogger("RulerLayerClip");
      
      private static const const_565:Array = ["00","01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60"];
      
      private static const const_477:Array = ["AA","AB","AC","AD","AE","AF","AG","AH","AI","AJ","AK","AL","AM","AN","AO","AP","AQ","AR","AS","AT","AU","AV","AW","AX","AY","AZ","BA","BB","BC","BD","BE","BF","BG","BH","BI","BJ","BK","BL","BM","BN","BO","BP","BQ","BR","BS","BT","BU","BV","BW","BX","BY","BZ","CA","CB","CC","CD","CE","CF","CG","CH","CI"];
       
      
      private var var_2036:Sprite;
      
      private var var_1876:Sprite;
      
      private var var_633:Number;
      
      private var var_1537:Array;
      
      private var var_1579:Array;
      
      public function class_998()
      {
         super();
         this.var_633 = 1;
         this.var_1537 = [];
         this.var_1579 = [];
         this.method_2402();
         this.method_1268();
      }
      
      private final function method_2402() : void
      {
         while(this.numChildren > 0)
         {
            this.removeChildAt(0);
         }
         addChild(this.var_2036 = this.method_2723());
         addChild(this.var_1876 = this.method_2470());
         this.var_2036.cacheAsBitmap = true;
         this.var_1876.cacheAsBitmap = true;
      }
      
      private final function method_2723() : Sprite
      {
         var _loc4_:Sprite = null;
         var _loc5_:TextField = null;
         var _loc6_:Sprite = null;
         var _loc1_:Sprite = new Sprite();
         var _loc2_:int = const_565.length;
         var _loc3_:int = 1;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = new Sprite();
            _loc5_ = new TextField();
            _loc5_.autoSize = "left";
            _loc5_.text = const_565[_loc3_];
            _loc5_.alpha = 1;
            _loc5_.setTextFormat(new TextFormat("Verdana",9,16777215));
            _loc4_.addChild(_loc5_);
            _loc6_ = new Sprite();
            _loc6_.addChild(_loc4_);
            this.var_1537.push(_loc6_);
            _loc1_.addChild(_loc6_);
            _loc3_++;
         }
         return _loc1_;
      }
      
      private final function method_2470() : Sprite
      {
         var _loc4_:Sprite = null;
         var _loc5_:TextField = null;
         var _loc6_:Sprite = null;
         var _loc1_:Sprite = new Sprite();
         var _loc2_:int = const_477.length;
         var _loc3_:int = 1;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = new Sprite();
            _loc5_ = new TextField();
            _loc5_.autoSize = "left";
            _loc5_.text = const_477[_loc3_];
            _loc5_.alpha = 1;
            _loc5_.setTextFormat(new TextFormat("Verdana",9,16777215));
            _loc4_.addChild(_loc5_);
            _loc6_ = new Sprite();
            _loc6_.addChild(_loc4_);
            this.var_1579.push(_loc6_);
            _loc1_.addChild(_loc6_);
            _loc3_++;
         }
         return _loc1_;
      }
      
      private final function method_1268() : void
      {
         var _loc1_:int = this.var_1537.length;
         var _loc2_:int = this.var_1579.length;
         var _loc3_:int = 0;
         do
         {
            (this.var_1537[_loc3_] as Sprite).x = (_loc3_ + 1) * 200 * this.var_633;
         }
         while(++_loc3_ < _loc1_);
         
         _loc3_ = 0;
         do
         {
            (this.var_1579[_loc3_] as Sprite).y = (_loc3_ + 1) * 140 * this.var_633;
         }
         while(++_loc3_ < _loc2_);
         
      }
      
      public final function method_34(param1:int, param2:int) : void
      {
         this.var_2036.x = param1 * this.var_633;
         this.var_1876.y = param2 * this.var_633;
      }
      
      public function set method_117(param1:Number) : void
      {
         this.var_633 = param1;
         this.method_1268();
      }
   }
}
