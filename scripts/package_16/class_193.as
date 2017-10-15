package package_16
{
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardsTabListItem;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.MenuToolTip;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.skins.GemOverviewListSkin;
   import com.greensock.plugins.AutoAlphaPlugin;
   import com.greensock.plugins.BezierPlugin;
   import com.greensock.plugins.BlurFilterPlugin;
   import com.greensock.plugins.ColorMatrixFilterPlugin;
   import com.greensock.plugins.ColorTransformPlugin;
   import com.greensock.plugins.FramePlugin;
   import com.greensock.plugins.GlowFilterPlugin;
   import com.greensock.plugins.ScalePlugin;
   import com.greensock.plugins.ScrollRectPlugin;
   import com.greensock.plugins.SoundTransformPlugin;
   import com.greensock.plugins.TintPlugin;
   import com.greensock.plugins.TweenPlugin;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.system.Security;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import mx.managers.ToolTipManager;
   import package_10.class_38;
   import package_104.class_628;
   import package_108.class_755;
   import package_136.class_509;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_143.class_542;
   import package_170.class_979;
   import package_175.class_1593;
   import package_20.class_109;
   import package_23.class_39;
   import package_26.class_969;
   import package_27.class_53;
   import package_29.class_166;
   import package_34.class_1053;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_1054;
   import package_5.class_123;
   import package_5.class_22;
   import package_6.class_14;
   import package_7.class_750;
   import package_88.class_1014;
   import package_9.class_17;
   import package_9.class_91;
   import package_90.class_811;
   import package_91.class_686;
   import package_91.class_734;
   import package_91.class_891;
   import spark.components.Group;
   import spark.components.List;
   import spark.effects.animation.Animation;
   import spark.primitives.BitmapImage;
   
   public final class class_193 extends class_109
   {
      
      private static var var_1856:Number = 1000;
       
      
      private var var_1301:Vector.<class_14>;
      
      private var var_1550:Number;
      
      private var var_1421:Timer;
      
      private var var_78:class_28;
      
      public function class_193()
      {
         this.var_1301 = new Vector.<class_14>();
         super();
         this.var_1550 = getTimer();
         this.var_1421 = new Timer(1000,0);
         this.var_1421.addEventListener(TimerEvent.TIMER,this.method_2228);
      }
      
      private final function method_2228(param1:TimerEvent) : void
      {
         if(this.var_1301.length == 0)
         {
            return;
         }
         var _loc2_:class_14 = this.var_1301.pop();
         this.method_31(_loc2_);
      }
      
      public final function method_2790(param1:class_509) : void
      {
         this.var_1550 = getTimer();
      }
      
      public final function method_31(param1:class_14) : void
      {
         this.var_1421.stop();
         var _loc2_:Number = getTimer();
         var _loc3_:Number = _loc2_ - this.var_1550;
         if(_loc3_ > var_1856)
         {
            if(this.var_78)
            {
               this.var_78.method_31(param1);
            }
            this.var_1550 = _loc2_;
            this.var_1301 = new Vector.<class_14>();
         }
         else
         {
            this.var_1301.push(param1);
            this.var_1421.delay = _loc3_;
            this.var_1421.start();
         }
      }
      
      public final function method_1328(param1:int) : void
      {
         var _loc2_:class_686 = new class_686(param1);
         this.method_31(_loc2_);
      }
      
      public final function method_762() : void
      {
         class_1053.name_3.method_762();
      }
      
      public final function method_1151(param1:class_84, param2:int) : void
      {
         var _loc3_:class_734 = new class_734(param1,param2);
         this.method_31(_loc3_);
      }
      
      public final function method_753(param1:class_84, param2:int) : void
      {
         class_1053.name_3.method_753(param1,param2);
      }
      
      public final function method_1169(param1:class_84, param2:int) : void
      {
         if(param1 == null || param1.name_4 <= 0)
         {
            return;
         }
         var _loc3_:class_811 = new class_811(param1,class_1054.method_980(param2));
         this.method_31(_loc3_);
      }
      
      public final function method_998(param1:int) : void
      {
         var _loc2_:class_891 = new class_891(param1);
         this.method_31(_loc2_);
      }
      
      public final function method_2927(param1:int) : void
      {
         var _loc2_:class_628 = new class_628(param1);
         this.method_31(_loc2_);
      }
      
      public final function method_2076(param1:int, param2:int) : void
      {
         var _loc3_:class_750 = new class_750();
         _loc3_.var_26 = param1;
         _loc3_.name_14 = param2;
         this.method_31(_loc3_);
      }
      
      public function get method_559() : class_28
      {
         return this.var_78;
      }
      
      public function set method_559(param1:class_28) : void
      {
         this.var_78 = param1;
      }
   }
}
