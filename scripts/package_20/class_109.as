package package_20
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import package_14.class_51;
   import package_41.class_93;
   import package_42.class_98;
   import package_44.class_108;
   import package_52.class_168;
   import package_6.class_14;
   import package_69.class_978;
   import package_72.class_1080;
   import spark.components.VGroup;
   
   public class class_109 extends EventDispatcher implements class_108
   {
      
      protected static const const_3:ILogger = Log.getLogger("AbstractProxy");
       
      
      private var var_2201:Boolean = false;
      
      private var var_1397:Array;
      
      private var var_1759:Boolean = false;
      
      private var var_1400:TweenMax;
      
      public function class_109()
      {
         this.var_1397 = [];
         super();
      }
      
      public function method_34(param1:int) : void
      {
         dispatchEvent(new Event(class_978.const_4));
      }
      
      public function method_357() : void
      {
         dispatchEvent(new Event(class_978.const_869));
      }
      
      protected final function method_186(param1:Vector.<IInventory_VO>) : Vector.<IInventory_VO>
      {
         var _loc4_:Vector.<IInventory_VO> = null;
         var _loc2_:int = param1.length;
         var _loc3_:Array = [];
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            if(param1[_loc5_].item_VO != null)
            {
               _loc3_.push(_loc5_);
            }
            _loc5_++;
         }
         _loc2_ = _loc3_.length;
         _loc4_ = new Vector.<IInventory_VO>(_loc2_,true);
         _loc5_ = 0;
         while(_loc5_ < _loc2_)
         {
            _loc4_[_loc5_] = param1[_loc3_[_loc5_]];
            _loc5_++;
         }
         return _loc4_;
      }
      
      public function method_1530() : Boolean
      {
         return this.var_2201;
      }
      
      public function destroy() : void
      {
         this.var_2201 = true;
      }
      
      public function method_1274(param1:Array) : void
      {
         var _loc2_:Array = param1;
         this.var_1397 = class_181.method_1594(_loc2_,this.var_1397);
         if(this.var_1400)
         {
            this.var_1759 = true;
         }
         else
         {
            this.var_1400 = TweenMax.delayedCall(0.3,this.method_1505);
         }
      }
      
      private final function method_1505() : void
      {
         if(this.var_1759)
         {
            this.var_1400 = TweenMax.delayedCall(0.5,this.method_1505);
            this.var_1759 = false;
            return;
         }
         this.var_1400.kill();
         this.var_1400 = null;
         this.method_96(this.var_1397);
         this.var_1397 = [];
      }
      
      public function method_96(param1:Array) : void
      {
      }
   }
}
