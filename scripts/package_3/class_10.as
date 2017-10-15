package package_3
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.common.RedDeclineButton;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_14.class_96;
   import package_170.class_979;
   import package_171.class_1276;
   import package_175.class_1593;
   import package_2.class_9;
   import package_5.class_123;
   import package_5.class_22;
   import package_6.class_14;
   import package_9.class_1314;
   import package_9.class_688;
   import spark.components.Group;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   public class class_10 extends EventDispatcher implements class_9
   {
      
      protected static const const_3:ILogger = Log.getLogger("-");
       
      
      private var var_1884:Dictionary;
      
      public function class_10()
      {
         this.var_1884 = new Dictionary();
         super();
      }
      
      protected final function method_23(param1:class_14, param2:Function) : void
      {
         this.var_1884[param1.method_16()] = param2;
      }
      
      public function method_248(param1:class_14) : void
      {
         var _loc2_:Function = this.var_1884[param1.method_16()] as Function;
         if(null == _loc2_)
         {
            return;
         }
         _loc2_.call(this,param1);
      }
   }
}
