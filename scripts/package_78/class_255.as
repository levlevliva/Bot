package package_78
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.reputation.ReputationData;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import package_14.class_47;
   import package_14.class_94;
   import package_15.class_273;
   import package_15.class_78;
   import package_153.class_613;
   import package_153.class_676;
   import package_153.class_931;
   import package_17.class_54;
   import package_193.class_1178;
   import package_193.class_1179;
   import package_32.class_64;
   import package_51.class_148;
   import package_54.class_1006;
   import spark.components.Group;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public final class class_255 extends class_78
   {
       
      
      private var var_1152:class_1179;
      
      private var var_675:class_1178;
      
      private var var_66:class_273;
      
      public function class_255(param1:class_273)
      {
         super();
         this.var_66 = param1;
         this.var_1152 = param1.method_1593;
         method_35(this.var_1152);
      }
      
      override protected function method_1182() : Object
      {
         var _loc2_:Vector.<ReputationData> = null;
         var _loc3_:class_931 = null;
         var _loc1_:class_676 = this.var_1152.name_8;
         if(_loc1_)
         {
            _loc2_ = new Vector.<ReputationData>(0);
            for each(_loc3_ in _loc1_.var_841)
            {
               _loc2_.push(new ReputationData(_loc3_));
            }
            return _loc2_;
         }
         return null;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_1152);
         this.var_1152.method_36();
         if(this.var_675)
         {
            method_43(this.var_675);
            this.var_675.method_36();
         }
      }
      
      public final function method_358() : Vector.<ReputationData>
      {
         return method_38() as Vector.<ReputationData>;
      }
      
      public final function method_2329(param1:ReputationData) : class_613
      {
         if(this.var_675)
         {
            method_35(this.var_1152);
            this.var_675.method_54();
            this.var_675.method_36();
         }
         this.var_675 = this.var_66.method_1633(param1.stub.var_65,!param1.stub.var_126);
         method_35(this.var_675);
         return this.var_675.name_8;
      }
   }
}
