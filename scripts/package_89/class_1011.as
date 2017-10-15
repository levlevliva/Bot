package package_89
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_27.class_53;
   import spark.components.Group;
   
   public final class class_1011 extends Bitmap
   {
       
      
      private var var_2005:class_299;
      
      private var var_1881:String;
      
      private var var_918:String;
      
      public function class_1011(param1:String, param2:String)
      {
         super();
         this.var_918 = param2;
         this.var_1881 = param1;
         this.name = this.var_918;
         this.name_16();
      }
      
      private final function name_16(param1:Event = null) : void
      {
         var _loc3_:ApplicationDomain = null;
         var _loc2_:class_53 = class_53.method_21();
         if(!_loc2_.method_353(this.var_1881))
         {
            _loc2_.addEventListener(this.var_918,this.name_16);
            _loc2_.method_195([this.var_1881],this.var_918);
         }
         else
         {
            if(this.var_2005 != null)
            {
               this.var_2005 = null;
            }
            _loc2_.removeEventListener(this.var_918,this.name_16);
            _loc3_ = _loc2_.method_348(this.var_918);
            this.bitmapData = new _loc3_.getDefinition(this.var_918)(0,0) as BitmapData;
            this.smoothing = true;
         }
      }
   }
}
