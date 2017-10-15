package mx.graphics
{
   import flash.events.EventDispatcher;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public class GradientEntry extends EventDispatcher
   {
      
      mx_internal static const VERSION:String = "4.12.0.0";
       
      
      private var _alpha:Number = 1.0;
      
      private var _color:uint;
      
      private var _ratio:Number;
      
      public function GradientEntry(param1:uint = 0, param2:Number = NaN, param3:Number = 1.0)
      {
         super();
         this.color = param1;
         this.ratio = param2;
         this.alpha = param3;
      }
      
      [Bindable("propertyChange")]
      public function get alpha() : Number
      {
         return this._alpha;
      }
      
      public function set alpha(param1:Number) : void
      {
         var _loc2_:Number = this._alpha;
         if(param1 != _loc2_)
         {
            this._alpha = param1;
            this.dispatchEntryChangedEvent("alpha",_loc2_,param1);
         }
      }
      
      [Bindable("propertyChange")]
      public function get color() : uint
      {
         return this._color;
      }
      
      public function set color(param1:uint) : void
      {
         var _loc2_:uint = this._color;
         if(param1 != _loc2_)
         {
            this._color = param1;
            this.dispatchEntryChangedEvent("color",_loc2_,param1);
         }
      }
      
      [Bindable("propertyChange")]
      public function get ratio() : Number
      {
         return this._ratio;
      }
      
      public function set ratio(param1:Number) : void
      {
         var _loc2_:Number = this._ratio;
         if(param1 != _loc2_)
         {
            this._ratio = param1;
            this.dispatchEntryChangedEvent("ratio",_loc2_,param1);
         }
      }
      
      private function dispatchEntryChangedEvent(param1:String, param2:*, param3:*) : void
      {
         if(hasEventListener("propertyChange"))
         {
            dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,param1,param2,param3));
         }
      }
   }
}