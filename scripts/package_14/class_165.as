package package_14
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.model.vo.KeysVO;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.HireHelperMinigameModuleController;
   import flash.events.Event;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import package_11.class_130;
   import package_216.class_1575;
   import package_32.class_64;
   import package_88.class_1093;
   
   public final class class_165
   {
      
      private static const const_80:ILogger = Log.getLogger("KeyManager");
       
      
      public var var_754:KeysVO;
      
      public function class_165()
      {
         this.var_754 = new KeysVO();
         super();
         const_80.info("CONSTRUCTING");
         class_58.method_21().method_82("init key manager");
      }
      
      public final function method_1421(param1:String, param2:int, param3:Boolean = false) : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:Boolean = true;
         var _loc6_:int = 0;
         while(_loc6_ < this.var_754.keyArr.length)
         {
            if(this.var_754.keyArr[_loc6_] == param2)
            {
               _loc5_ = false;
            }
            if(this.var_754[param1] == this.var_754.keyArr[_loc6_])
            {
               _loc4_ = _loc6_;
            }
            _loc6_++;
         }
         if(_loc5_ || param3)
         {
            this.var_754[param1] = param2;
            this.var_754.keyArr[_loc4_] = param2;
         }
         return _loc5_;
      }
   }
}
