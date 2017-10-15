package package_65
{
   import com.bigpoint.seafight.view.common.components.vo.WindowButtonBarButtonVo;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import package_104.class_641;
   import package_20.class_109;
   
   public final class class_188 extends class_109
   {
       
      
      private var var_1984:Boolean = false;
      
      private var var_2463:Vector.<class_641>;
      
      public var var_2457:Dictionary;
      
      public function class_188()
      {
         super();
         this.var_2457 = new Dictionary();
      }
      
      public final function method_1947(param1:Vector.<class_641>) : void
      {
         this.var_2463 = param1;
         dispatchEvent(new Event(class_1046.const_1293));
      }
      
      public function set method_1208(param1:Boolean) : void
      {
         this.var_1984 = param1;
      }
      
      public function get method_1208() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this.var_1984)
         {
            _loc1_ = true;
            this.var_1984 = false;
         }
         return _loc1_;
      }
   }
}
