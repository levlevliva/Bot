package package_89
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_635;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import package_14.class_47;
   import package_16.class_28;
   import package_26.class_960;
   import package_41.class_84;
   import package_42.class_98;
   import package_47.class_522;
   import package_72.class_1080;
   import package_88.class_1093;
   import spark.primitives.Rect;
   
   public final class class_299 extends Sprite
   {
       
      
      private var var_436:String = "";
      
      public function class_299(param1:String = "")
      {
         super();
         this.var_436 = param1;
         this.addChild(new Bitmap(class_299.method_776(this.var_436)));
      }
      
      public static function method_776(param1:String = "err", param2:BitmapData = null, param3:Number = 0, param4:Number = 0) : BitmapData
      {
         var _loc5_:TextField = new TextField();
         var _loc6_:TextFormat = new TextFormat();
         _loc6_.size = 12;
         _loc6_.color = 16777215;
         _loc5_.defaultTextFormat = _loc6_;
         _loc5_.text = param1;
         if(!param2)
         {
            param2 = new BitmapData(_loc5_.width + 2,_loc5_.height + 2,false,16711680);
         }
         var _loc7_:BitmapData = new BitmapData(_loc5_.width,_loc5_.height,false,16711680);
         _loc7_.draw(_loc5_);
         var _loc8_:Matrix = new Matrix();
         _loc8_.translate(param3,param4);
         param2.draw(_loc7_,_loc8_);
         _loc7_.dispose();
         return param2;
      }
      
      public function set name_53(param1:String) : void
      {
         this.var_436 = param1;
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.size = 8;
         _loc2_.align = TextFormatAlign.CENTER;
         _loc2_.color = 16777215;
         var _loc3_:TextField = new TextField();
         _loc3_.text = this.var_436;
         _loc3_.setTextFormat(_loc2_);
         this.addChild(_loc3_);
      }
   }
}
