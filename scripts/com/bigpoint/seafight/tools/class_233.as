package com.bigpoint.seafight.tools
{
   import com.bigpoint.seafight.model.vo.class_968;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.popups.castle.component.ICastleSlotItem;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.gempopup.AbstractGemConfigPopupTabController;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.inventory.GemLevelsComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkin;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.core.TweenCore;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import net.bigpoint.seafight.com.module.gems.class_775;
   import org.osflash.signals.IOnceSignal;
   import package_100.class_1186;
   import package_100.class_598;
   import package_101.class_564;
   import package_110.class_680;
   import package_14.class_47;
   import package_151.class_905;
   import package_158.class_728;
   import package_16.class_28;
   import package_17.class_54;
   import package_26.class_218;
   import package_32.class_64;
   import package_34.class_107;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_123;
   import package_5.class_43;
   import package_51.class_148;
   import package_54.class_161;
   import package_58.class_175;
   import package_59.class_180;
   import package_6.class_14;
   import package_72.class_1442;
   import package_93.class_876;
   import package_93.class_987;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   
   public final class class_233
   {
      
      private static const const_80:ILogger = Log.getLogger("QueueWorkerAsync");
       
      
      private var var_1365:Array;
      
      private var var_1240:Boolean = false;
      
      private var var_2305:Boolean = false;
      
      public function class_233()
      {
         this.var_1365 = new Array();
         super();
      }
      
      public final function method_1815(param1:Function, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(param2)
         {
            this.var_1365.unshift(param1);
         }
         else
         {
            this.var_1365.push(param1);
         }
         if(param3 || this.var_2305)
         {
            this.name_23();
         }
      }
      
      public final function name_23(param1:Boolean = false) : void
      {
         if(param1)
         {
            this.var_2305 = true;
         }
         if(this.var_1365.length == 0)
         {
            return;
         }
         if(this.var_1240)
         {
            const_80.warn("Job Cron is running");
            return;
         }
         this.var_1240 = true;
         this.method_1326();
      }
      
      public final function method_2800(param1:Boolean = true) : void
      {
         if(!this.var_1240)
         {
            if(param1)
            {
               this.name_23();
            }
            return;
         }
         this.method_1326();
      }
      
      private final function method_1326() : void
      {
         var timer:Timer = new Timer(10,1);
         timer.addEventListener(TimerEvent.TIMER_COMPLETE,function():void
         {
            var _loc1_:Object = var_1365.shift();
            if(_loc1_ == null)
            {
               var_1240 = false;
               const_80.warn("STOP Job Cron");
               return;
            }
            _loc1_();
         });
         timer.start();
      }
   }
}
