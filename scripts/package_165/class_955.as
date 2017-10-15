package package_165
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import package_171.class_1057;
   import package_202.attackDirection;
   import package_202.tx;
   import package_202.ty;
   import package_42.class_959;
   import package_5.class_123;
   import package_5.class_945;
   import spark.components.HGroup;
   import spark.components.gridClasses.GridColumn;
   
   public final class class_955 extends class_954
   {
       
      
      protected var var_1288:Bitmap;
      
      public function class_955(param1:class_173)
      {
         super(param1);
         this.var_1288 = getSWFFinisher(class_123.const_20).getEmbeddedBitmap("admiralsborder");
         this.var_1288.x = this.var_1288.width * -0.5;
         this.var_1288.y = -15;
         addChildAt(this.var_1288,0);
      }
   }
}
