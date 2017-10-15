package package_73
{
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.getMapFieldPoint;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.modules.common.BulletText;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.events.FlexEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import package_14.class_47;
   import package_14.class_51;
   import package_185.class_1136;
   import package_41.class_84;
   import package_5.class_123;
   
   public final class class_228
   {
      
      private static const const_80:ILogger = Log.getLogger("FPSManager");
      
      private static const const_1032:Boolean = false;
      
      private static const const_2715:int = 45;
      
      private static const const_1932:int = 5000;
      
      private static const const_1797:Number = 0.05;
      
      private static const const_1732:Number = 0.75;
      
      private static const const_530:int = 10;
      
      private static const const_1770:int = 5000;
      
      private static const const_1678:int = 2;
      
      private static const const_1566:int = 4;
       
      
      private var var_1925:int = 45;
      
      private var var_294:int = 45;
      
      private var var_756:class_1112;
      
      private var var_380:Stage;
      
      private var var_1826:Timer;
      
      private var var_1677:int = 1;
      
      private var var_2084:Boolean = false;
      
      public function class_228(param1:Stage)
      {
         super();
         this.var_380 = param1;
         if(const_1032)
         {
            const_80.warn("Run with FPS Manager");
            this.var_1826 = new Timer(const_1932);
            this.var_1826.addEventListener(TimerEvent.TIMER,this.method_1930);
         }
         this.var_756 = new class_1112(param1);
         this.var_756.addEventListener(Event.COMPLETE,this.method_2848);
         param1.addEventListener(Event.DEACTIVATE,this.method_1761);
         param1.addEventListener(Event.ACTIVATE,this.method_2818);
      }
      
      private final function method_2818(param1:Event) : void
      {
         this.var_380.frameRate = this.var_294;
         this.var_2084 = false;
      }
      
      private final function method_1761(param1:Event) : void
      {
         this.var_380.frameRate = this.var_294 / 2;
         this.var_2084 = true;
      }
      
      public final function method_1684() : void
      {
         this.var_756.method_1562(const_1770);
      }
      
      public final function method_1678() : void
      {
         this.var_756.method_1262();
      }
      
      private final function method_2848(param1:Event = null) : void
      {
         if(const_1032)
         {
            this.var_1826.start();
         }
      }
      
      public function get method_1114() : int
      {
         return this.var_1925;
      }
      
      public function set method_1114(param1:int) : void
      {
         this.var_1925 = Math.max(param1,const_530);
         this.var_294 = param1;
         this.var_380.frameRate = this.var_294;
      }
      
      private final function method_1930(param1:TimerEvent) : void
      {
         if(this.var_2084)
         {
            return;
         }
         const_80.warn("FPS MANAGER");
         this.var_1677++;
         if(this.var_1677 > const_1566)
         {
            this.var_294 = (1 + const_1732) * this.var_756.method_590;
            this.var_294 = Math.min(this.var_294,this.var_1925);
            this.var_294 = Math.max(this.var_294,const_530);
            this.var_380.frameRate = this.var_294;
            this.var_1677 = 1;
            return;
         }
         var _loc2_:int = this.var_756.method_590 - this.var_294;
         if(_loc2_ < -const_1678)
         {
            this.var_294 = (1 - const_1797) * this.var_756.method_590;
            this.var_294 = Math.max(this.var_294,const_530);
            this.var_294 = Math.max(this.var_294,const_530);
            this.var_380.frameRate = this.var_294;
            return;
         }
      }
      
      public function get method_584() : int
      {
         return this.var_756.method_590;
      }
   }
}
