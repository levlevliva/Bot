package package_89
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.system.ApplicationDomain;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import package_14.class_51;
   import package_14.class_96;
   import package_27.class_53;
   import package_54.class_1089;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public final class class_331 extends MovieClip
   {
       
      
      private var var_1781:class_299;
      
      private var var_1782:String;
      
      private var var_927:String;
      
      private var var_2170:Boolean = false;
      
      private var var_2381:Boolean = false;
      
      private var var_2306:Boolean = false;
      
      public var var_349:MovieClip;
      
      private var var_2445:TweenMax;
      
      private var var_1657:int;
      
      public function class_331(param1:String, param2:String, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false)
      {
         super();
         this.var_927 = param2;
         this.var_1782 = param1;
         this.var_2170 = param3;
         this.var_2381 = param4;
         this.var_2306 = param5;
         this.var_1657 = 0;
         this.addEventListener(Event.REMOVED_FROM_STAGE,this.method_2835);
      }
      
      public final function method_68() : void
      {
         this.name_16();
      }
      
      public function set method_1385(param1:int) : void
      {
         this.var_1657 = param1;
         if(this.var_349)
         {
            this.var_349.gotoAndStop(this.var_1657);
         }
      }
      
      private final function method_2835(param1:Event) : void
      {
         if(this.var_349)
         {
            TweenMax.killTweensOf(this.var_349);
         }
      }
      
      private final function name_16(param1:Event = null) : void
      {
         var _loc3_:ApplicationDomain = null;
         var _loc4_:Class = null;
         var _loc2_:class_53 = class_53.method_21();
         if(!_loc2_.method_382(this.var_1782))
         {
            _loc2_.addEventListener(this.var_927,this.name_16);
            _loc2_.method_195([this.var_1782],this.var_927);
            return;
         }
         if(this.var_1781 != null)
         {
            if(this.numChildren > 0)
            {
               this.removeChildAt(0);
            }
            this.var_1781 = null;
         }
         _loc2_.removeEventListener(this.var_927,this.name_16);
         _loc3_ = _loc2_.method_335(this.var_927);
         _loc4_ = _loc3_.getDefinition(this.var_927) as Class;
         this.var_349 = new _loc4_() as MovieClip;
         this.var_349.gotoAndStop(this.var_1657);
         if(this.var_2170)
         {
            this.var_349.x = -this.var_349.width * 0.5;
         }
         if(this.var_2381)
         {
            this.var_349.y = -this.var_349.height * 0.5;
         }
         this.addChild(this.var_349);
         if(this.var_2306)
         {
            this.var_2445 = new TweenMax(this.var_349,7,{
               "frame":this.var_349.totalFrames,
               "ease":Linear.easeNone,
               "useFrames":false,
               "repeat":-1
            });
         }
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public final function method_36() : void
      {
         if(this.var_349)
         {
            TweenMax.killTweensOf(this.var_349);
         }
      }
   }
}
