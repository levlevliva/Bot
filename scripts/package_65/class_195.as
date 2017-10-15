package package_65
{
   import com.bigpoint.seafight.model.vo.class_320;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import package_16.class_28;
   import package_17.class_151;
   import package_41.class_84;
   import package_41.class_93;
   import package_51.class_1005;
   import package_54.class_319;
   import package_6.class_14;
   import package_89.class_1378;
   import spark.components.List;
   
   public final class class_195
   {
       
      
      private var var_1203:Dictionary;
      
      private var var_78:class_28;
      
      private var var_2005:Boolean = false;
      
      public function class_195()
      {
         super();
         this.var_1203 = new Dictionary();
      }
      
      private final function send() : void
      {
         var _loc1_:* = null;
         var _loc2_:class_14 = null;
         this.var_2005 = false;
         for(_loc1_ in this.var_1203)
         {
            _loc2_ = this.var_1203[_loc1_] as class_14;
            this.var_78.method_31(_loc2_);
            delete this.var_1203[_loc1_];
         }
      }
      
      public final function method_389(param1:class_14) : void
      {
         this.var_1203[param1.method_16().toString()] = param1;
         if(!this.var_2005)
         {
            this.var_2005 = true;
            TweenMax.delayedCall(0.2,this.send);
         }
      }
      
      public function set method_559(param1:class_28) : void
      {
         this.var_78 = param1;
      }
   }
}
