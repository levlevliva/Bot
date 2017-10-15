package package_88
{
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import flash.display.Sprite;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import package_14.class_47;
   import package_14.class_49;
   import package_166.class_1345;
   import package_6.class_14;
   
   public final class class_1014 extends Sprite
   {
       
      
      private var var_1621:int;
      
      private var var_1348:Number;
      
      private var var_1308:Number;
      
      private var var_1350:int;
      
      private var var_1267:int;
      
      public function class_1014(param1:int, param2:Number, param3:Number = 2)
      {
         super();
         this.var_1621 = param1;
         this.var_1348 = param2;
         this.var_1308 = param3;
         this.var_1267 = -1;
         this.method_34(100);
      }
      
      public final function method_34(param1:int = -1, param2:int = 0) : void
      {
         var _loc4_:int = 0;
         this.var_1350 = param1 >= 0?int(param1):int(this.var_1350);
         var _loc3_:int = this.var_1621 / 100 * this.var_1350;
         if(_loc3_ < 0)
         {
            _loc3_ = 0;
         }
         else if(_loc3_ > this.var_1621)
         {
            _loc3_ = this.var_1621;
         }
         if(this.var_1350 > 100)
         {
            this.var_1350 = 100;
         }
         if(this.var_1267 > -1)
         {
            param2 = this.var_1267;
         }
         if(param2 == 0)
         {
            this.graphics.clear();
            _loc4_ = class_1345.method_286(255,116,0,param1);
            this.graphics.lineStyle(this.var_1308,_loc4_,1);
            this.graphics.moveTo(0,0);
            this.graphics.lineTo(_loc3_,0);
            _loc4_ = class_1345.method_286(102,80,0,param1);
            this.graphics.lineStyle(this.var_1308 / 100 * 25,_loc4_,1);
            this.graphics.moveTo(0,this.var_1348);
            this.graphics.lineTo(_loc3_,this.var_1348);
         }
         else
         {
            this.graphics.clear();
            this.graphics.lineStyle(this.var_1308,param2,1);
            this.graphics.moveTo(0,0);
            this.graphics.lineTo(_loc3_,0);
            this.graphics.lineStyle(this.var_1308 / 100 * 25,param2 + 10,1);
            this.graphics.moveTo(0,this.var_1348);
            this.graphics.lineTo(_loc3_,this.var_1348);
         }
      }
      
      public function set name_73(param1:int) : void
      {
         this.var_1267 = param1;
         this.method_34();
      }
   }
}
