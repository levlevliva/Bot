package package_12
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1092;
   import com.bigpoint.seafight.model.vo.class_320;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.DeathWindow;
   import com.bigpoint.seafight.view.popups.common.CheckBox;
   import com.bigpoint.seafight.view.popups.deathpopup.DeathPopupController;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopup;
   import com.bigpoint.seafight.view.popups.deathpopup.vo.DeathPopupVo;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.core.IFlexDisplayObject;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import package_113.class_397;
   import package_113.class_398;
   import package_113.class_487;
   import package_113.class_538;
   import package_14.class_1313;
   import package_14.class_47;
   import package_14.class_51;
   import package_17.class_151;
   import package_17.class_37;
   import package_171.class_981;
   import package_174.class_1592;
   import package_177.class_1049;
   import package_179.class_1064;
   import package_20.class_33;
   import package_26.class_142;
   import package_45.class_110;
   import package_5.class_12;
   import package_5.class_139;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_43;
   import package_50.class_141;
   import package_51.class_1005;
   import package_51.class_148;
   import package_51.class_974;
   import package_54.class_319;
   import spark.components.Application;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.TitleWindow;
   
   public final class class_21
   {
      
      public static const const_3:ILogger = Log.getLogger("StageResizeListner");
      
      public static const const_1121:String = "triggerMapResizeEvent";
       
      
      private var var_2310:Application;
      
      private var var_728:Timer;
      
      public function class_21(param1:Application)
      {
         super();
         this.var_2310 = param1;
         class_47.method_49.addEventListener(Event.RESIZE,this.method_451);
         CentralEventUnit.addEventListener(const_1121,this.method_1903,false);
      }
      
      public final function method_34() : void
      {
         this.method_451();
      }
      
      private final function method_1903(param1:Event) : void
      {
         this.method_622(null);
      }
      
      private final function method_451(param1:Event = null) : void
      {
         var _loc2_:UserInterface = !!class_47.method_24?class_47.method_24.var_12:null;
         if(class_12.var_104 == class_12.const_15)
         {
            if(!this.var_728)
            {
               this.var_728 = new Timer(400,1);
               this.var_728.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_622);
            }
            if(class_41.name_3.name_17 == class_41.const_103)
            {
               this.var_728.stop();
               this.var_728.start();
            }
            else
            {
               this.method_622();
            }
            if(_loc2_)
            {
               _loc2_.width = class_12.var_956 > 0?Number(class_51.var_39):Number(class_47.method_49.stageWidth);
               _loc2_.height = class_12.var_916 > 0?Number(class_51.var_40):Number(class_47.method_49.stageHeight);
            }
         }
         else if(_loc2_)
         {
            _loc2_.refreshValidStageArea();
            _loc2_.width = class_51.var_39;
            _loc2_.height = class_51.var_40;
            _loc2_.menuContainer.onStageResize();
         }
      }
      
      private final function method_622(param1:TimerEvent = null) : void
      {
         var _loc2_:int = class_12.var_956 > 0?int(class_12.var_956):int(class_47.method_49.stageWidth);
         var _loc3_:int = class_12.var_916 > 0?int(class_12.var_916):int(class_47.method_49.stageHeight - UserInterface.MAXIMIZED_SCREEN_HEIGHT_EXCESS);
         var _loc4_:Number = class_141.var_99;
         if(_loc2_ > class_51.var_548 * _loc4_)
         {
            _loc2_ = class_51.var_548 * _loc4_;
         }
         if(_loc3_ > class_51.var_526 * _loc4_)
         {
            _loc3_ = class_51.var_526 * _loc4_;
         }
         class_51.var_39 = _loc2_;
         class_51.var_40 = _loc3_ - this.var_2310.y;
         class_58.method_21().method_182(_loc2_,_loc3_);
         if(class_47.method_24)
         {
            class_47.method_24.method_451();
            if(class_41.name_3.name_17 == class_41.const_103)
            {
               class_37.method_21().method_665();
            }
         }
         else
         {
            class_41.name_3.addEventListener(class_142.const_116,this.method_1044);
         }
      }
      
      private final function method_1044(param1:class_142) : void
      {
         if(class_41.name_3.name_17 != class_41.const_103)
         {
            return;
         }
         class_41.name_3.removeEventListener(class_142.const_116,this.method_1044);
         this.method_622();
      }
   }
}
